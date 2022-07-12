package businessInfoDelete;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class BusinessInfoListDAO extends DAOBase {

  private Statement stmt;


  public BusinessInfoArrayBean select() throws SQLException {
    
   
    
    BusinessInfoArrayBean BIAB = new BusinessInfoArrayBean();
    
    try {
      this.open();
      stmt = con.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT * FROM business");

      while (rs.next()) {
        BusinessListSearchRecordBean record = new BusinessListSearchRecordBean();
        record.setBusinessName(rs.getString("BUSINESSNAME"));
        BIAB.addBusinessInfoRecord(record);
      }
      
    } catch (Exception e) {
      e.printStackTrace();
      
    } finally {
      this.close(stmt);
    }
    
    return BIAB;
    
  }
}