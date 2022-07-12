package businessInfoChange;

public class BusinessChangeExcuteDao extends DAOBase {


	public void updateRecord(BusinessInfoChangeRecordBean bubean){

		int bunum = bubean.getBusinessNumber();
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


		String sql = "UPDATE  business SET "
				+"BUSINESSNAME=\'" + name + "\',"
				+"TELLNUMBER=\'" + telnum +"\',"
				+"BUSINESSCONTENT=\'" + content +"\',"
				+"POSTALCODE=\'" + postalcode + "\',"
				+"LOCATION=\'" + location + "\',"
				+"LUDUSTRY=\'" + ludustry +"\',"
				+"EXISTENCE=\'" +existence +"\',"
				+"RECEPTIONISTSNUMBER=\'" + receiptionnum +"\',"
				+"HOMEPAGE=\'" + homepage +"\',"
				+"RECEIPTFIELD=\'" + receiptfield +"\',"
				+"SALARY2=\'" + salary2 +"\',"
				+"SALARY3=\'" + salary3 +"\',"
				+"SALARY4=\'" + salary4 +"\',"
				+"SEVERANCEPAY=\'"+ severancepay +"\',"
				+"NUMBEROFEMPLOYEES=\'"+ numofemployees + "\',"
				+"HUMANRESOURCESDEPARTMENTNAME=\'"+ humandepartname + "\',"
				+"HUMANRESOURCESDEPARTMENTMAILADDRESS=\'" + humandepartmail +"\',"
				+"OVERTIMEPAY=\'"+ overtimepay +"\',"
				+"QUALIFICATIONALLOWNCE=\'"+ ownce +"\',"
				+"HOLIDAY=\'" + holiday +"\' WHERE BUSINESSNO =" + bunum + ";";
		System.out.println(sql);

		try {
			this.open();
			stmt = con.createStatement();

			stmt.executeUpdate(sql);
		}catch (Exception e) {
			e.printStackTrace();

		} finally {
			this.close(stmt);
		}



	}
}