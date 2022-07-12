package BusinessInfoAdd;

import java.io.Serializable;

public class BusinessRecordBean implements Serializable{

	private int businessNumber;  //企業番号
	private String businessName;  //企業名
    private String tellNumber;  //電話番号
    private String businessContent;  //事業内容
    private String postalcode;  //郵便番号
    private String location;  //所在地
    private String ludustry;  //業種
    private String existence;  //上場の有無
    private int receptionistsNumber;  //受付人数
    private String homepage;  //ホームページ
    private String receiptField;  //求人分野
    private int salary2;  //給料2年制
    private int salary3;  //給料3年制
    private int salary4;  //給料4年制
    private int numberOfemployees;  //従業員数
    private String humanresourcesdepartmentname;  //人事部氏名
    private String humanresourcesdepartmentmailaddress;  //人事部メールアドレス
    private String severancepay;  //退職金の有無
    private String overtimepay;  //残業代の扱い
    private String qualificationallownce;  //資格手当の有無
    private String holiday;  //休日


    public int getBusinessNumber() {
    	return businessNumber;  //登録されている企業番号を返す
    }
    public void setBusinessNumber(int businessNumber) {
    	this.businessNumber = businessNumber;
    }
    public String getBusinessName() {
    	return businessName;  //登録されている企業名を返す
    }
    public void setBusinessName(String businessName) {
    	this.businessName = businessName;
    }
    public String getTellNumber() {
    	return tellNumber;  //登録されている電話番号を返す
    }
    public void setTellNumber(String tellNumber) {
    	this.tellNumber = tellNumber;
    }
    public String getBusinessContent() {
    	return businessContent;  //登録されている事業内容を返す
    }
    public void setBusinessContent(String businessContent) {
    	this.businessContent = businessContent;
    }
    public String getPostalcode() {
    	return postalcode;  //登録されている郵便番号を返す
    }
    public void setPostalcode(String postalcode) {
    	this.postalcode = postalcode;
    }
    public String getLocation() {
    	return location;  //登録されている所在地を返す
    }
    public void setLocation(String location) {
    	this.location = location;
    }
    public String getLudustry() {
    	return ludustry;  //登録されている業種を返す
    }
    public void setLudustry(String ludustry) {
    	this.ludustry = ludustry;  
    }
    public String getExistence() {
    	return existence;  //登録されている上場の有無を返す
    }
    public void setExistence(String existence) {
    	this.existence = existence;
    }
    public int getReceptionistsNumber() {
    	return receptionistsNumber;  //登録されている受付人数を返す
    }
    public void setReceptionistsNumber(int receptionistsNumber) {
    	this.receptionistsNumber = receptionistsNumber;
    }
    public String getHomepage() {
    	return homepage;  //登録されているホームページを返す
    }
    public void setHomepage(String homepage) {
    	this.homepage = homepage;
    }
    public String getReceiptField() {
    	return receiptField;  //登録されている求人分野を返す
    }
    public void setReceiptField(String receiptField) {
    	this.receiptField = receiptField;
    }
    public int getSalary2() {
    	return salary2;  //登録されている給料2年制を返す
    }
    public void setSalary2(int salary2) {
    	this.salary2 = salary2;
    }
    public int getSalary3() {
    	return salary3;  //登録されている給料3年制を返す
    }
    public void setSalary3(int salary3) {
    	this.salary3 = salary3;
    }
    public int getSalary4() {
    	return salary4;  //登録されている給料4年制を返す
    }
    public void setSalary4(int salary4) {
    	this.salary4 = salary4;
    }
    public int getNumberOfemployees() {
    	return numberOfemployees;  //登録されている従業員数を返す
    }
    public void setNumberOfemployees(int numberOfemployees) {
    	this.numberOfemployees = numberOfemployees;
    }
    public String getHumanresourcesdepartmntname() {
    	return humanresourcesdepartmentname;  //登録されている人事部氏名を返す
    }
    public void setHumanresourcesdepartmntname(String humanresourcesdepartmntname) {
    	this.humanresourcesdepartmentname = humanresourcesdepartmntname;
    }
    public String getHumanresourcesdepartmntmailaddress() {
    	return humanresourcesdepartmentmailaddress;  //登録されている人事部メールアドレスを返す
    }
    public void setHumanresourcesdepartmntmailaddress(String humanresourcesdepartmntmailaddress) {
    	this.humanresourcesdepartmentmailaddress = humanresourcesdepartmntmailaddress;
    }
    public String getSeverancepay() {
    	return severancepay;  //登録されている退職金の有無を返す
    }
    public void setSeverancepay(String severancepay) {
    	this.severancepay = severancepay;
    }
    public String getOvertimepay() {
    	return overtimepay;  //登録されている残業代の扱いを返す
    }
    public void setOvertimepay(String overtimepay) {
    	this.overtimepay = overtimepay;
    }
    public String getQualificationallownce() {
    	return qualificationallownce;  //登録されている資格手当の有無を返す
    }
    public void setQualificationallownce(String qualificationallownce) {
    	this.qualificationallownce = qualificationallownce;
    }
    public String getHoliday() {
    	return holiday;  //登録されている休日を返す
    }
    public void setHoliday(String holiday) {
    	this.holiday = holiday;
    }
}
