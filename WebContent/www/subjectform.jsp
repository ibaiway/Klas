<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
		<%@ page import="modelo.SubjectModelo"%>
		<%@ page import="objects.Assignment" %>
		<%@ page import="objects.Subject"%>
		<%@ page import="objects.Topic"%>
		
    
    	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Subject</title>
<jsp:include page="../include/resources.html"></jsp:include>
</head>

<body>
<jsp:include page="../include/navbar.jsp"></jsp:include>

<div class="card border-primary mb-3" style="max-width: 18rem;">
<div class="card-header">Create subect</div>
  <div class="card-body text-primary">
	<form action="../CrearAsignatura" method="post"> 
  		<div class="form-group">
    		<label for="exampleInputEmail1">Titulo de la asignatura</label>
   			<input class="form-control" type="text" placeholder="Introduce el Titulo" id="Titulo" name="Titulo">
  		</div>
  		<div class="form-group">
    		<label for="exampleFormControlTextarea1">Descripcion</label>
    		<textarea class="form-control" id="Descripcion" name="Descripcion" rows="3"></textarea>
  		</div>
  		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
</div>


<jsp:include page="/include/footer.html"></jsp:include>

</body>
</html>