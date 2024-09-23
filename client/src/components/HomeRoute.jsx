import ListaPosti from './AereoComponents';
import NavHeader from './NavbarComponents';
import { Container, Row, Col, Spinner, Alert, Button } from 'react-bootstrap';
import { useNavigate } from "react-router-dom";
import Stack from 'react-bootstrap/Stack';
import React from 'react';
function HomeRoute(props) {
    const navigate = useNavigate();
    return (
        <>
            <NavHeader user={props.user} logout={props.logout} />
            <Container fluid>
            <Stack gap={5}>
                <div/>
                <div/>
                <div/>
                <div className="text-center">
                    <h1>{
                        props.user ? `Benvenuto ${props.user.name}! Cosa desideri Fare?` :
                            `Cosa desideri Fare?`}</h1>
                </div>
                
                <div className="text-center">
                    <Button onClick={() => navigate('/visualizza')}>Visualizza disponibilità posti</Button>{" "}
                    {
                        props.user ? <Button onClick={() => navigate('/prenota')}>Procedi a una prenotazione</Button> :
                            <Button disabled={true}>Procedi a una prenotazione</Button>
                    }
                </div>
                </Stack>
            </Container>
        
        </>
    );
}
export default HomeRoute;