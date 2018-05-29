<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ page import="modelo.SubjectModelo"%>
		<%@ page import="objects.Assignment" %>
		<%@ page import="objects.Subject"%>
		<%@ page import="objects.Topic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="../include/resources.html"></jsp:include>
<title>Create Subject</title>
</head>

<body>

	<jsp:include page="../include/navbar.jsp"></jsp:include>

		
		<c:forEach items="${subjects}" var="subject">
			${subject.name} <br>
			<c:forEach items="${subject.topics}" var="topic">
				${topic.title} <br>
			</c:forEach>
		</c:forEach>
		
	<div>
	<a href="subjectform.jsp" class="btn btn-primary" role="button">Create subject</a>
	
	</div>
	
	<jsp:include page="../include/footer.html"></jsp:include>
</body>
</html>