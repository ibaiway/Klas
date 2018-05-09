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
		<%@ page import="modelo.AssignmentModelo"%>
		<%@ page import="objects.Assignment" %>
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
				
				/*
				*
				*Hacer que de cada topic salga una lista de assignments
				*Topic no necesita descripción
				*La barra topic sera azul y los assignments blancos
				*				
				*
				*/
				
		%>
		

		<div id="accordion">
		  <div class="card">
		    <div class="card-header" id="headingOne">
		      <h5 class="mb-0">
		        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          <a href="topiclist.jsp?subject=<% topic.getId(); %>" id="asignatura" onmouseover="myFunction()" class="list-group-item list-group-item-action flex-column align-items-start">
						<div class="d-flex w-100 justify-content-between">
							<h5 class="mb-1"><% out.print(topic.getTitle()); %></h5>
						</div>
					</a>
		        </button>
		      </h5>
		    </div>
		    
		<%
			AssignmentModelo assignmentModelo = new AssignmentModelo();
			Topic topic2 = (Topic) session.getAttribute("topic");
			ArrayList<Assignment> assignments = AssignmentModelo.selectPorTopic(Assignment.getId());
			session.setAttribute("assignments", assignments);
			Iterator<Assignment> it = assignments.iterator();
			while (i.hasNext()){
			Assignment assignment = it.next();	
			}
		
		%>
			  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
      			<div class="card-body">
       				 
      			</div>
    		</div>
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