package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import objects.Delivery;
import objects.Subject;
import objects.Topic;

public class DeliveryModelo extends Conector {

	
	
	public ArrayList<Delivery> selectAll() {

		ArrayList<Delivery> deliveries = new ArrayList<Delivery>();

		try {
			Statement st = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from deliveries");
			while (rs.next()) {
				Delivery delivery = new Delivery();
				delivery.setId_delivery(rs.getInt("id_delivery"));
				delivery.setId_assignment(rs.getInt("id_assignment"));
				delivery.setId_usuario(rs.getInt("id_usuario"));
				delivery.setFile(rs.getString("file"));

				deliveries.add(delivery);
			}
			return deliveries;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//Metodo para seleccionar un delivery por id
	
	public Delivery selectPorId(int id_delivery){
		//crear arrayList
				
				
				try {
					PreparedStatement pst= super.conexion.prepareStatement("select * from deliveries where id_delivery = ? ");
					pst.setInt(1, id_delivery);
					//st.setInt(1, "id_delivery");
					ResultSet rs = pst.executeQuery();
					if (rs.next()) {
						Delivery delivery = new Delivery();
						delivery.setId_delivery(rs.getInt("id_delivery"));
						delivery.setId_assignment(rs.getInt("id_assignment"));
						delivery.setId_usuario(rs.getInt("id_usuario"));
						delivery.setFile(rs.getString("file"));
						return delivery;
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return null;
	}
	
	public boolean entregado(int idUser, int idAssignment){
		
		PreparedStatement pst;
		try {
			pst = super.conexion.prepareStatement("select * from deliveries where id_usuario = ? AND id_assignment = ?");
		pst.setInt(1, idUser);
		pst.setInt(2, idAssignment);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			return true;
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public void update(Delivery delivery){
		//update delivery set id_assignment=4, id_usuario=14, file='unfilerandom' where id_delivery=5
		PreparedStatement pst;
		try {
			pst = super.conexion.prepareStatement("update deliveries set id_assignment=?, id_usuario=?, file=? where id_delivery=?");
			pst.setInt(1, delivery.getId_assignment());
			pst.setInt(2, delivery.getId_usuario());
			pst.setString(3, delivery.getFile());
			pst.setInt(4, delivery.getId_delivery());
			
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//delete
	

	public void delete (int id_delivery){
		//delete from delivery where id = 6
		PreparedStatement pst;
		try {
			pst = super.conexion.prepareStatement("delete from delivery where id_delivery = ?");
			pst.setInt(1, id_delivery);
			
			pst.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	

	
	
}