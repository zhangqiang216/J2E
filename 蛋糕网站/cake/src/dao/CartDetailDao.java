package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.CakeBean;
import bean.ShoppingCartDetailBean;

public class CartDetailDao {
	/**
	 * 通过购物车ID获取购物车商品详情列表
	 * @param cartId
	 * @return
	 */
	
	public List<ShoppingCartDetailBean> getCartDetailListBy(int cartId){
		List<ShoppingCartDetailBean> cartDetailList=new ArrayList<ShoppingCartDetailBean>();
		Connection conn = Database.getConnection();
		CakeDao dao=new CakeDao();
		PreparedStatement pstmt = null;
		String sql = "select shopping_cartdetail_id,cake_id,count from shoppingcartdetail where shopping_cart_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,cartId);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				CakeBean cake=dao.getCakeById(rs.getInt("cake_id"));
				ShoppingCartDetailBean shoppingCartDetail=new ShoppingCartDetailBean(
						rs.getInt("shopping_cartdetail_id"),cartId,cake,rs.getInt("count"));
				cartDetailList.add(shoppingCartDetail);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("dao2成功");
		return cartDetailList;
	}
	/**
	 * 添加蛋糕进购物车
	 * @param shoppingCartId
	 * @param cakeId
	 * @param count
	 */
	
	public void addCartDetail(int shoppingCartId,int cakeId,int count) {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql ="insert into shoppingcartdetail(shopping_cart_id,cake_id,count) values(?,?,?)";
		int a=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,shoppingCartId);
			pstmt.setInt(2,cakeId);
			pstmt.setInt(3, count);
			a=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(a);
	}
	/**
	 * 更新购物车某种已经添加商品的数量
	 * @param shoppingCartId
	 * @param cakeId
	 * @param count
	 */
	
	public void updateCountCartDetail(int shoppingCartId,int cakeId,int count) {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql ="update shoppingcartdetail set count=count+? where shopping_cart_id=? and cake_id=?";
		int a=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, count);
			pstmt.setInt(2,shoppingCartId);
			pstmt.setInt(3,cakeId);
			a=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(a);
		
		
	}
	/**
	 * 删除某种购物车中的商品
	 * @param shoppingCartId
	 * @param cakeId
	 */
	
	public void deleteCartDetail(int shoppingCartId,int cakeId) {
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql ="delete from shoppingcartdetail where shopping_cart_id=? and cake_id=?";
		int a=0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,shoppingCartId);
			pstmt.setInt(2,cakeId);
		
			a=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(a);
	}
	
	
	
	
	
	
	
	/**
	 * 判断购物车明细表中是否存在此种蛋糕，以此为到底是插入数据还是更新数据做铺垫
	 * @param shoppingCartId
	 * @param cakeId
	 * @return 1表示存在 0表示不存在
	 */
	public int isCakeExist(int shoppingCartId,int cakeId) {
		int b=0;
		List<ShoppingCartDetailBean> cartDetailList=getCartDetailListBy(shoppingCartId);
		for(ShoppingCartDetailBean a:cartDetailList) {
			if(a.getCake().getCakeId()==cakeId) {
				b=1;
			}	
		}
		return b;
		
	}
	
	
	/**
	 * 购物车内添加商品
	 * @param shoppingCartId
	 * @param cakeId
	 * @param count
	 */
	public void add(int shoppingCartId,int cakeId,int count) {
		int a=isCakeExist(shoppingCartId,cakeId);
		if(a==0) {
			addCartDetail(shoppingCartId,cakeId,count);
			
			
		}else {
			updateCountCartDetail(shoppingCartId, cakeId,count);
			
		}
	}
	


}
