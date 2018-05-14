package modelo;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import objects.Assignment;
import objects.Delivery;
import objects.Topic;

public class AssignmentModelo extends Conector{

	
	
	public ArrayList<Assignment> selectAll() {

		ArrayList<Assignment> assignments = new ArrayList<Assignment>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from assignment");
			while (rs.next()) {
				Assignment assignment = new Assignment();
				assignment.setId(rs.getInt("id_assignment"));
				assignment.setId_topic(rs.getInt("id_topic"));
				assignment.setTitle(rs.getString("title"));
				assignment.setDate(rs.getDate("date"));
				assignment.setTime(rs.getTime("time"));
				assignment.setDescription(rs.getString("description"));

				assignments.add(assignment);
			}
			return assignments;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//Metodo para seleccionar un delivery por id
	
	public Assignment selectPorId(int id){
				
				try {
					PreparedStatement pst= super.conexion.prepareStatement("select * from assignment where id_assignment = ? ");
					pst.setInt(1, id);
					//st.setInt(1, "id_delivery");
					ResultSet rs = pst.executeQuery();
					if (rs.next()) {
						Assignment assignment = new Assignment();
						assignment.setId(rs.getInt("id_assignment"));
						assignment.setId_topic(rs.getInt("id_topic"));
						assignment.setDate(rs.getDate("date"));
						assignment.setTime(rs.getTime("time"));
						assignment.setTitle(rs.getString("title"));
						assignment.setDescription(rs.getString("description"));
						return assignment;
					}
					
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return null;
	}
	
	
	//update
	
	public void update(Assignment assignment){
		PreparedStatement pst;
		try {
			pst = super.conexion.prepareStatement("update assignment set id_topic=?, date=?, time=?, title=?, description=? where id_assignment=?");
			pst.setInt(1, assignment.getId_topic());
			pst.setDate(2, (Date) assignment.getDate());
			pst.setTime(3, assignment.getTime());
			pst.setString(4, assignment.getTitle());
			pst.setString(5, assignment.getDescription());
			pst.setInt(6, assignment.getId());
			
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	


	public void delete (int id_assignment){
		//delete from delivery where id = 6
		PreparedStatement pst;
		try {
			pst = super.conexion.prepareStatement("delete from assignment where id_assignment = ?");
			pst.setInt(1, id_assignment);
			
			pst.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	
	public ArrayList<Assignment> selectByTopic(int id) {

		ArrayList<Assignment> assignments = new ArrayList<Assignment>();
		try {

			PreparedStatement pst = super.conexion.prepareStatement("Select * from assignment where id_topic=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Assignment assignment = new Assignment();
				assignment.setId(rs.getInt("id_assignment"));
				assignment.setId_topic(rs.getInt("id_topic"));
				assignment.setTitle(rs.getString("title"));
				assignment.setDescription(rs.getString("description"));
				assignment.setDate(rs.getDate("fecha"));
				assignment.setTime(rs.getTime("time"));
				assignments.add(assignment);
			}
			return assignments;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;

	}
	
	 

	
}
