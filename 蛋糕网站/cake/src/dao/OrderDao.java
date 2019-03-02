package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.Timestamp;

import bean.CakeBean;
import bean.OrderBean;
import bean.OrderDetailBean;

public class OrderDao {
	
	public List<OrderBean> getOrder(int userId){
		 List<OrderBean> orderList=new ArrayList<OrderBean>();
		 Connection conn = Database.getConnection();
		 OrderDetailDao dao=new OrderDetailDao();
		 
		 PreparedStatement pstmt = null;
		 String sql ="select * from order1 where user_id=?";
		 try {
			 	
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, userId);
				ResultSet rs = pstmt.executeQuery();
				
				
				while (rs.next()) {
					List<OrderDetailBean> orderDetailList=new ArrayList<OrderDetailBean>();
					orderDetailList=dao.getOrderDetailListByOrderId(rs.getInt("order_id"));
					System.out.println("坑定是"+rs.getInt("order_id"));
					OrderBean order=new OrderBean(rs.getInt("order_id"),
							userId,
							rs.getTimestamp("order_time").toString(),
							rs.getString("order_state"),
							orderDetailList,
							rs.getInt("deleted")
							);
					orderList.add(order);
					
				
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 
		 
		 
		 
		 return orderList;
		
	}
	
	public int addOrder(int userId) {
		Connection conn = Database.getConnection();
		Date date=new Date();
		Timestamp tt=new Timestamp(date.getTime());
		PreparedStatement pstmt = null;
		String sql ="insert into order1(user_id,order_time,order_state,deleted)"
		 		+ "values(?,?,?,?)";
		int a=0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userId);
			pstmt.setTimestamp(2, tt);
			pstmt.setString(3, "未发货");
			pstmt.setInt(4,0);
			
			a=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
		System.out.println("改变"+a+"行");
		return getNewOrderId();
		
		
	}
	public int getNewOrderId() {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql="select MAX(order_id) as MaxId  from order1";
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
	public List<OrderBean> getAllOrder(){
		List<OrderBean> list=new ArrayList<OrderBean>();
		
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql="select *  from order1";
		 try {
			 	
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					OrderBean order=new OrderBean(rs.getInt("order_id"),
							rs.getInt("user_id"),
							rs.getTimestamp("order_time").toString(),
							rs.getString("order_state"),null,rs.getInt("deleted"));
					list.add(order);
					
					
				}
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return list;
	}
	
	
}
