<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">

	<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  <link rel="stylesheet" href="css/estilos_bootstraps.css">
	  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
	
	  <title>Trabajo Integrador</title>
	  
	</head>
	<body>
	
		<jsp:include page="header.jsp"/>
		
		<main class="d-flex justify-content-center align-items-center vh-100">
		 <section class="mt-5 container" id="form-orador">
		        <div class="row justify-content-center w-50 centrado">		            
		                <h2 class="titulo-gral">LogIn</h2>
		                
		                <form action="<%=request.getContextPath()%>/LoginAdminController" method="post">
		                    <div class="row justify-content-center">
		                        <div class="col-8 mb-3 mb-4">
		                            <input type="text" class="form-control" name="nombre" placeholder="Usuario" aria-label="Nombre" required>
		                            
		                        </div>
		                         <div class="col-8 mb-3 mb-4">
		                           <input type="password" class="form-control" name="password" placeholder="Contraseña" aria-label="Password" required>
		                         </div>
		                    </div>
		                    <div class="row justify-content-center">
		                        <div class="col-8 mb-3">
		                            <div class="d-grid">
		                                <button type="submit" class="boton_enviar">LogIn</button>
		                            </div>
		                        </div>
		                    </div>
		                </form>
		        </div>
		    </section>
		
		</main>
		
		<jsp:include page="footer.jsp"/>