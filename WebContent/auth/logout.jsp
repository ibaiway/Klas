<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session.removeAttribute("iniciado");
out.print("loggout realizado");
response.sendRedirect("/Klas/index.html");
%>