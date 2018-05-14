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
<%@ page import="modelo.TopicModelo"%>
<%@ page import="modelo.AssignmentModelo"%>
<%@ page import="objects.Assignment" %>
<%@ page import="objects.User"%>
<%@ page import="objects.Topic"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%
TopicModelo topicModelo = new TopicModelo();
User user = (User) session.getAttribute("user");
ArrayList<Topic> topics = topicModelo.selectBySubject(Integer.parseInt(request.getParameter("subject")));
Iterator<Topic> i = topics.iterator();
%>
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
      
			
		<div id="accordion">
		<%
			
			while (i.hasNext()) {
				Topic topic = i.next();
				int id= topic.getId();
		%>
		
		
  <div class="card">
    <div class="card-header" id="heading<%=id%>">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapse<%=id%>" aria-expanded="true" aria-controls="collapse<%=id%>">
          <%= topic.getTitle() %>
        </button>
      </h5>
    </div>

    <div id="collapse<%=id%>" class="collapse show" aria-labelledby="heading<%=id%>" data-parent="#accordion">
      <div class="card-body">
      <ul class="list-group">
        <%
        AssignmentModelo assignmentModelo = new AssignmentModelo();
        ArrayList<Assignment> assignments = assignmentModelo.selectByTopic(topic.getId());
        Iterator<Assignment> e = assignments.iterator();
        while (e.hasNext()) {
			Assignment assignment = e.next();
        %>
        
		  <li class="list-group-item d-flex justify-content-between align-items-center">
		   <a href="assignment.jsp?assignment=<%=assignment.getId() %>"> <%= assignment.getTitle() %></a>
		    <span class="badge badge-primary badge-pill">14</span>
		  </li>
        
        <%} %>
        </ul>
      </div>
    </div>
  </div>



				
<%} %>

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
</div>
<jsp:include page="/include/footer.html"></jsp:include>



</body>
</html>