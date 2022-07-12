package BusinessInfoAdd;

public class BusinessDAO extends DAOBase {

	public void insertRecord(BusinessRecordBean bubean) {

		String name = bubean.getBusinessName();
		String telnum = bubean.getTellNumber();
		String content = bubean.getBusinessContent();
		String postalcode = bubean.getPostalcode();
		String location = bubean.getLocation();
		String ludustry = bubean.getLudustry();
		String existence = bubean.getExistence();
		int receiptionnum = bubean.getReceptionistsNumber();
		String homepage = bubean.getHomepage();
		String receiptfield = bubean.getReceiptField();
		int salary2 = bubean.getSalary2();
		int salary3 = bubean.getSalary3();
		int salary4 = bubean.getSalary4();
		int numofemployees = bubean.getNumberOfemployees();
		String humandepartname = bubean.getHumanresourcesdepartmntname();
		String humandepartmail = bubean.getHumanresourcesdepartmntmailaddress();
		String severancepay = bubean.getSeverancepay();
		String overtimepay = bubean.getOvertimepay();
		String ownce = bubean.getQualificationallownce();
		String holiday = bubean.getHoliday();
		

		/*String sql = "INSERT INTO business VALUES ((SELECT MAX(BUSINESSNO)+1 FROM (SELECT * FROM business)B)," + " BUSINESSNAME='" + name + "'," + "TELLNUMBER='" + telnum + "',"
				+ "BUSINESSCONTENT='" + content + "'," + " POSTALCODE='" + postalcode + "'," + "LOCATION='" + location
				+ "'," + "LUDUSTRY='" + ludustry + "'," + "EXISTENCE='" + existence + "'," + "RECEPTIONISTSNUMBER='"
				+ receiptionnum + "'," + "HOMEPAGE='" + homepage + "'," + "RECEIPTFIELD='" + receiptfield + "',"
				+ "SALARY2='" + salary2 + "'," + "SALARY3='" + salary3 + "'," + "SALARY4='" + salary4 + "',"
				+ "NUMBEROFEMPLOYEES='" + numofemployees + "'," + "HUMANRESOURCESDEPARTMENTNAME='" + humandepartname + "',"
				+ "HUMANRESOURCESDEPARTMENTMAILADDRESS='" + humandepartmail + "'," + "OVERTIMEPAY='" + overtimepay + "'," + "SEVERANCEPAY='" + severancepay
				+ "QUALIFICATIONALLOWNCE='" + ownce + "'," + "HOLIDAY='" + holiday + "';";
				*/
		String sql = "INSERT INTO business VALUES ((SELECT MAX(BUSINESSNO)+1 FROM (SELECT * FROM business)B),"
		+"'" + name + "',"
		+"'" + telnum +"',"
		+"'" + content +"',"
		+"'" + postalcode + "',"
		+"'" + location + "',"
		+"'" + ludustry +"',"
		+"'" +existence +"',"
		+"'" + receiptionnum +"',"
		+"'" + homepage +"',"
		+"'" + receiptfield +"',"
		+"'" + salary2 +"',"
		+"'" + salary3 +"',"
		+"'" + salary4 +"',"
		+"'"+ numofemployees + "',"
		+"'"+ humandepartname + "',"
		+"'" + humandepartmail +"',"
		+"'"+ severancepay +"',"
		+"'"+ overtimepay +"',"
		+"'"+ ownce +"',"
		+"'" + holiday +"');";

		System.out.println(sql);
		
		try {
			this.open();
			System.out.println("2");
			stmt = con.createStatement();
			System.out.println("3");
			stmt.executeUpdate(sql);
			System.out.println("4");
		} catch (Exception e) {
			e.printStackTrace();

		} finally {

			this.close(stmt);
		}

	}
}