import 'bootstrap/dist/css/bootstrap.min.css';
import { Col, Container, Row, Button, Form, Table } from 'react-bootstrap';
import { useState, useEffect } from 'react';
import { BrowserRouter, Routes, Route, Link, Navigate } from 'react-router-dom';
import dayjs from 'dayjs';
import HomeRoute from './components/HomeRoute';
import VisualizzaRoute from './components/VisualizzaRoute'
import PrenotaRoute from './components/PrenotaRoute'
import { LoginForm } from './components/AuthComponents';
import API from './API';
//import './App.css';

function DefaultRoute() {
  return(
    <Container className='App'>
      <h1>No data here...</h1>
      <h2>This is not the route you are looking for!</h2>
      <Link to='/'>Please go back to main page</Link>
    </Container>
  );
}
function App() {
  const [errorMsg, setErrorMsg] = useState('');
  const [user, setUser] = useState(undefined);
  const [loggedIn, setLoggedIn] = useState(false);
  const [posti, setPosti] = useState([]);
  const [aereoSelezionato, setAereoSelezionato]= useState("");
  const doLogOut = async () => {
    await API.logOut();
    setLoggedIn(false);
    setUser(undefined);
    /* set state to empty if appropriate */
  }
  

  const loginSuccessful = (user) => {
    setUser(user);
    setLoggedIn(true);
    setDirty(true);  // load latest version of data, if appropriate
  }
  useEffect( () => {
    API.getAllPosti()
      .then((posti) => setPosti(posti))
      .catch((err) => handleError(err));
  }, []);
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={ <HomeRoute user={user} logout={doLogOut}
          errorMsg={errorMsg} aereoSelezionato={aereoSelezionato} setAereoSelezionato={setAereoSelezionato} posti={posti} setPosti={setPosti}/> } />

        <Route path='/login' element={loggedIn? <Navigate replace to='/' />:  <LoginForm loginSuccessful={loginSuccessful} />} />
        <Route path='/*' element={<DefaultRoute />} />
        <Route path='/visualizza' element={<VisualizzaRoute user={user} logout={doLogOut}
          errorMsg={errorMsg} aereoSelezionato={aereoSelezionato} setAereoSelezionato={setAereoSelezionato} posti={posti} setPosti={setPosti}/>} />
        <Route path='/prenota' element={<PrenotaRoute user={user} logout={doLogOut} posti={posti} setPosti={setPosti} errorMsg={errorMsg} setErrorMsg={setErrorMsg}/>}/> 
      </Routes>
    </BrowserRouter>
  )
}

export default App
