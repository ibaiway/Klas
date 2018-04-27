package objects;

public class Delivery {
	
	private int id_delivery;
	private int id_assignment;
	private int id_usuario;
	private String file;

	
	
	
	public int getId_delivery() {
		return id_delivery;
	}
	public void setId_delivery(int id_delivery) {
		this.id_delivery = id_delivery;
	}
	public int getId_assignment() {
		return id_assignment;
	}
	public void setId_assignment(int id_assignment) {
		this.id_assignment = id_assignment;
	}
	public int getId_usuario() {
		return id_usuario;
	}
	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	

}
