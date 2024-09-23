import { useState } from 'react';
import ListaPosti from './AereoComponents';
import NavHeader from './NavbarComponents';
import { Container, Row, Col, Spinner, Alert, Button, Badge, Form} from 'react-bootstrap';
import { useNavigate } from "react-router-dom";

function PrenotaRoute(props) {
    const navigate = useNavigate();
    const [modalità, setModalità]=useState("");
    const [aereo, setAereo]=useState("");
    const [numero, setNumero]=useState(0);
    function handleSubmit(){
        event.preventDefault();
        if(aereo==="")
        props.setErrorMsg("selezionare un Aereo");
        else
        switch(modalità)
        {
            case "random":
                const postiPrenotazione= props.posti.filter(e=> e.Aereo===aereo && e.Occupato===0)
                                               .slice(0,numero);
            break;

            case "manual":

            break;

            default:
            props.setErrorMsg("selezionare una modalità di selezione dei posti");
            break;
        }
        

    }
    function handleAereoChange(event) {
        setAereo(event.target.value);
    }
    function handleModalitaPostiChange(event) {
        setModalità(event.target.value);
    }
    function handleNumero(event){
        setNumero(event.target.value);
    }
    return (
        <>
            <NavHeader user={props.user} logout={props.logout} />
            <Container fluid>
                {props.errorMsg? <Alert variant='danger' onClose={()=>props.setErrorMsg('')} dismissible>{props.errorMsg}</Alert> : "" }
                <div>
                    <h1>Nuova Prenotazione</h1>
                    <p>Compila i dati della prenotazione per cui vuoi procedere</p>
                </div>
                <Row>
                    <Form onSubmit={handleSubmit}>
                        <fieldset>
                            <Form.Group className="mb-3">
                                <Form.Label>Aereo</Form.Label>
                                <Form.Select onChange={handleAereoChange}>
                                    <option value=""></option>
                                    <option value="locale">locale</option>
                                    <option value="regionale">regionale</option>
                                    <option value="internazionale">internazionale</option>
                                </Form.Select>
                            </Form.Group>

                            <Form.Group className="mb-3">
                                <Form.Label>Modalità Selezione Posti</Form.Label>
                                <Form.Select onChange={handleModalitaPostiChange}>
                                    <option value=""></option>
                                    <option value="random">Assegnazione casuale dei posti</option>
                                    <option value="manual">Seleziona manualmente i posti</option>
                                </Form.Select>
                            </Form.Group>
                            
                            {modalità === "manual" ?

                                <div >
                                    {/* AGGIUNGERE COMPONENTE "AEREO" */}
                                    <ListaPosti aereoSelezionato={aereo} posti={props.posti} user={props.user} />
                                </div>
                                : (modalità === "random" ? <Form.Group className='mb-3'>
                                    <Form.Label>Indica il numero di posti che vuoi prenotare</Form.Label>
                                    <Form.Control type="number" onChange={handleNumero} min="1" step="1"/>
                                </Form.Group> : "")}


                            <Form.Group className="mb-3">
                                <Form.Check label="Non sono un robot"/>
                            </Form.Group>
                            <Button type="submit">Submit</Button> {" "}
                            <Button className='mx-2' variant='danger' onClick={()=>navigate('/')}>Cancel</Button>
                        </fieldset>
                    </Form>
                </Row>

                
            </Container>
        
        </>
    );
}

export default PrenotaRoute;