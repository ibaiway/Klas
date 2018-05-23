package controlador;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import modelo.SubjectModelo;
import objects.Subject;



public class CrearAsignatura extends HttpServlet{

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		String titulo = request.getParameter("Titulo");
		String descripcion = request.getParameter("Descripcion");
		
		try{
			Subject subject = new Subject();
			subject.setName(titulo);
			subject.setDescription(descripcion);
			
			SubjectModelo subjectModelo = new SubjectModelo();
			subjectModelo.insert(subject);
			
//			RequestDispatcher rd = request.getRequestDispatcher("www/subjectlist.jsp?e=1");
//			rd.forward(request, response);
			response.sendRedirect("SubjectList.jsp");
			
		}catch(Exception e){
			
			System.out.println(e);
			
		}
		
	}
}
