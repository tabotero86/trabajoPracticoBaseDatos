<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/estilos_bootstraps.css">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">

<title>Trabajo Integrador</title>

</head>
<body>

	<jsp:include page="header.jsp" />

	<main>
		<section class="mt-5">
			<h3 class="text-center">Encontra tus oradores favoritos por sus
				temas</h3>
			<form class="d-flex centrado justify-content-center"
				action="<%=request.getContextPath()%>/BuscarOradorTemaController"
				method="post">
				<input class="form-control me-2 w-25 mt-3" name="temabuscar"
					id="temabuscar" type="search" placeholder="Escribi un tema"
					aria-label="Buscar"> <input
					class="btn btn-outline-success mt-3 boton_enviar" type="submit"
					value="Buscar">
			</form>
		</section>
		<section class="container mt-5 mb-4" id="restoOradores">
			<h3 class="text-center">
				Conoce todos los oradores que se presentan
				</h2>

				<div class="row">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Nombre</th>
								<th scope="col">Apellido</th>
								<th scope="col">Tema</th>
								<th scope="col">Acciones</th>
							</tr>
						</thead>
						<% 
						  	//codigo java
						  	//obtener el listado desde el request
						  	//se guardo bajo el nombre de "listado"
						  	List<Orador> listado = (List<Orador>)request.getAttribute("listado");
					 	 %>
						<tbody>
							<!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
							<%
						   	for( Orador  unOrador : listado) {
						   %>
							<tr>
								<th scope="row"><%=unOrador.getId()%></th>
								<td><%=unOrador.getNombre() %></td>
								<td><%=unOrador.getApellido() %></td>
								<td><%=unOrador.getTema() %></td>
								<td><a class="btn btn-info" role="button"
									href="<%=request.getContextPath()%>/UpdateOradorController?id=<%=unOrador.getId()%>">
										Editar </a> | <!-- Button trigger modal -->
									<button type="button" class="btn btn-danger"
										data-bs-toggle="modal" data-bs-target="#exampleModal"
										onclick="setOradorId(<%=unOrador.getId()%>)">
										Eliminar</button></td>
							</tr>
							<%
					   		}
					  	   %>
						</tbody>
					</table>
				</div>
		</section>


	</main>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="<%=request.getContextPath()%>/DeleteOradorController">
					<input type="hidden" name="idOrador" id="idOrador">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Dar de baja
							Orador</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">¿Confirma que desea eliminar?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Cancelar</button>
						<button type="submit" class="btn btn-danger">Eliminar</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />

	<script>
			function setOradorId(id) {
				document.getElementById('idOrador').value=id;
			}
	  </script>
</body>
</html>