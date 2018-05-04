<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="modelo.SubjectModelo"%>
<%@ page import="objects.User"%>
<%@ page import="objects.Subject"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%
SubjectModelo subjectModelo = new SubjectModelo();
User user = new User();
user.setId(1);

Iterator<Subject> i = subjectModelo.selectByUser(user.getId()).iterator();
while(i.hasNext()){
	Subject subject = i.next();
	
	out.print(subject.getName() + " - " + subject.getDescription());
	
	out.print("---------------------------");
}
%>
</body>
</html>