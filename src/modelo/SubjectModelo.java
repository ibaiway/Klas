package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.*;

import objects.Subject;

public class SubjectModelo extends Conector {

	ArrayList<Subject> subjects = new ArrayList<Subject>();
	
	
	public ArrayList<Subject> selectAll(){
		PreparedStatement pst;
		
		try {
			pst = super.conexion.prepareStatement("select * from subjects");
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()){
				Subject subject = new Subject();
				subject.setId(rs.getInt("id_subject"));
				subject.setDescription(rs.getString("description"));
				subject.setName(rs.getString("name"));
				//subject.setTopics(TopicModelo.selectBySubject(subject));
				//subject.setUsers(UserModelo.selectBySubject(subject));
				subjects.add(subject);
			}
			return subjects;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<Subject> selectByUser(int id){
		
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("select * from subjectuser where id_user=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()){
				Subject subject = new Subject();
				subject.setId(rs.getInt("id_subject"));
				subjects.add(subject);
			}
			return subjects;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	
	public Subject select(int id){
		
		Subject subject = new Subject();
		try {

			
			PreparedStatement pst = super.conexion.prepareStatement("select * from subject where id_subject=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if (rs.next()){
			subject.setId(rs.getInt("id"));
			subject.setName(rs.getString("name"));
			subject.setDescription(rs.getString("description"));
			return subject;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
public void update(Subject subject){
		
		PreparedStatement pst;
		try {
			pst = conexion.prepareStatement("update subject set name=?,description=? where id_subject=?");
		
		pst.setString(1, subject.getName());
		pst.setString(2, subject.getDescription());
		pst.setInt(3, subject.getId());
		
		pst.execute();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
