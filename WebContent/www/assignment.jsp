<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../include/resources.html"></jsp:include>
</head>
<body>
<%@ page import="objects.User"%>
<%@ page import="modelo.DeliveryModelo"%>
<%@ page import="objects.Assignment"%>
<%@ page import="modelo.AssignmentModelo"%>
<% User user = (User) session.getAttribute("user"); %>
<% AssignmentModelo assignmentModelo = new AssignmentModelo(); %>
<% Assignment assignment = assignmentModelo.selectPorId(Integer.parseInt(request.getParameter("idAssignment"))); %>
<% DeliveryModelo deliveryModelo = new DeliveryModelo(); %>
<jsp:include page="../include/navbar.jsp"></jsp:include>

<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      
      
<div class="card">
  <div class="card-body">
    <h4 class="card-title">Card title</h4>
    <h6 class="card-subtitle mb-2 text-muted">
    <% if(deliveryModelo.entregado(user.getId(), assignment.getId_assignment())){
    	out.print("span class='badge badge-success'>Entregado</span>");
    } else{ out.print("<span class='badge badge-danger'>Sin entrega</span>");}
    %></h6>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
  <div class="card-footer text-muted">
    2 days ago
  </div>
</div>
      
			
		

		

				
	</div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<jsp:include page="/include/footer.html"></jsp:include>



</body>
</html>