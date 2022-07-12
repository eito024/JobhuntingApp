package businessInfoDelete;

import java.sql.SQLException;
import java.sql.Statement;


public class BusinessDeleteDao extends DAOBase {

	 private Statement stmt;


	  public BusinessInfoArrayBean getBusinessInfoRecordArray(int businessNumber)throws SQLException {



	    BusinessInfoArrayBean BIAB = new BusinessInfoArrayBean();

	    try {
	      this.open();
	      stmt = con.createStatement();
	      String sql = "DELETE FROM business "+" WHERE BUSINESSNO ="+ businessNumber;
	      System.out.println(sql);

	      
	      stmt.executeUpdate(sql);


	    } catch (Exception e) {
	      e.printStackTrace();

	    } finally {
	      this.close(stmt);
	    }

	    return BIAB;

	  }




}
