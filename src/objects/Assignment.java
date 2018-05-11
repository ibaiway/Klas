package objects;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;

public class Assignment {

	private int id;
	private int id_topic;
	private Date date;
	private Time time;
	private String title;
	private String description;
	private ArrayList<Delivery> deliveries;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_topic() {
		return id_topic;
	}
	public void setId_topic(int id_topic) {
		this.id_topic = id_topic;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public ArrayList<Delivery> getDeliveries() {
		return deliveries;
	}
	public void setDeliveries(ArrayList<Delivery> deliveries) {
		this.deliveries = deliveries;
	}
	
	
}
