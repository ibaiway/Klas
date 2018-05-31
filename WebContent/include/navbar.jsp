<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">Klas</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/Klas/home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ListarSubject">Asignaturas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Profile">Perfil</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
    </ul>
    <% Integer rol = (Integer) session.getAttribute("rol");
    if(rol == 1){%>
    	<a href='#'> <button class='btn btn-warning my-2 my-sm-0' type='submit'>ADMIN view</button></a>
    <%}
    	
    	
    	%>
    
    <a href="/Klas/auth/logout.jsp"> <button class="btn btn-secondary my-2 my-sm-0" type="submit">Logout</button></a>
  </div>
</nav>