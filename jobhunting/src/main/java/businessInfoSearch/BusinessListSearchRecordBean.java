package businessInfoSearch;

import java.io.Serializable;

public class BusinessListSearchRecordBean implements Serializable {
	private int businessNumber;
	private String businessName;
    private String	tellNumber;
    private String businessContent;
    private String postalcode;
    private String location;
    private String ludustry;
    private String existence;
    private int	receptionistsNumber;
    private String homepage;
    private String receiptField;
    private int salary2;
    private int salary3;
    private int salary4;
    private int numberOfemployees;
    private String humanresourcesdepartmntname;
    private String humanresourcesdepartmntmailaddress;
    private String severancepay;
    private String overtimepay;
    private String qualificationallownce;
    private String holiday;

    public BusinessListSearchRecordBean() {
    }
    
    public void setBusinessNumber(int businessNumber ) {
    	this.businessNumber = businessNumber ;
    }

    public int getBusinessNumber() {
    	return this.businessNumber;
    }

    public void setBusinessName(String businessName ) {
    	this.businessName = businessName ;
    }

    public  String getBusinessName() {
    	return this.businessName;
    }
    public void setTellNumber(String tellNumber ) {
    	this.tellNumber = tellNumber ;
    }

    public  String getTellNumber() {
    	return this.tellNumber;
    }

    public void setBusinessContent(String businessContent ) {
    	this.businessContent = businessContent ;
    }

    public  String getBusinessContent() {
    	return this.businessContent;
    }

    public void setPostalcode(String postalcode ) {
    	this.postalcode = postalcode ;
    }

    public  String getPostalcode() {
    	return this.postalcode;
    }

    public void setLocation(String location ) {
    	this.location = location ;
    }

    public  String getLocation() {
    	return this.location;
    }

    public void setLudustry(String ludustry ) {
    	this.ludustry = ludustry ;
    }

    public  String getLudustry() {
    	return this.ludustry;
    }

    public void setExistence(String existence ) {
    	this.existence = existence ;
    }

    public  String getExistence() {
    	return this.existence;
    }

    public void setReceptionistsNumber(int receptionistsNumber ) {
    	this.receptionistsNumber = receptionistsNumber ;
    }

    public  int getReceptionistsNumber() {
    	return this.receptionistsNumber;
    }

    public void setHomepage(String homepage ) {
    	this.homepage = homepage ;
    }

    public  String getHomepage() {
    	return this.homepage;
    }

    public void setReceiptField(String receiptField ) {
    	this.receiptField = receiptField ;
    }

    public  String getReceiptField() {
    	return this.receiptField;
    }
    public void setsalary2(int salary2 ) {
    	this.salary2 = salary2 ;
    }

    public  int getsalary2() {
    	return this.salary2;
    }

    public void setsalary3(int salary3 ) {
    	this.salary3 = salary3 ;
    }

    public  int getsalary3() {
    	return this.salary3;
    }

    public void setsalary4(int salary4 ) {
    	this.salary4 = salary4;
    }

    public  int getsalary4() {
    	return this.salary4;
    }


    public void setnumberOfemployees(int numberOfemployees ) {
    	this.numberOfemployees = numberOfemployees;
    }

    public  int getnumberOfemployees() {
    	return this.numberOfemployees;
    }

    public void sethumanresourcesdepartmntname(String humanresourcesdepartmntname ) {
    	this.humanresourcesdepartmntname =humanresourcesdepartmntname ;
    }

    public  String gethumanresourcesdepartmntname() {
    	return this.humanresourcesdepartmntname;
    }

    public void sethumanresourcesdepartmntmailaddress(String humanresourcesdepartmntmailaddress ) {
    	this.humanresourcesdepartmntmailaddress = humanresourcesdepartmntmailaddress ;
    }

    public  String gethumanresourcesdepartmntmailaddress() {
    	return this.humanresourcesdepartmntmailaddress;
    }

    public void setseverancepay(String severancepay ) {
    	this.severancepay = severancepay ;
    }

    public  String getseverancepay() {
    	return this.severancepay;
    }

    public void setovertimepay(String overtimepay ) {
    	this.overtimepay = overtimepay ;
    }

    public  String getovertimepay() {
    	return this.overtimepay;
    }

    public void setqualificationallownce(String qualificationallownce ) {
    	this.qualificationallownce = qualificationallownce ;
    }

    public  String getqualificationallownce() {
    	return this.qualificationallownce;
    }

    public void setholiday(String holiday ) {
    	this.holiday = holiday ;
    }

    public  String getholiday() {
    	return this.holiday;
    }
}

