import { Navbar, Container, Row, Col, Button, Nav } from "react-bootstrap";
import { useNavigate } from "react-router-dom";

function NavHeader(props) {
    const navigate = useNavigate();

    const name = props.user && props.user.name;  //assegna a name il primo valore falsy da sinistra a destra. se entrambi thruthy allora viene assegnato quello a destra

    return (

        <Navbar bg='primary' variant='dark'>
            <Container fluid>
                <Navbar.Brand className='fs-2'>Posti-Aereo</Navbar.Brand>
                {/* <Navbar.Toggle /> */}
                <Navbar.Collapse className="justify-content-end">
                    { name? <>
                    <Navbar.Text className='fs-5'>
                        {"Signed in as: "+name}
                    </Navbar.Text>
                    {/* <Button className='mx-2' variant='danger' onClick={props.logout}>Logout</Button> */}
                    <Button className='mx-2' variant='danger' onClick={()=>{props.logout(); navigate('/');}}>Logout</Button>
                    </> : 
                    <Button className='mx-2' variant='success' onClick={()=> navigate('/login')}>Login</Button> }
                </Navbar.Collapse>
            </Container>
        </Navbar>
    );
}

export default NavHeader;