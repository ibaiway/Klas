package objects;

import java.util.ArrayList;

public class Topic {
	
	private int id;
	private int id_subject;
	private String title;
	private ArrayList<Assignment> assignments;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_subject() {
		return id_subject;
	}
	public void setId_subject(int id_subject) {
		this.id_subject = id_subject;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public ArrayList<Assignment> getAssignments() {
		return assignments;
	}
	public void setAssignments(ArrayList<Assignment> assignments) {
		this.assignments = assignments;
	}
	

}
