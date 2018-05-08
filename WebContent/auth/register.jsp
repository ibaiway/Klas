<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.UserModelo"%>
<%@ page import="objects.User"%>
<%
	UserModelo userModelo = new UserModelo();
	String email = request.getParameter("email");
	if (userModelo.checkByEmail(email) == true){
		response.sendRedirect("access.jsp?error=2");
	}else{
		User user = new User();
		user.setEmail(email);
		user.setPassword(request.getParameter("password"));
		user.setName(request.getParameter("name"));
		user.setSurname(request.getParameter("surname"));
		userModelo.insert(user);
		session.setAttribute("user", user);
		response.sendRedirect("../home.jsp");
	}
			
%>