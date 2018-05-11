<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.UserModelo"%>
<%@ page import="objects.User"%>
<%@ page import="org.mindrot.jbcrypt.BCrypt" %>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	UserModelo userModelo = new UserModelo();
	User user = userModelo.selectByEmail(email);
	if (user != null && BCrypt.checkpw(password, user.getPassword())) {
		session.setAttribute("user", user);
		response.sendRedirect("../home.jsp");
	} else {
		response.sendRedirect("access.jsp?error=true");
	}
%>