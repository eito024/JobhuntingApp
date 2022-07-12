package BusinessInfoAdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DAOBase {

	Connection con;
	Statement stmt;
	String driverName = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jobhunting_db?serverTimezoneJST";
	String userID = "root";
	String pass = "mysql";
	String sql;
	protected void open() throws SQLException {
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url,userID,pass);

		}catch(ClassNotFoundException e) {
			
			e.printStackTrace();

		}catch(SQLException e) {
			
			e.printStackTrace();

		}

	}
	protected void close(Statement stmt) {

		try {
			if(stmt != null) {
				stmt.close();
			}
			if(con != null) {
				con.close();
			}
		}catch(SQLException e) {


		}
	}
}