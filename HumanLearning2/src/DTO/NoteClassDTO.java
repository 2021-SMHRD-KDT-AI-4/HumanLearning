package DTO;

public class NoteClassDTO {

	int class_id;
	String user_id;
	String class_name;
	
	public NoteClassDTO(int class_id, String user_id, String class_name) {
		super();
		this.class_id = class_id;
		this.user_id = user_id;
		this.class_name = class_name;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	
}
