package controlador;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;



public class CrearAsignatura {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException{
		
		String titulo = request.getParameter("Titulo");
		String descripcion = request.getParameter("Descripcion");
		try{
			Class.forName("com.myql.jdbc.Driver");
			Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/java","klas","1234");
			PreparedStatement ps = ((java.sql.Connection)con).prepareStatement("insert into Subject(name,description) values(?,?)");
			ps.setString(1, titulo);
			ps.setString(2, descripcion);
			ps.execute();
		}catch(Exception e){
			System.out.println(e);
		}
		
	}
}
