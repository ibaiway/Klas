package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.SubjectModelo;
import objects.Subject;
import objects.User;

public class ListarSubject extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		//Recibe los datos
		
		HttpSession session = request.getSession();
		User userLogged = (User)session.getAttribute("userLogged");
		SubjectModelo subjectModelo = new SubjectModelo();
		subjectModelo.selectByUser(userLogged.getId());
		
		if(false){
			
			
			ArrayList<Subject> subjects = new ArrayList<Subject>();
			
			Subject subject = new Subject();
			
		}
	}
}
