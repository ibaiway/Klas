package objects;

import java.util.ArrayList;

public class Subject {

	private int id;
	private String name;
	private String description;
	private ArrayList<User> users;
	private ArrayList<Topic> topics;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public ArrayList<User> getUsers() {
		return users;
	}
	public void setUsers(ArrayList<User> users) {
		this.users = users;
	}
	public ArrayList<Topic> getTopics() {
		return topics;
	}
	public void setTopics(ArrayList<Topic> topics) {
		this.topics = topics;
	}
	
}
