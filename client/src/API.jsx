/**
 * All the API calls
 */

import dayjs from "dayjs";

const URL = 'http://localhost:3001/api';

async function getAllPosti() {
    // call  /api/posti
    const response = await fetch(URL+'/posti');
    const posti = await response.json();
    if (response.ok) {
      return posti.map((e) => ({id: e.id, F:e.F, P:e.P, Aereo:e.Aereo, Occupato: e.Occupato, idUtente: e.idUtente}) )
    } else {
      throw posti;  // mi aspetto che sia un oggetto json fornito dal server che contiene l'errore
    }
  }

/*API Autenticazione*/
async function logIn(credentials) {
    let response = await fetch(URL + '/sessions', {
      method: 'POST',
      credentials: 'include',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(credentials),
    });
    if (response.ok) {
      const user = await response.json();
      return user;
    } else {
      const errDetail = await response.json();
      throw errDetail.message;
    }
  }
  
  async function logOut() {
    await fetch(URL+'/sessions/current', {
      method: 'DELETE', 
      credentials: 'include' 
    });
  }
  
  async function getUserInfo() {
    const response = await fetch(URL+'/sessions/current', {
      credentials: 'include'
    });
    const userInfo = await response.json();
    if (response.ok) {
      return userInfo;
    } else {
      throw userInfo;  // an object with the error coming from the server
    }
  }
  
  
  
  const API = {
    logIn, logOut, getUserInfo, getAllPosti
  };
  export default API;