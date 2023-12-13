<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto Integrador Front | Gustavo Botero </title>
    
    <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilos_bootstraps.css">
</head>
<body>
    
    <jsp:include page="header.jsp"/>
    
    <main class="container-fluid col">
        <section class="container col" id="oradores">
            <h2 class="text-center">
                <div class="h2-chica">CONOCE A LOS</div>
                ORADORES
            </h2>
            <div class="card-group">
                <div class="card">
                    <img src="./img/Steve_Jobs645.jpg" class="card-img-top" alt="" loading="lazy">
                    <div class="card-body">
                        <h4 class="h4tarjeta colorAmarillo">JavaScript</h4>
                        <h4 class="h4tarjeta colorCeleste">React</h4>
                        <h3 class="card-title">Steve Jobs</h3>
                        <p class="card-text">
                            Steven Paul Jobs ​​​​fue un empresario, diseñador industrial, magnate empresarial, propietario de medios e inversor estadounidense. Fue cofundador y presidente ejecutivo de Apple​ y maximo accionista individual de The Walt Disney Company.​
                        </p>
                    </div>                
                </div>
                <div class="card">
                    <img src="./img/bill.jpg" class="card-img-top" alt="" loading="lazy">
                    <div class="card-body">
                        <h4 class="h4tarjeta colorAmarillo">JavaScript</h4>
                        <h4  class="h4tarjeta colorCeleste">React</h4>
                        <h3 class="card-title">Bill Gates</h3>
                        <p class="card-text">
                            William Henry Gates III, más conocido como Bill Gates, es un magnate empresarial, desarrollador de software, inversor, autor y filántropo estadounidense. Es cofundador de Microsoft, junto con su amigo de infancia Paul A.  
                        </p>
                    </div>                
                </div>
                <div class="card">                
                    <img src="./img/ada.jpeg" class="card-img-top" alt="" loading="lazy">
                    <div class="card-body">
                        <h4 class="h4tarjeta colorGris">Negocios</h4>
                        <h4 class="h4tarjeta colorRojo">Startups</h4>
                        <h3 class="card-title">Ada Lovelace</h3>
                        <p class="card-text">
                            Augusta Ada King, condesa de Lovelace, registrada al nacer como Augusta Ada Byron y conocida habitualmente como Ada Lovelace, fue una matemática y escritora británica, célebre sobre todo por su trabajo acerca de la computadora.  
                        </p>
                    </div>                
                </div>
            </div>            
        </section>
        <section class="sec_div" id="el lugar y la fecha">
                <div class="division row">
                    <div class="div_1 img-fluid col-12 col-md-6">
    
                    </div>
                    <div class="div_2 col-12 col-md-6">
                        <h2>Bs As - Octubre</h2>
                        <p> Buenos Aires es la provincia y localidad mas grande del estado de Argentina, en los Estados Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 Km2 de superficie).</p>
                        <a class="div_2_a" href="./pages/404.html">Conoce más</a>
                    </div>
                </div>                                   
        </section>
        <section class="form col justify-content-end" id="conviertete en orador">
            <h2 class="text-center">
                <div class="h2-chica">CONVIERTETE EN UN</div>
                 ORADOR
            </h2>
            <p class="text-center">Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</p>
            <form class="col centrado" action="./pages/404.html" method="get">
                <div class="row">
                    <div class="col">
                        <input class="form-control w-100" type="text" id="name" placeholder="Nombre" required>
                    </div>
                    <div class="col">
                        <input class="form-control w-100" type="text" id="lastname" placeholder="Apellido" required>
                    </div>                    
                </div>                
                <br>
                <div class="w-100">
                    <textarea class="form-control w-100" name="comentario" id="comentario" cols="55" rows="5" placeholder="Sobre qué quieres hablar?" ></textarea>
                </div>
                <p class="p_form">Recuerda incluir un título para tu charla</p>
                <div>
                    <input class="boton_enviar w-100" type="submit" value="Enviar">
                </div>

            </form>
        </section>
    </main>    
    
    <jsp:include page="footer.jsp"/>