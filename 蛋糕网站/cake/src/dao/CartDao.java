package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.ShoppingCartBean;

public class CartDao {
	/**
	 * 为用户添加购物车
	 * @param uid
	 */
	
	public void addCartByuId(int uid) {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into shoppingcart(user_id) values(?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, uid);
			int a=pstmt.executeUpdate();
			System.out.println("改变"+a+"行");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	/**
	 * 通过用户id查找他的购物车
	 * @param uid
	 * @return
	 */
	
	public ShoppingCartBean getCartByUid(int uid) {
		ShoppingCartBean shoppingCart=null;
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql ="select shopping_cart_id from shoppingcart where user_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, uid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				shoppingCart=new ShoppingCartBean(rs.getInt("shopping_cart_id"),uid);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("dao1成功");
		return shoppingCart;
	}

}
