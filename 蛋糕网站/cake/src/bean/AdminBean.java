package bean;

public class AdminBean {
	int id;
	String name;
	String password;
	String email;
	String root;
	String time;
	
	public AdminBean(int id, String name, String password, String email, String root, String time) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.root = root;
		this.time = time;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRoot() {
		return root;
	}
	public void setRoot(String root) {
		this.root = root;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	

}
