package Bean;

public class UserBean {

	private String name;
	private String password;
	public UserBean() {
		
	}
	public UserBean(String name2, String password2) {
		
		name=name2;
		password=password2;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String Name) {
		this.name = Name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
