package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.AdminBean;

public class AdminDao {
	
	/**
	 * 获得所以管理员
	 * @return 管理员列表
	 */
	public List<AdminBean> getAllAdmin(){
		List<AdminBean> adminList=new ArrayList<AdminBean>();
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "select * from admin";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				AdminBean admin=new AdminBean(rs.getInt("id"),
						rs.getString("name"),
						rs.getString("password"),
						rs.getString("email"),
						rs.getString("root"),
						rs.getTimestamp("time").toString());
				adminList.add(admin);
			}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		
		return adminList;
	}
	/**
	 * 添加管理员
	 * @param name
	 * @param password
	 * @param email
	 * @param root
	 * @return
	 */
	public int addAdmin(String name,String password,String email,String root) {
		Date date=new Date();
		Timestamp tt=new Timestamp(date.getTime());
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into admin(name,password,email,root,time) values(?,?,?,?,?)";
		int a=0;
		try {
		 	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2,password );
			pstmt.setString(3, email);
			pstmt.setString(4,root);
			pstmt.setTimestamp(5, tt);
			pstmt.setInt(3,0);
			a=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("管理员增加"+1);
		
		return a;
		
	}
	/**
	 * 删除管理员
	 * @param id
	 * @return
	 */
	public int deleteAdmin(int id) {
		
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from admin where id=?";
		int a=0;
		try {
		 	
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			a=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("管理员减少"+1);
		return a;
	}
	/**
	 * 更改管理员信息
	 * @param id
	 * @param name
	 * @param password
	 * @param email
	 * @param root
	 * @return
	 */
	public int updateAdmin(int id,String name,String password,String email,String root) {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "update admin set name=?,password=?,email=?,root=? where id=?";
		
		int a=0;
		try {
		 	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2,password);
			pstmt.setString(3,email);
			pstmt.setString(4, root);
			pstmt.setInt(5, id);
			a=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("管理员更改"+1);
		
		return a;
		
	}
	/**
	 * 查询管理员
	 * @param id
	 * @return
	 */
	public AdminBean findAdmin(int id) {
		AdminBean admin=null;
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "select * from admin where id=?";
		try {
		 	
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				admin=new AdminBean(id,
						rs.getString("name"),
						rs.getString("password"),
						rs.getString("email"),
						rs.getString("root"),
						rs.getTimestamp("time").toString());
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return admin;
		
	}
	/**
	 * 验证管理员账号与密码
	 * @param name
	 * @param password
	 * @return
	 */
	public int isTrue(String name,String password) {
		Connection conn = Database.getConnection();
		int a=0;
		PreparedStatement pstmt = null;
		String sql ="select count(*) as totalCount from admin where name=? and password=?";
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
		//System.out.println("查到了管理员"+a);
		return a;
		
		
	}

}
