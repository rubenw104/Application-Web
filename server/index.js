'use strict';

const express = require('express');
const morgan = require('morgan'); // logging middleware
const {check, validationResult} = require('express-validator'); // validation middleware
const dao = require('./dao'); // module for accessing the DB
const passport = require('passport'); // auth middleware
const LocalStrategy = require('passport-local').Strategy; // username and password for login
const session = require('express-session'); // enable sessions
const userDao = require('./user-dao'); // module for accessing the user info in the DB
const cors = require('cors');

/*** Set up Passport ***/
// set up the "username and password" login strategy
// by setting a function to verify username and password
passport.use(new LocalStrategy(
  function(username, password, done) {
    userDao.getUser(username, password).then((user) => {
      if (!user)
        return done(null, false, { message: 'Incorrect username and/or password.' });
        
      return done(null, user);
    })
  }
));

// serialize and de-serialize the user (user object <-> session)
// we serialize the user id and we store it in the session: the session is very small in this way
passport.serializeUser((user, done) => {
  done(null, user.id);
});

// starting from the data in the session, we extract the current (logged-in) user
passport.deserializeUser((id, done) => {
  userDao.getUserById(id)
    .then(user => {
      done(null, user); // this will be available in req.user
    }).catch(err => {
      done(err, null);
    });
});

// init express
const app = express();
const port = 3001;

// set-up the middlewares
app.use(morgan('dev'));
app.use(express.json());
const corsOptions = {
  origin: 'http://localhost:5173',
  credentials: true,
};
app.use(cors(corsOptions)); // NB: Usare solo per sviluppo e per l'esame! Altrimenti indicare dominio e porta corretti


const answerDelay = 2000;


// custom middleware: check if a given request is coming from an authenticated user
const isLoggedIn = (req, res, next) => {
  if(req.isAuthenticated())
    return next();
  
  return res.status(401).json({ error: 'Not authenticated'});
}

// set up the session
app.use(session({
  // by default, Passport uses a MemoryStore to keep track of the sessions
  secret: 'wge8d239bwd93rkskb',   //personalize this random string, should be a secret value
  resave: false,
  saveUninitialized: false 
}));

// then, init passport
app.use(passport.initialize());
app.use(passport.session());

/*** APIs ***/

//GET /api/posti
app.get('/api/posti', (req, res) => {
  dao.listPosti()
    .then(posti => setTimeout(()=>res.json(posti), answerDelay))
    .catch(() => res.status(500).end());
});


// PUT /api/answers/<id>    //inutile
app.put('/api/posti/:id', [
  check('id').isInt({min:1, max:310}),
  check('F').isInt({min:1, max:25}),
  check('P').notEmpty(),
  check('Aereo').notEmpty(),
  check('Occupato').equals('0'),
  check('idUtente').notEmpty()
], async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(422).json({errors: errors.array()});
  }

  const posto = req.body;
  // you can also check here if the id passed in the URL matches with the id in req.body,
  // and decide which one must prevail, or return an error
  posto.id = req.params.id;

  try {
    const numRowChanges = await dao.updatePosto(posto);
    setTimeout(()=>res.json(numRowChanges), answerDelay);
    //res.status(200).end();
  } catch(err) {
    res.status(503).json({error: `Database error during the update of posto ${req.params.id}.`});
  }

});

// PUT /api/answers/<id>
app.put('/api/posti',[
  check('posti').isArray().withMessage('posti deve essere un array'),
  check('posti.*.id').isInt().withMessage('Il campo "id" deve essere un numero intero'),
  check('posti.*.F').isInt().withMessage('Il campo "F" deve essere un numero intero'),
  check('posti.*.P').isString().withMessage('Il campo "P" deve essere una stringa'),
  // Aggiungi le altre validazioni per le altre proprietà degli oggetti nell'array
  ], async (req, res) => {
  
  let p = req.body;
  console.log("posti prima di essere passata: "+p);
  
  
  try {
    const occupati = await dao.postiOccupati(posti);
    try{
      if(!occupati){
      const numRowChanges = await dao.updatePosti(p);
      setTimeout(() => res.json(numRowChanges), answerDelay);
      }
      else
      res.status(503).json({ error: `I posti sono già stati prenotati` });
    }
    catch(err) 
    {
      res.status(503).json({ error: `Database error during the update of posti.` });
    }
  
  } catch (err) {
    res.status(503).json({ error: `Errore al database durante al controllo che i posti siano occupati` });
  }
});





let posti=[{
  id: 1,
  F: 1,
  P: "A",
  Aereo: "locale",
  Occupato: 0,
  idUtente: 3
},
{
  id: 2,
  F: 1,
  P: "B",
  Aereo: "locale",
  Occupato: 0,
  idUtente: 3
},{
  id: 3,
  F: 1,
  P: "C",
  Aereo: "locale",
  Occupato: 0,
  idUtente: 3
}];
(async ()=> {
  const r= await dao.postiOccupati(posti);
  console.log(r);
}) ;
 //dao.updatePosti(posti);


/*** Users APIs ***/

// POST /sessions 
// login
app.post('/api/sessions', function(req, res, next) {
  passport.authenticate('local', (err, user, info) => {
    if (err)
      return next(err);
      if (!user) {
        // display wrong login messages
        return res.status(401).json(info);
      }
      // success, perform the login
      req.login(user, (err) => {
        if (err)
          return next(err);
        
        // req.user contains the authenticated user, we send all the user info back
        // this is coming from userDao.getUser()
        return res.json(req.user);
      });
  })(req, res, next);
});

// ALTERNATIVE: if we are not interested in sending error messages...
/*
app.post('/api/sessions', passport.authenticate('local'), (req,res) => {
  // If this function gets called, authentication was successful.
  // `req.user` contains the authenticated user.
  res.json(req.user);
});
*/

// DELETE /sessions/current 
// logout
app.delete('/api/sessions/current', (req, res) => {
  req.logout( ()=> { res.end(); } );
});

// GET /sessions/current
// check whether the user is logged in or not
app.get('/api/sessions/current', (req, res) => {  if(req.isAuthenticated()) {
    res.status(200).json(req.user);}
  else
    res.status(401).json({error: 'Unauthenticated user!'});;
});

// activate the server
app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});
