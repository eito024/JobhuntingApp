package bookmark;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class BookmarkDao  extends DAOBase{
	private Statement stmt;
	BusinessListSearchInfoArray BLSIA = new BusinessListSearchInfoArray();

	public int add(BusinessListSearchRecordBean record) throws SQLException  { //record
		int ret = 0 ;

		this.open();
		try {
			stmt = con.createStatement();
			ret = stmt.executeUpdate(
					"INSERT INTO bookmark (BUSINESSNO) VALUES ('" + record.getBusinessNumber() +"');");

		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			this.close(stmt);
		}
		return ret;
	}

	public int delete(BusinessListSearchRecordBean record) throws SQLException  {
		int ret = 0 ;

		this.open();
		try {
			stmt = con.createStatement();
			ret = stmt.executeUpdate(
					"DELETE FROM bookmark WHERE BUSINESSNO ='" + record.getBusinessNumber() +"';");

		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			this.close(stmt);
		}
		return ret;
	}

	public BusinessListSearchInfoArray getBusinessListSearchInfoArray() throws SQLException  {
		this.open();
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT DISTINCT bookmark.BUSINESSNO,BUSINESSNAME,TELLNUMBER,BUSINESSCONTENT,POSTALCODE,LOCATION,LUDUSTRY,EXISTENCE,RECEPTIONISTSNUMBER,"
					+ "HOMEPAGE,RECEIPTFIELD,SALARY2,SALARY3,SALARY4,NUMBEROFEMPLOYEES,HUMANRESOURCESDEPARTMENTNAME,HUMANRESOURCESDEPARTMENTMAILADDRESS,SEVERANCEPAY,"
					+ "OVERTIMEPAY,QUALIFICATIONALLOWNCE,SEVERANCEPAY,OVERTIMEPAY,QUALIFICATIONALLOWNCE,HOLIDAY"
					+ " FROM bookmark,business WHERE business.BUSINESSNO = bookmark.BUSINESSNO ORDER BY BUSINESSNO asc");
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
