package modelo;

import java.util.ArrayList;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import objects.Subject;
import objects.Topic;

public class TopicModelo extends Conector {
	
	ArrayList<Topic> topics = new ArrayList<Topic>();
	
	public ArrayList<Topic> selectAll(){
		
		ArrayList<Topic> topics = new ArrayList<Topic>();
		
		try {
			Statement st  = super.conexion.createStatement();
			ResultSet rs = st.executeQuery("select * from topic");
			
			while(rs.next()){
			Topic topic = new Topic();
			topic.setId(rs.getInt("id"));
			topic.setId_subject(rs.getInt("id_subject"));
			topic.setTitle(rs.getString("Title"));
			topics.add(topic);
			}
				return topics;
		}catch (SQLException e){
			e.printStackTrace();
		}
		return null;
		
	}	
	
	
public ArrayList<Topic> selectBySubject(int id){
		
		
		try {
			PreparedStatement pst = super.conexion.prepareStatement("select * from topic where id_subject=?");
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()){
				Topic topic = new Topic();
				topic = select(rs.getInt("id_topic"));
				topics.add(topic);
			}
			return topics;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	


public Topic select(int id) {

	try {

		PreparedStatement pst = super.conexion.prepareStatement("select * from topic where id_topic=?");
		pst.setInt(1, id);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			Topic topic = new Topic();
			topic.setId(rs.getInt("id_subject"));
			topic.setId_subject(rs.getInt("id_subject"));
			topic.setTitle(rs.getString("title"));
			return topic;
		}

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}

}


