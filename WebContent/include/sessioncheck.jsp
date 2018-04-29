<%@ page import="objects.User"%>
<%
	//Ver si esta loggeado
	Object objeto = session.getAttribute("usuario");
	if (objeto == null) {
		response.sendRedirect("/Klas/auth/access.jsp");
	}
	User user = (User) session.getAttribute("user");
	
%>