package modelo;

import java.util.ArrayList;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import objects.Topic;

public class TopicModelo extends Conector {
	
	
	
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
}


