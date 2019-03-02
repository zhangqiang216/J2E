package bean;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DbConnection {
	private static Properties properties;
    static {
    	InputStream is = DbConnection.class.getResourceAsStream("/db.properties");
    	properties = new Properties();
    	try {
            properties.load(is);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public static Connection getConnection() {
    	Connection connection = null;
    	try {
			Class.forName(properties.getProperty("dbDriver"));
			 connection = DriverManager.getConnection(
			            properties.getProperty("jdbc:sqlserver://127.0.0.1:1433;databaseName=student"),
			            properties.getProperty("zhangqiang"),
			            properties.getProperty("123456"));

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    	return connection;
    }
    public UserBean login(String name,String pwd)
    {
    	Connection conn = DbConnection.getConnection();
    	Statement stmt;
    	UserBean e = null;
    	try {
    		stmt = conn.createStatement();
    		String sql = "select * from user where name='"+name+"' and password='"+pwd+"'";
    		System.out.println("sql = "+sql);
    		ResultSet rs = stmt.executeQuery(sql);	    		
    		while (rs.next()) {
    			e= new UserBean();
    			e.setUserName(rs.getString("name"));
    			e.setPassword(rs.getString("password"));
    			e.setId(rs.getString("id"));

    		} 		conn.close();
    	} catch (SQLException e1) {
	// TODO Auto-generated catch block
    		e1.printStackTrace();
    	}

    	return e;}

    		



}
