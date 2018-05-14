<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../include/resources.html"></jsp:include>
<%@ page import="objects.User"%>
<% User user = (User) session.getAttribute("user"); %>
</head>
<body>
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
    <li class="list-group-item"><strong>Trabajos entregados</strong> </li>
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
<div class="card">
  <div class="card-body">
    <h4 class="card-title">Card title</h4>
    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
</div>

<jsp:include page="/include/footer.html"></jsp:include>



</body>
</html>