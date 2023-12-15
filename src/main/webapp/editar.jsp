<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>
<%
 Orador orador = (Orador)request.getAttribute("orador"); // levanto el departamento que viene del controller
%>

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

		<main class="mb-5 vh-100">
          <section class="container mt-5 p-5" id="form-orador">
		        <div class="row justify-content-center w-50 centrado">
		        
		                <h2 class="titulo-gral">Modificar datos del Orador</h2>
		               
		                <form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST">
		                    <div class="row gx-2">
		                        <div class="col-md mb-3">
		                            <input type="hidden" name="id" value="<%=orador.getId()%>">
		                            <input type="text" class="form-control" 
		                             name="nombre" 
		                             placeholder="Nombre" 
		                             aria-label="Nombre"
		                             id="validationCustom02"
		                             value="<%=orador.getNombre()%>" 
		                             required>
		                        </div>
		                        <div class="col-md mb-3">
		                            <input type="text" class="form-control" name="apellido" placeholder="Apellido" aria-label="Apellido"
		                             value="<%=orador.getApellido()%>" 
		                             required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <input type="email" class="form-control" name="mail" placeholder="Email" aria-label="Email"
		                            value="<%=orador.getMail()%>"  
		                            required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <textarea class="form-control" name="tema" id="exampleFormControlTextarea1" rows="4"
		                              
		                                placeholder="<%=orador.getTema()%>" 
		                                
		                                required><%=orador.getTema()%> </textarea>
		                            <div id="emailHelp" class="form-text mb-3">Recuerda incluir un título para tu charla.</div>
		                            <div class="d-grid">
		                                <button type="submit" class="boton_enviar">Modificar</button>
		                            </div>
		                        </div>
		                    </div>
		                </form>
		        </div>
		    </section>
		
		</main>
		
		<jsp:include page="footer.jsp"/>