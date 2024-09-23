import ListaPosti from './AereoComponents';
import NavHeader from './NavbarComponents';
import { Container, Row, Col, Spinner, Alert, Button, Badge } from 'react-bootstrap';
import { useNavigate } from "react-router-dom";

function VisualizzaRoute(props) {
    const navigate = useNavigate();
    return (
        <>
            <NavHeader user={props.user} logout={props.logout} />
            <Container fluid>
                <div>
                    <h1>Quale aereo desideri visualizzare?</h1>
                    <p>Clicca sul pulsante corrispondente all'aereo che ti interessa</p>
                </div>
                <Row>
                    <Col>
                    <FormSelezioneAereo aereoSelezionato={props.aereoSelezionato} setAereoSelezionato={props.setAereoSelezionato} />
                    
                    </Col>
                <Col className="d-flex justify-content-end">
                <Button variant="danger" onClick={()=>{navigate('/'); props.setAereoSelezionato("")}}>Torna alla Home</Button>
                </Col>
                </Row>
                <Row>
                <div >
                    {/* AGGIUNGERE COMPONENTE "AEREO" */}
                    <ListaPosti aereoSelezionato={props.aereoSelezionato} posti={props.posti} user={props.user}/>
                    
                </div>
                </Row>
            </Container>
        
        </>
    );
}
function FormSelezioneAereo(props) {
    return(
        <>
        {props.aereoSelezionato==="locale"? <Button active onClick={()=>{props.setAereoSelezionato("")}}>Locale</Button> :<Button onClick={()=>{props.setAereoSelezionato("locale")}}>Locale</Button>}
        {" "}
        {props.aereoSelezionato==="regionale"? <Button active onClick={()=>{props.setAereoSelezionato("")}}>Regionale</Button> :<Button onClick={()=>props.setAereoSelezionato("regionale")}>Regionale</Button>}
        {" "}
        {props.aereoSelezionato==="internazionale"? <Button active onClick={()=>{props.setAereoSelezionato("")}}>Internazionale</Button> :<Button onClick={()=>props.setAereoSelezionato("internazionale")}>Internazionale</Button>}
        </>
    );
}
export default VisualizzaRoute;