<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="../include/resources.html"></jsp:include>
<%@ page import="objects.User"%>
<% User user = (User) session.getAttribute("user"); %>
</head>
<body>
<jsp:include page="../include/navbar.jsp"></jsp:include>
<div class="container">
<div class="card mb-3">
<h3 class="card-header"> Modificar datos</h3>
<div class="card-body">
<form action="#" method="get">
							<fieldset>
							<div class="form-group">
									<label for="exampleInputEmail1">Nombre</label> <input name="name"
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" value='<%=user.getName() %>' placeholder="Introduce tu nombre">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Apellido</label> <input name="surname"
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" value='<%=user.getSurname() %>'
										placeholder="Introduce tu apellido">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Nombre</label> <input name="name"
										type="date" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" value='<%=user.getBirthdate() %>'>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input name='email'
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" value='<%=user.getEmail() %>'placeholder="Enter email">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input name='password'
										type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<button type="submit" class="btn btn-primary">Guardar</button>
							</fieldset>
						</form>
						</div>
					</div>
				</div>

<jsp:include page="/include/footer.html"></jsp:include>



</body>
</html>