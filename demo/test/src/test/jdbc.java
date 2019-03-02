package test;

import java.sql.Connection;    
import java.sql.DriverManager;    
import java.sql.ResultSet;    
import java.sql.Statement;    
    
public class jdbc {    
    public static void main(String args[]) {    
        // Create a variable for the connection string.  
        String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=student;user=zhangqiang;password=123456";  
        // Declare the JDBC objects.    
        Connection con = null;    
        Statement stmt = null;    
        ResultSet rs = null;    
    
        try {    
            // Establish the connection.    
               
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");    
            con = DriverManager.getConnection(url);    
              
    
             // Create and execute an SQL statement that returns some data.     
            stmt = con.createStatement();    
            rs = stmt.executeQuery("select sno,sname,ssex from student ");    
    
            // Iterate through the data in the result set and display it.    
            while (rs.next()) {    
                System.out.println(rs.getString(1) + " " + rs.getString(2));    
            }    
        }    
    
        // Handle any errors that may have occurred.    
        catch (Exception e) {    
            e.printStackTrace();    
        }    
    
        finally {    
            if (rs != null)    
                try {    
                    rs.close();    
                } catch (Exception e) {    
                }    
            if (stmt != null)    
                try {    
                    stmt.close();    
                } catch (Exception e) {    
                }    
            if (con != null)    
                try {    
                    con.close();    
                } catch (Exception e) {    
                }    
        }    
    }    
}    