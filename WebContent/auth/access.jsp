<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- https://bootswatch.com/materia/ -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Login-Register</title>
<jsp:include page="../include/resources.html"></jsp:include>

<!-- Custom styles for this template -->
<link href="css/heroic-features.css" rel="stylesheet">

</head>

<body>
	<%
		if ( request.getParameter("error")!=null&& request.getParameter("error").equals("true")) {
	%>
	<div class="alert alert-dismissible alert-danger">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<strong>Vaya!</strong> <a href="#" class="alert-link">Ha habido un problema</a> prueba otra vez.
	</div>
	<%
		}else if( request.getParameter("error")!=null&& request.getParameter("error").equals("2")){
		%>
	<div class="alert alert-dismissible alert-danger">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<strong>Vaya!</strong> <a href="#" class="alert-link">Ese email ya esta registrado</a> prueba con otro.
	</div>
	<% 
	}
	%>
		
	
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Klas</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Features</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			</ul>
			<button class="btn btn-secondary my-2 my-sm-0" type="submit">Login</button>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active show"
				data-toggle="tab" href="#login">Login</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#register">Register</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade active show" id="login">
				<div class="card text-white bg-primary mb-3"
					style="max-width: 20rem;">
					<div class="card-header">Login</div>
					<div class="card-body">
						<h4 class="card-title">Accede a tu cuenta</h4>
						<form action="login.jsp" method="post">
							<fieldset>
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input name='email'
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter email">
									<small id="emailHelp" class="form-text text-muted">We'll
										never share your email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input name='password'
										type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="register">
				<div class="card text-white bg-primary mb-3"
					style="max-width: 20rem;">
					<div class="card-header">Register</div>
					<div class="card-body">
						<h4 class="card-title">Crea una nueva cuenta</h4>
						<form action="register.jsp" method="post">
							<fieldset>
								<div class="form-group">
									<label for="exampleInputEmail1">Nombre</label> <input name="name"
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Introduce tu nombre">
									<small id="emailHelp" class="form-text text-muted">Intentaremos
										acordarnos de tu nombre</small>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Apellido</label> <input name="surname"
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp"
										placeholder="Introduce tu apellido"> <small
										id="emailHelp" class="form-text text-muted">Tenemos
										mala memoria, pero intetaremos acordarnos de el</small>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input name="email"
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter email">
									<small id="emailHelp" class="form-text text-muted">We'll
										never share your email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input name="password"
										type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<!-- Footer -->
	<jsp:include page="../include/footer.html"></jsp:include>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>