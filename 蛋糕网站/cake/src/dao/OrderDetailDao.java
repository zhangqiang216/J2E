package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.CakeBean;
import bean.OrderDetailBean;

public class OrderDetailDao {
	public List<OrderDetailBean> getOrderDetailListByOrderId(int OrderId){
		List<OrderDetailBean> orderDetailList=new ArrayList<OrderDetailBean>();
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "select order_detail_id,cake_id,count from orderdetail where order_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, OrderId);
			ResultSet rs = pstmt.executeQuery();
			CakeDao dao1=new CakeDao();
			while (rs.next()) {
				CakeBean cake=new CakeBean();
				cake=dao1.getCakeById(rs.getInt("cake_id"));
				OrderDetailBean orderDetail=new OrderDetailBean(rs.getInt("order_detail_id"),
						OrderId,
						cake,rs.getInt("count")); 
				orderDetailList.add(orderDetail);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderDetailList;
		
	}
	
	public void addOrderDetail(int OrderId,int CakeId,int count) {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql ="insert into orderdetail(order_id,cake_id,count) values(?,?,?)";
		int a=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, OrderId);
			pstmt.setInt(2,CakeId);
			pstmt.setInt(3,count);
			a=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("超级改变"+a);
	}

}
