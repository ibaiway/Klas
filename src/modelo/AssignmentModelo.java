package modelo;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import objects.Assignment;
import objects.Delivery;

public class AssignmentModelo extends Conector{

	
	
	public ArrayList<Assignment> selectAll() {

		ArrayList<Assignment> assignments = new ArrayList<Assignment>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from deliveries");
			while (rs.next()) {
				Assignment assignment = new Assignment();
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
	
	public ArrayList<Assignment> selectPorId(int id_assignment){
		//crear arrayList
				ArrayList<Assignment> assignments = new ArrayList<Assignment>();
				
				try {
					PreparedStatement pst= super.conexion.prepareStatement("select * from deliveries where id_delivery = ? ");
					pst.setInt(1, id_assignment);
					//st.setInt(1, "id_delivery");
					ResultSet rs = pst.executeQuery();
					while(rs.next()){
						Assignment assignment = new Assignment();
						assignment.setId_topic(rs.getInt("id_delivery"));
						assignment.setDate(rs.getDate("date"));
						assignment.setTime(rs.getTime("time"));
						assignment.setTitle(rs.getString("title"));
						assignment.setDescription(rs.getString("description"));
						
						assignments.add(assignment);
					}
					return assignments;
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return null;
	}
	
	
	//update
	
	public void update(Assignment assignment){
		PreparedStatement pst;
		try {
			pst = super.conexion.prepareStatement("update deliveries set id_topic=?, date=?, time=?, title=?, description=? where id_assignment=?");
			pst.setInt(1, assignment.getId_topic());
			pst.setDate(2, (Date) assignment.getDate());
			pst.setTime(3, assignment.getTime());
			pst.setString(4, assignment.getTitle());
			pst.setString(5, assignment.getDescription());
			pst.setInt(6, assignment.getId_assignment());
			
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
	
	public ArrayList<Assignment> selectPorTopic(int id_Topic){
		
		ArrayList<Assignment> assignment = new ArrayList<Assignment>();
		
		try{
			PreparedStatement pst = super.conexion.prepareStatement("Select * from Assignment where id = ?");
			pst.setInt(1, id_Topic);
			ResultSet rs= pst.executeQuery();
			while (rs.next()){
				Assignment assignment1 = new Assignment();
				assignment1.setId_topic(rs.getInt("id_topic"));
				assignment1.setTitle(rs.getString("title"));
				assignment1.setDescription(rs.getString("description"));
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	 

	
}
