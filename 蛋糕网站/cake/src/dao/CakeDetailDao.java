package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.CakeDetailBean;

public class CakeDetailDao {
	/**
	 * 通过蛋糕id获取蛋糕详情
	 * @param id
	 * @return
	 */
	
	
	public CakeDetailBean getCakeDetailById(int id) {
		CakeDetailBean cakeDetail=null;
		Connection conn = Database.getConnection();
		PreparedStatement pstmt = null;
		String sql ="select cake_detail_id,cake_detail from cakedetail where cake_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				cakeDetail=new CakeDetailBean(rs.getInt("cake_detail_id"),id,rs.getString("cake_detail"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
	
		
		return cakeDetail;
		
	}

}
