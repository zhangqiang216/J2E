package bean;

public class UserBean {

	private String userName;
	private String password;
	private String id;
	
	public UserBean(String userName) {
		this.userName = userName;
	}
	public UserBean() {
		
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
