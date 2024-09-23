import { Container, Row, Col, Spinner, Alert, Button, Badge } from 'react-bootstrap';
import React from 'react';
function ListaPosti(props) {
    
    return (
        <>
        <Row>
        <div className="text-center">
            {props.posti.filter(e => props.aereoSelezionato === e.Aereo)
                .map((e) => {
                    return (<React.Fragment key={e.id}>
                        {e.P === "A" ? <hr /> : ""}
                        {e.Occupato ? 
                        <Button variant="danger">{e.F} {e.P} </Button> : 
                        <Button variant="success">{e.F} {e.P}</Button>}
                        {" "}
                    </React.Fragment>);
                }
                )}
        </div>
        </Row>
        <Row>
        {props.aereoSelezionato !== ""?
        <div className="text-end">
                    <Badge bg="danger">Occupato</Badge>{" "}
                    <Badge bg="success">Libero</Badge>
                    {props.user? <Badge bg="warning">Prenotato da te</Badge> : "" }
        </div> : ""
        }
        </Row>
        </>
    );
}
export default ListaPosti;