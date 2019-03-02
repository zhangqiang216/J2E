package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import bean.CakeBean;

public class CakeDao {
	/**
	 * 查询所有蛋糕
	 */
	public List<CakeBean> getAllCake(){
		List<CakeBean> cakeList=new ArrayList<CakeBean>();
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
				+ "cake_style,cake_size,cake_color,cake_shape from cake";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				CakeBean cakeBean=new CakeBean(
						rs.getInt("cake_id"),
						rs.getString("cake_name"),
						rs.getString("cake_image_url"),
						rs.getString("cake_type"),
						rs.getInt("cake_discount"),
						rs.getInt("cake_price"),
						rs.getString("cake_style"),
						rs.getDouble("cake_szie"),
						rs.getString("cake_color"),
						rs.getString("cake_shape")); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cakeList;
	}
	/**
	 * 分页查找蛋糕
	 * @param fromIndex
	 * @param count
	 * @return 蛋糕列表
	 */
	public List<CakeBean> getSomeCake(int fromIndex,int count) {
		List<CakeBean> cakeList = new ArrayList<CakeBean>();
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
				+ "cake_style,cake_size,cake_color,cake_shape from cake limit ?,?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fromIndex);
			pstmt.setInt(2, count);
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				CakeBean cakeBean=new CakeBean(
						rs.getInt("cake_id"),
						rs.getString("cake_name"),
						rs.getString("cake_image_url"),
						rs.getString("cake_type"),
						rs.getInt("cake_discount"),
						rs.getInt("cake_price"),
						rs.getString("cake_style"),
						rs.getDouble("cake_size"),
						rs.getString("cake_color"),
						rs.getString("cake_shape")); 
				cakeList.add(cakeBean);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cakeList;
	}
	
