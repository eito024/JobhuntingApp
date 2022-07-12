package BusinessInfoCompViewDao;

import java.sql.ResultSet;
import java.sql.Statement;

import BusinessInfoRegistCompView.BusinessInfoArrayBean;
import BusinessInfoRegistCompView.BusinessRecordBean;

//import BusinessInfoRegist.parameter.BusinessParameters;
 
public class BusinessDAO extends DAOBase{
	
	Statement stmt;
	

	public BusinessInfoArrayBean select() {
	    BusinessInfoArrayBean BRB = new BusinessInfoArrayBean();
	    try {
	      Class.forName("com.mysql.jdbc.Driver");
	    }catch(ClassNotFoundException e) {
	      System.out.println("Error:JDBCドライバ読込みエラー");
	        System.exit(0);
	    }
	    
	    try(
	       ResultSet rs = stmt.executeQuery
	       ("INSERT INTO business VALUES ((SELECT MAX(BUSINESSNO)+1 FROM (SELECT * FROM business)B), 'BUSINESSNAME', 'TELLNUMBER', 'BUSINESSCONTENT', 'POSTALCODE', 'LOCATION', 'LUDUSTRY', 'EXISTENCE', 'RECEPTIONISTSNUMBER', 'HOMEPAGE', 'RECEIPTNUMBER', 'RECEIPTFIELD');");
	    		)
	    
	    {
	      while (rs.next()) {
	    	  
	       BusinessRecordBean record = new BusinessRecordBean();

	       record.setBusinessName(rs.getString("BUSINESSNAME"));
	              }
	      
	    } catch (Exception e) {
	    	
	    e.printStackTrace();
	    
	    }
	     return BRB;
		}
}

