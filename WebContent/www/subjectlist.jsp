<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subjects</title>
<jsp:include page="../include/resources.html"></jsp:include>
<script>
function myFunction() {
    var element = document.getElementById("asignatura");
    element.classList.add("active");
}
</script>
</head>
<body>
<jsp:include page="../include/navbar.jsp"></jsp:include>

<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>Welcome</h1>
      
			
		<%@ page import="modelo.SubjectModelo"%>
		<%@ page import="objects.User"%>
		<%@ page import="objects.Subject"%>
		<%@ page import="java.util.ArrayList"%>
		<%@ page import="java.util.Iterator"%>
		<div class="list-group">
	<div>
	<a class="btn btn-primary" href="subjectform.jsp" role="button">Create subject</a>
	</div>
		
		
		<%
			SubjectModelo subjectModelo = new SubjectModelo();
			User user = (User) session.getAttribute("user");
			ArrayList<Subject> subjects = subjectModelo.selectByUser(user.getId());
			session.setAttribute("subjects", subjects);
			Iterator<Subject> i = subjects.iterator();
			while (i.hasNext()) {
				Subject subject = i.next();
				
				
	
				
			
		%>

				<div class="prueba">
					<a href="topiclist.jsp?subject=<% subject.getId(); %>" id="asignatura" onmouseover="myFunction()" class="list-group-item list-group-item-action flex-column align-items-start">
						<div class="d-flex w-100 justify-content-between">
							<h5 class="mb-1"><% out.print(subject.getName()); %></h5>
						</div>
						<p class="mb-1"><% out.print(subject.getDescription()); %></p>
					</a>
				</div>
				<br>
<%} %>

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