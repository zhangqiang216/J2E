package bean;

public class UserBean {
	private String name;
	private boolean gender;//true 男 false 女
	private int age;
	private int limit;//1:超级管理员 2：普通管理员3：版主 4：普通会员 5：游客
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	

}
