package controlador;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import modelo.UserModelo;
import objects.User;

public class ChangeProfile extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		System.out.println("ajhadfkh");
		HttpSession session = request.getSession();
		String password = request.getParameter("password");
		User user = (User) session.getAttribute("user");
		
		if (user != null && BCrypt.checkpw(password, user.getPassword())) {
			
			UserModelo userModelo = new UserModelo();
			user.setName(request.getParameter("name"));
			user.setSurname(request.getParameter("surname"));
			
			String string = request.getParameter("birthdate");
			DateFormat format = new SimpleDateFormat("MM d, yyyy");
			Date date;
			try {
				date = format.parse(string);
				user.setBirthdate(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			userModelo.update(user);
			
			RequestDispatcher rd = request.getRequestDispatcher("www/profile.jsp?e=1");
			rd.forward(request, response);
			
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("auth/access.jsp");
			rd.forward(request, response);
		}
		
	}
}