	public List<CakeBean> getIndexCake() {
		List<CakeBean> cakeList = new ArrayList<CakeBean>();
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
				+ "cake_style,cake_size,cake_color,cake_shape from cake where cake_id between ? and ? ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 12);
			pstmt.setInt(2, 19);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				CakeBean cakeBean=new CakeBean(
						rs.getInt("cake_id"),
						rs.getString("cake_name"),
						rs.getString("cake_image_url"),
						rs.getString("cake_type"),
						rs.getInt("cake_discount"),
						rs.getInt("cake_price"),
						rs.getString("cake_style"),
						rs.getDouble("cake_size"),
						rs.getString("cake_color"),
						rs.getString("cake_shape")); 
				cakeList.add(cakeBean);
				System.out.print("你好");
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cakeList;
	}
	/**
	 * 获取蛋糕总数
	 * @return
	 */
	public int getCount() {
		
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		int a=0;
		String sql = "select count(*) as totalCount from cake";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				a=rs.getInt("totalCount");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		//System.out.println(a);
		return a;
		
	}
	/**
	 * 通过ID查询蛋糕
	 * @param id
	 * @return
	 */
	public CakeBean getCakeById(int id) {
		CakeBean cakeBean=null;
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
				+ "cake_style,cake_size,cake_color,cake_shape from cake where cake_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				cakeBean=new CakeBean(
						id,
						rs.getString("cake_name"),
						rs.getString("cake_image_url"),
						rs.getString("cake_type"),
						rs.getInt("cake_discount"),
						rs.getInt("cake_price"),
						rs.getString("cake_style"),
						rs.getDouble("cake_size"),
						rs.getString("cake_color"),
						rs.getString("cake_shape"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		return cakeBean;
	} 
	/**
	 * 分类查找蛋糕
	 * @param a
	 * @param b
	 * @param fromIndex
	 * @param count
	 * @return
	 */
	public List<CakeBean> getCakeByType(int a,String b,int fromIndex,int count) {
		List<CakeBean> cakeList = new ArrayList<CakeBean>();
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql=null;
		if(a==1) {
		 sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
				+ "cake_style,cake_size,cake_color,cake_shape from cake where cake_style=? limit ?,?  ";
		}else if(a==2) {
			sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
					+ "cake_style,cake_size,cake_color,cake_shape from cake where cake_color=? limit ?,?  ";
		}else if(a==3) {
			sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
					+ "cake_style,cake_size,cake_color,cake_shape from cake where cake_type=? limit ?,?  ";
		}else if(a==4) {
			sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
					+ "cake_style,cake_size,cake_color,cake_shape from cake where cake_shape=? limit ?,?  ";
		}else if(a==5){
			sql = "select cake_id,cake_name,cake_image_url,cake_type,cake_discount,cake_price,"
					+ "cake_style,cake_size,cake_color,cake_shape from cake where cake_size=? limit ?,?  ";
			
		}else if(a==6) {
			sql="select * from cake where cake_discount=? limit ?,? ";
		}
		try {
			pstmt = conn.prepareStatement(sql);
			if(a==6) {
				int s=Integer.parseInt(b);
				pstmt.setInt(1, s);
			}else {
				pstmt.setString(1, b);
			}
		
			pstmt.setInt(2, fromIndex);
			pstmt.setInt(3, count);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				CakeBean cakeBean=new CakeBean(
						rs.getInt("cake_id"),
						rs.getString("cake_name"),
						rs.getString("cake_image_url"),
						rs.getString("cake_type"),
						rs.getInt("cake_discount"),
						rs.getInt("cake_price"),
						rs.getString("cake_style"),
						rs.getDouble("cake_size"),
						rs.getString("cake_color"),
						rs.getString("cake_shape")); 
				cakeList.add(cakeBean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cakeList;
		
	}
	/**
	 * 分类查找后获取蛋糕数量
	 * @param a
	 * @param b
	 * @return
	 */
	
	public int getTypeCount(int a,String b) {
		
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql=null;
		int c=0;
		if(a==1) {
			 sql = "select count(*) as totalCount from cake where cake_style=?";
		}else if(a==2) {
			sql = "select count(*) as totalCount from cake where cake_color=?";
		}else if(a==3) {
			sql = "select count(*) as totalCount from cake where cake_type=?";
		}else if(a==4) {
			sql = "select count(*) as totalCount from cake where cake_shape=?";
		}else if(a==5) {
			sql = "select count(*) as totalCount from cake where cake_size=?";
		}else if(a==6) {
			sql= "select count(*) as totalCount from cake where cake_discount=?";
		}
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			if(a==6) {
				int s=Integer.parseInt(b);
				pstmt.setInt(1, s);
				
			}else {
				pstmt.setString(1, b);
			}
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				c=rs.getInt("totalCount");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		//System.out.println(a);
		return c;
		
	}
	
	
	
/**
 * 通过id值删除蛋糕
 * @param id
 * @return
 */
	public int deleteCakeById(int id) {
		
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from cake where cake_id=?";
		int a=0;
		try {
		 	
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			a=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("蛋糕减少"+1);
		return a;
	}
	/**
	 * 更改蛋糕信息
	 * @param id
	 * @param name
	 * @param url
	 * @param type
	 * @param dis
	 * @param price
	 * @param style
	 * @param size
	 * @param color
	 * @param shape
	 * @return
	 */
	
	public int updateCakeById(int id,String name,String url,String type,int dis,
			int price,String style,double size,String color,String shape ) {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "update cake set cake_name=?,cake_image_url=?,cake_type=?,cake_discount=?,cake_price=?,cake_style=?,cake_size=?,cake_color=?,cake_shape=? where cake_id=?";
		
		int a=0;
		try {
		 	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2,url);
			pstmt.setString(3,type);
			pstmt.setInt(4, dis);
			pstmt.setInt(5, price);
			pstmt.setString(6, style);
			pstmt.setDouble(7,size);
			pstmt.setString(8,color);
			pstmt.setString(9, shape);
			pstmt.setInt(10, id);
			
			a=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("蛋糕更改"+1);
		
		return a;
		
	}
	/**
	 * 增加蛋糕
	 * @param name
	 * @param url
	 * @param type
	 * @param dis
	 * @param price
	 * @param style
	 * @param size
	 * @param color
	 * @param shape
	 * @return int
	 */
	
	public int addCake(String name,String url,String type,int dis,
			int price,String style,double size,String color,String shape) {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into cake(cake_name,cake_image_url,cake_type,cake_discount,cake_price,cake_style,cake_size,cake_color,cake_shape) values(?,?,?,?,?,?,?,?,?)";
		int a=0;
		try {
		 	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, url);
			pstmt.setString(3, type);
			pstmt.setInt(4,dis);
			pstmt.setInt(5, price);
			pstmt.setString(6,style);
			pstmt.setDouble(7, size);
			pstmt.setString(8,color);
			pstmt.setString(9,shape);
			a=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("蛋糕增加"+1);
		return a;
	}
		
}
