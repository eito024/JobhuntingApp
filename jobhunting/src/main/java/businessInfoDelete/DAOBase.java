package businessInfoDelete;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DAOBase {

  Connection con;
  String driverName = "com.mysql.jdbc.Driver";
  String url = "jdbc:mysql://localhost:3306/jobhunting_db?serverTimezoneJST";
  String userID = "root";
  String pass = "mysql";


  protected void open() throws SQLException {
    try {
      Class.forName(driverName);
      con = DriverManager.getConnection(url,userID,pass);

    }catch(ClassNotFoundException e) {
      System.out.print(e);
    }catch(SQLException e) {
      System.out.print(e);
    }catch(Exception e){
      System.out.print(e);
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