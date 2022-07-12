package businessInfoChange;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BusinessInfoChangeDao extends DAOBase {

	private Statement stmt;

	public BusinessInfoChangeRecordBean getBusinessInfoChangeRecordArray(int businessNumber) throws SQLException {

		BusinessInfoChangeRecordBean record = new BusinessInfoChangeRecordBean();

		try {
			this.open();
			stmt = con.createStatement();
			String sql = "SELECT * FROM business WHERE BUSINESSNO =" + businessNumber + ";";

			ResultSet rs = stmt.executeQuery(sql);

			rs.next();
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
			record.setSalary2(rs.getInt("SALARY2"));
			record.setSalary3(rs.getInt("SALARY3"));
			record.setSalary4(rs.getInt("SALARY4"));
			record.setNumberOfemployees(rs.getInt("NUMBEROFEMPLOYEES"));
			record.setHumanresourcesdepartmntname(rs.getString("HUMANRESOURCESDEPARTMENTNAME"));
			record.setHumanresourcesdepartmntmailaddress(rs.getString("HUMANRESOURCESDEPARTMENTMAILADDRESS"));
			record.setSeverancepay(rs.getString("SEVERANCEPAY"));
			record.setOvertimepay(rs.getString("OVERTIMEPAY"));
			record.setQualificationallownce(rs.getString("QUALIFICATIONALLOWNCE"));
			record.setHoliday(rs.getString("HOLIDAY"));

			return record;

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			this.close(stmt);
		}

		return null;

	}
}
