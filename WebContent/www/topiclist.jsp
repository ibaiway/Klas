<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of topics</title>
<jsp:include page="../include/resources.html"></jsp:include>
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
      
			
		<%@ page import="modelo.TopicModelo"%>
		<%@ page import="objects.User"%>
		<%@ page import="objects.Topic"%>
		<%@ page import="java.util.ArrayList"%>
		<%@ page import="java.util.Iterator"%>
		<div class="list-group">
		<%
			TopicModelo subjectModelo = new TopicModelo();
			User user = (User) session.getAttribute("user");
			ArrayList<Topic> subjects = subjectModelo.selectBySubject(user.getId());
			session.setAttribute("subjects", subjects);
			Iterator<Topic> i = subjects.iterator();
			while (i.hasNext()) {
				Topic topic = i.next();
				
				
	
				
			
		%>

				<div class="prueba">
					<a href="topiclist.jsp?subject=<% topic.getId(); %>" id="asignatura" onmouseover="myFunction()" class="list-group-item list-group-item-action flex-column align-items-start">
						<div class="d-flex w-100 justify-content-between">
							<h5 class="mb-1"><% out.print(topic.getTitle()); %></h5>
						</div>
						<p class="mb-1"><% out.print("HEYY"); %></p>
					</a>
				</div>
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