'use strict';
/* Data Access Object (DAO) module for accessing questions and answers */

const sqlite = require('sqlite3');
const dayjs = require('dayjs');

// open the database
const db = new sqlite.Database('posti-aereo.sqlite', (err) => {
  if(err) throw err;
});

// get all posti
exports.listPosti = () => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM posti';
    db.all(sql, [], (err, rows) => {
      if (err) {
        reject(err);
        return;
      }
      const posti = rows.map((e) => ({ id: e.id, F: e.F, P: e.P, Aereo: e.Aereo, Occupato: e.Occupato, idUtente : e.idUtente }));
      resolve(posti);
    });
  });
};


// update an existing posto
exports.updatePosto = (posto) => {
    console.log('updatePosto: '+JSON.stringify(posto));
    return new Promise((resolve, reject) => {
      const sql = 'UPDATE posti SET occupato=1, idUtente=? WHERE id=? AND F=? AND P=? AND Aereo=?';
      db.run(sql, [posto.idUtente, posto.id, posto.F, posto.P, posto.Aereo], function (err) {
        if (err) {
          reject(err);
          return;
        }
        resolve(this.changes);
      });
    });
  };
//update existing posti
exports.updatePosti = (posti) => {
  console.log('updatePosti: '+posti);
  return new Promise((resolve, reject) => {
    let punti_int="";
    for(let i=0; i<posti.length; ++i)
    {  
      if(i===0)
      punti_int=punti_int+ 'id=?';
      else
      punti_int=punti_int+ ' OR id=?';
    }
    let ids=posti.map(e=> e.id);
    console.log("punti int:" + punti_int);
    const sql = 'UPDATE posti SET Occupato=1 WHERE '+ punti_int;
    db.run(sql, [...ids], function (err) {
      if (err) {
        reject(err);
        return;
      }
      resolve(this.changes);
    });
  });
};

exports.postiOccupati = (posti) => {
  console.log('updatePosti: '+posti);
  return new Promise((resolve, reject) => {
    let punti_int="";
    for(let i=0; i<posti.length; ++i)
    {  
      if(i===0)
      punti_int=punti_int+ 'id=?';
      else
      punti_int=punti_int+ ' OR id=?';
    }
    let ids=posti.map(e=> e.id);
    console.log("punti int:" + punti_int);
    const sql = 'SELECT * FROM posti WHERE '+ punti_int;
    db.all(sql, [...ids], function (err,rows) {
      if (err) {
        reject(err);
        return;
      }
      const posti = rows.map((e) => ({ id: e.id, F: e.F, P: e.P, Aereo: e.Aereo, Occupato: e.Occupato, idUtente : e.idUtente }));
      let result=false;
      for (let e of posti)
        if (e.Occupato === 1)
          result = true;
      resolve(result);
    });
  });
};
// exports.updatePosti = (posti) => {
//   console.log('updatePosti: ' + JSON.stringify(posti));
//   return new Promise((resolve, reject) => {
//     const punti_int = posti.map(() => 'id=?').join(' OR ');
//     const ids = posti.map((posto) => posto.id);

//     console.log("punti_int: " + punti_int);

//     const sql = 'UPDATE posti SET occupato=1 WHERE ' + punti_int;

//     db.run(sql, ids, function (err) {
//       if (err) {
//         reject(err);
//         return;
//       }
//       resolve(this.changes);
//     });
//   });
// };


// update an existing user
exports.numberOfPrenotazioni = (idUser, aereo) => {
    return new Promise((resolve, reject) => {
        const sql = 'SELECT count(*) as tot FROM users, posti WHERE Aereo=? AND users.id=? AND posti.idUtente=?';
        db.all(sql, [aereo, idUser, idUser], (err, rows) => {
          if (err) {
            reject(err);
            return;
          }
          const tot = rows.map((e) => ({ tot: e.tot }));
          resolve(tot);
        });
      });
  };
