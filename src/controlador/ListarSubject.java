package controlador;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.SubjectModelo;
import modelo.TopicModelo;
import objects.Subject;
import objects.Topic;
import objects.User;

public class ListarSubject extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		//Recibe los datos
		
		HttpSession session = request.getSession();
		User userLogged = (User)session.getAttribute("userLogged");
		
		SubjectModelo subjectModelo = new SubjectModelo();
		ArrayList<Subject> subjects = subjectModelo.selectByUser(userLogged.getId());
		
		TopicModelo topicModelo = new TopicModelo();
		
		
		Iterator<Subject> iteratorSubject = subjects.iterator();
		
		while(iteratorSubject.hasNext()){
			Subject subject = iteratorSubject.next();
			ArrayList<Topic> topics = topicModelo.selectBySubject(subject.getId());
			subject.setTopics(topics);
		}
		
//		
//		//enviar datos a la vista(LA VISTA ES EL JSP)
		request.setAttribute("subjects", subjects);	
//		
		RequestDispatcher rd = request.getRequestDispatcher("www/subjectlist.jsp");
		rd.forward(request, response);
		
			
			
			
		
	}
}
