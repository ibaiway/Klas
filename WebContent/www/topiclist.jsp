<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="modelo.*" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.util.Iterator" %>
    <%
    TopicModelo topicModelo = new TopicModelo();
    ArrayList<Topic> topic = topicModelo.selectAll();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of topics</title>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col">
			<h1>List of topics</h1>
		</div>
		<div class="col">
			<a class="btn btn-primary" href="crearLibro.jsp">Add topic</a>
		</div>
	</div>
	<div class="row">
		<div class="col">
			<table class="table">
			<thead class="thead-dark">
				<tr><th>Topic</th><th>Teacher</th></tr>
			</thead>
			<tbody>
			
			<%
			Iterator<Topic> i = topic.iterator();
			Topic libro;
			TopicModelo  prestamoModelo = new PrestamoModelo();
			
			while(i.hasNext()){
				libro = i.next();
				String clase;
				if(prestamoModelo.estaDisponible(libro)){
					clase = "table-success";
					//out.print("<tr class='table-success'>");
				}else{
					clase = "table-danger";
					//out.print("<tr class='table-danger'>");
				}
				%>
				<tr class="<%=clase%>">
					<td>
						<%=libro.getTitulo()%>
					</td>
					<td>
						<%=libro.getAutor()%>
					</td>
					<td>
						<a href="ver.jsp?id=<%=libro.getId()%>">ver</a>
					</td>
				</tr>
				<%
			}//fin while
			%>

			</tbody>
			</table>
		</div>
	</div>
</div>

</body>
</html>