package businessInfoSearch;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class BusinessListSearchDao extends DAOBase {

	private Statement stmt;
	BusinessListSearchInfoArray BLSIA = new BusinessListSearchInfoArray();

	String bun;
	String Holiday;
	public BusinessListSearchInfoArray getBusinessListSearchInfoArray(String selectLocation,String selectLudustry,String selectExistence,String selectReceiptfield,String selectseverancePay,String selectovertimePay,String selectqualificationAllownce,String selectHoliday,String sort,String order) throws SQLException  {
		
		if(order.equals("0")) {
			if(sort.equals("00")) {
				bun = "";
			}else if(sort.equals("01")) {
				bun = "ORDER BY SALARY2 DESC";
			}else if(sort.equals("02")){
				bun = "ORDER BY SALARY3 DESC";
			}else if(sort.equals("03")) {
				bun = "ORDER BY SALARY4 DESC";
			}else if(sort.equals("04")) {
				bun = "ORDER BY BUSINESSNO DESC";
			}else if(sort.equals("05")) {
				bun = "ORDER BY RECEPTIONISTSNUMBER DESC";
			}else {	
			}
		}else {
			if(sort.equals("00")) {
				bun = "";
			}else if(sort.equals("01")) {
				bun = "ORDER BY SALARY2 ASC";
			}else if(sort.equals("02")){
				bun = "ORDER BY SALARY3 ASC";
			}else if(sort.equals("03")) {
				bun = "ORDER BY SALARY4 ASC";
			}else if(sort.equals("04")) {
				bun = "ORDER BY BUSINESSNO ASC";
			}else if(sort.equals("05")) {
				bun = "ORDER BY RECEPTIONISTSNUMBER ASC";
			}else {	
			}
		}
		if(selectHoliday == "") {
			Holiday = "HOLIDAY LIKE '%" + selectHoliday + "%'";
		}else {
			Holiday = "HOLIDAY LIKE '" + selectHoliday + "'";
		}
		
	
		this.open();
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM business WHERE LOCATION LIKE '%" + selectLocation
					 + "%' AND LUDUSTRY LIKE'%" + selectLudustry
					 + "%' AND EXISTENCE LIKE'%" + selectExistence
					 + "%' AND RECEIPTFIELD LIKE'%" + selectReceiptfield
					 + "%' AND SEVERANCEPAY LIKE'%" + selectseverancePay
					 + "%' AND OVERTIMEPAY LIKE'%" + selectovertimePay
					 + "%' AND QUALIFICATIONALLOWNCE LIKE'%" + selectqualificationAllownce
					 + "%' AND " + Holiday + bun);
			while(rs.next()) {
				BusinessListSearchRecordBean record = new BusinessListSearchRecordBean();
				 record.setBusinessNumber(rs.getInt("BUSINESSNO"));
				 record.setBusinessName(rs.getString("BUSINESSNAME"));
				 record.setTellNumber(rs.getString("TELLNUMBER"));
				 record.setBusinessContent(rs.getString("BUSINESSCONTENT"));
				 record.setPostalcode(rs.getString("POSTALCODE"));
				 record.setLocation(rs.getString("LOCATION"));
				 record.setLudustry(rs.getString("LUDUSTRY"));
				 record.setExistence(rs.getString("EXISTENCE"));
				 record.setReceptionistsNumber(rs.getInt("RECEPTIONISTSNUMBER"));
				 record.setHomepage(rs.getString("HOMEPAGE"));
				 record.setReceiptField(rs.getString("RECEIPTFIELD"));
				 record.setsalary2(rs.getInt("SALARY2"));
				 record.setsalary3(rs.getInt("SALARY3"));
				 record.setsalary4(rs.getInt("SALARY4"));
				 record.setnumberOfemployees(rs.getInt("NUMBEROFEMPLOYEES"));
				 record.sethumanresourcesdepartmntname(rs.getString("HUMANRESOURCESDEPARTMENTNAME"));
				 record.sethumanresourcesdepartmntmailaddress(rs.getString("HUMANRESOURCESDEPARTMENTMAILADDRESS"));
				 record.setseverancepay(rs.getString("SEVERANCEPAY"));
				 record.setovertimepay(rs.getString("OVERTIMEPAY"));
				 record.setqualificationallownce(rs.getString("QUALIFICATIONALLOWNCE"));
				 record.setholiday(rs.getString("HOLIDAY"));
				 BLSIA.addBusinessListSearchRecord(record);
				}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			this.close(stmt);
		}
		return BLSIA;
	}
	public BusinessListSearchInfoArray getBusinessListSearchInfoArray(String KeyWord) throws SQLException  {
		this.open();
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM business WHERE BUSINESSNAME LIKE '%" + KeyWord
					 + "%' OR LOCATION LIKE '%" + KeyWord
					 + "%' OR LUDUSTRY LIKE '%" +KeyWord
					 + "%' OR BUSINESSCONTENT LIKE '%" + KeyWord
					 + "%' OR RECEIPTFIELD LIKE '%" + KeyWord+ "%'");
			while(rs.next()) {
				BusinessListSearchRecordBean record = new BusinessListSearchRecordBean();
				 record.setBusinessNumber(rs.getInt("BUSINESSNO"));
				 record.setBusinessName(rs.getString("BUSINESSNAME"));
				 record.setTellNumber(rs.getString("TELLNUMBER"));
				 record.setBusinessContent(rs.getString("BUSINESSCONTENT"));
				 record.setPostalcode(rs.getString("POSTALCODE"));
				 record.setLocation(rs.getString("LOCATION"));
				 record.setLudustry(rs.getString("LUDUSTRY"));
				 record.setExistence(rs.getString("EXISTENCE"));
				 record.setReceptionistsNumber(rs.getInt("RECEPTIONISTSNUMBER"));
				 record.setHomepage(rs.getString("HOMEPAGE"));
				 record.setReceiptField(rs.getString("RECEIPTFIELD"));
				 record.setsalary2(rs.getInt("SALARY2"));
				 record.setsalary3(rs.getInt("SALARY3"));
				 record.setsalary4(rs.getInt("SALARY4"));
				 record.setnumberOfemployees(rs.getInt("NUMBEROFEMPLOYEES"));
				 record.sethumanresourcesdepartmntname(rs.getString("HUMANRESOURCESDEPARTMENTNAME"));
				 record.sethumanresourcesdepartmntmailaddress(rs.getString("HUMANRESOURCESDEPARTMENTMAILADDRESS"));
				 record.setseverancepay(rs.getString("SEVERANCEPAY"));
				 record.setovertimepay(rs.getString("OVERTIMEPAY"));
				 record.setqualificationallownce(rs.getString("QUALIFICATIONALLOWNCE"));
				 record.setholiday(rs.getString("HOLIDAY"));
				BLSIA.addBusinessListSearchRecord(record);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			this.close(stmt);
		}
		return BLSIA;
	}
}
