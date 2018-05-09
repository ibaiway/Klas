package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import objects.Subject;
import objects.User;

public class UserModelo extends Conector{

ArrayList<User> users = new ArrayList<User>();
	
	
	public ArrayList<User> selectAll(){
		PreparedStatement pst;
		
		try {
			pst = super.conexion.prepareStatement("select * from user");
			ResultSet rs = pst.executeQuery();
			SubjectModelo subjectModelo = new SubjectModelo();
			while (rs.next()){
				User user = new User();
				user.setId(rs.getInt("id_user"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
				user.setSurname(rs.getString("surname"));
				user.setImage(rs.getString("image"));
				user.setBirthdate(rs.getDate("birthdate"));
				user.setRol(rs.getInt("rol"));
				user.setSubjects(subjectModelo.selectByUser(user.getId()));
				users.add(user);
			}
			return users;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	
	public User select(int id){
		
		User user = new User();
		SubjectModelo subjectModelo = new SubjectModelo();
		try {

			
			PreparedStatement pst = super.conexion.prepareStatement("select * from user where id_user=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()){
			user.setId(rs.getInt("id_user"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setName(rs.getString("name"));
			user.setSurname(rs.getString("surname"));
			user.setImage(rs.getString("image"));
			user.setBirthdate(rs.getDate("birthdate"));
			user.setRol(rs.getInt("rol"));
			user.setSubjects(subjectModelo.selectByUser(user.getId()));
			return user;
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public User selectByEmail(String email){
			
			User user = new User();
			SubjectModelo subjectModelo = new SubjectModelo();
			try {
	
				
				PreparedStatement pst = super.conexion.prepareStatement("select * from user where email=?");
				pst.setString(1, email);
				ResultSet rs = pst.executeQuery();
				if (rs.next()){
				user.setId(rs.getInt("id_user"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
				user.setSurname(rs.getString("surname"));
				user.setImage(rs.getString("image"));
				user.setBirthdate(rs.getDate("birthdate"));
				user.setRol(rs.getInt("rol"));
				user.setSubjects(subjectModelo.selectByUser(user.getId()));
				return user;
				}
						
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
	
	public boolean checkByEmail(String email){
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("select * from user where email=?");
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if (rs.next()){
			return true;
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public void update(User user){
		
		PreparedStatement pst;
		try {
			pst = conexion.prepareStatement("update user set email=?,name=?,surname=?,image=?,birthdate=? where id_user=?");
		
		pst.setString(1, user.getEmail());
		pst.setString(2, user.getName());
		pst.setString(3, user.getSurname());
		pst.setString(4, user.getImage());
		pst.setDate(5, new java.sql.Date(user.getBirthdate().getTime())); //hay que hacer el cambio de date java a date sql
		pst.setInt(6, user.getId());
		pst.execute();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
public void insert(User user){
		
		try {
			PreparedStatement pst = conexion.prepareStatement("insert into user(password,email,name,surname) values (?,?,?,?)");
			pst.setString(1, user.getPassword());
			pst.setString(2, user.getEmail());
			pst.setString(3, user.getName());
			pst.setString(4, user.getSurname());
			pst.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
