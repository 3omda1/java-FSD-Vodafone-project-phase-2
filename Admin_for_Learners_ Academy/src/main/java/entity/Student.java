package entity;

public class Student {
	private int id;
	private String name;
	private String email;
	private int req_sub_id;
	private int class_id;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int id, String name, String email, String req_sub, int class_id) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.req_sub_id = req_sub_id;
		this.class_id = class_id;
	}
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getReq_sub_id() {
		return req_sub_id;
	}
	public void setReq_sub_id(int req_sub) {
		this.req_sub_id = req_sub;
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", req_sub=" + req_sub_id + ", class_id="
				+ class_id + "]";
	}
	
	
}
