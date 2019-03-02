package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.UserBean;

public class UserDao {
	/**
	 * 判断用户是否存在
	 * @param name
	 * @return 1表示存在，0表示不存在，用于AJAX表单用户名验证
	 */
	
	public int isExist(String name) {
		Connection conn = Database.getConnection();
		int a=0;
		PreparedStatement pstmt = null;
		String sql ="select count(*) as totalCount from user where name=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				a=rs.getInt("totalCount");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		//System.out.println("查到了"+a);
		return a;
		
		
	}
	/**
	 * 增加用户
	 * @param name
	 * @param pwd
	 * @param email
	 * @param pho
	 * @param adr
	 * @return 新增加用户的ID
	 */
	
	public int addUser(String name,String pwd,String email,int pho,String adr) {
		int a=0;
		Connection conn = Database.getConnection();
		Date date=new Date();
		Timestamp tt=new Timestamp(date.getTime());
		PreparedStatement pstmt = null;
		String sql ="insert into user(name,password,email,telephone,address,time) values(?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, pwd);
			pstmt.setString(3, email);
			pstmt.setInt(4, pho);
			pstmt.setString(5,adr);
			pstmt.setTimestamp(6, tt);
			a=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		//System.out.println("增加用户"+a);
		return getNewUserId();
	}
	
	/**
	 * 最新用户的Id
	 */
	public int getNewUserId() {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql="select MAX(id) as MaxId  from user";
		int a=0;
		 try {
			 	
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					a=rs.getInt("MaxId");
					
					
				}
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		
		
		return a;
	}
	/**
	 * 通过ID查找用户
	 * @param id
	 * @return
	 */
	public UserBean getUserById(int id) {
		UserBean user=null;
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql="select * from user where id=?";
		 try {
			 	
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					user=new UserBean(rs.getInt("id"),
							rs.getString("name"),
							rs.getString("password"),
							rs.getString("email"),
							rs.getInt("telephone"),
							rs.getString("address"),
							rs.getTimestamp("time").toString());
					
					
				}
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		
		
		
		return user;
	}
	/**
	 * 验证登录用户的用户名与密码
	 * @param name
	 * @param password
	 * @return
	 */
	public int isTrue(String name,String password) {
		Connection conn = Database.getConnection();
		int a=0;
		PreparedStatement pstmt = null;
		String sql ="select count(*) as totalCount from user where name=? and password=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2,password);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				a=rs.getInt("totalCount");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		//System.out.println("查到了用户"+a);
		return a;
		
		
	}
	/**
	 * 通过用户名密码获取该用户的ID
	 * @param name
	 * @param password
	 * @return
	 */
	public int getId(String name,String password) {
		Connection conn = Database.getConnection();
		int a=0;
		PreparedStatement pstmt = null;
		String sql ="select id from user where name=? and password=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2,password);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				a=rs.getInt("id");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		//System.out.println("查到了id"+a);
		return a;
	}
	/**
	 * 邮箱找回密码
	 * @param email
	 * @return
	 */
	public String findPassword(String email) {
		Connection conn = Database.getConnection();
		String  a=null;
		PreparedStatement pstmt = null;
		String sql ="select password from user where email=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				a=rs.getString("password");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		//System.out.println("查到了密码"+a);
		return a;
		
		
	}
	public List<UserBean> getAllUser() {
		List<UserBean> userList=new ArrayList<UserBean>();
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql ="select * from user";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				UserBean user=new UserBean(rs.getInt("id"),
						rs.getString("name"),
						rs.getString("password"),
						rs.getString("email"),
						rs.getInt("telephone"),
						rs.getString("address"),
						rs.getTimestamp("time").toString());
				userList.add(user);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return userList;
		
	}

}
