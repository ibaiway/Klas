<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../include/resources.html"></jsp:include>
<%@ page import="objects.User"%>
<%@ page import="modelo.DeliveryModelo" %>
<% User user = (User) session.getAttribute("user");
	int nTrabajo = (Integer) request.getAttribute("nTrabajo");
%>
</head>
<body>
<%
		if ( request.getParameter("e")!=null&& request.getParameter("e").equals("1")) {
	%>
	<div class="alert alert-dismissible alert-success">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<strong>Exito!</strong> <a href="#" class="alert-link">La informacion se ha guardado correctamente</a> los cambios se veran reflejados en unos instantes.
	</div>
	<% } %>
<jsp:include page="../include/navbar.jsp"></jsp:include>
<div class="container">

<div class="card mb-3">
  <h3 class="card-header"><%= user.getName() + " " + user.getSurname() %></h3>
  <div class="card-body">
    <h5 class="card-title">Email</h5>
    <h6 class="card-subtitle text-muted"><%= user.getEmail() %></h6>
  </div>
  <div class="card-body">
    <p class="card-text"><strong>Fecha de Nacimiento:</strong> <%= user.getBirthdate() %> </p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><strong>Trabajos entregados:</strong> <%= nTrabajo %> </li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
  <div class="card-footer text-muted">
    2 days ago
  </div>
</div>
<a href="changeprofile.jsp"><button type="button" class="btn btn-primary">Modificar</button></a>
</div>
<jsp:include page="/include/footer.html"></jsp:include>



</body>
</html>