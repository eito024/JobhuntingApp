package BusinessInfoAdd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinessChangeExcuteServlet
 */
@WebServlet("/BusinessInfoRegistCompViewServlet")
public class BusinessInfoRegistCompViewServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String businessName;  //企業名
		String tellNumber;  //電話番号
		String businessContent;  //事業内容
		String postalcode;  //郵便番号
		String location;  //所在地
		String ludustry;  //業種
		String existence;  //上場の有無
		int receptionistsNumber;  //受付人数
		String homepage;  //ホームページ
		String receiptField;  //求人分野
		int salary2;  //給料2年制
		int salary3;  //給料3年制
		int salary4;  //給料4年制
		int numberOfemployees;  //従業員数
		String humanresourcesdepartmentname;  //人事部氏名
		String humanresourcesdepartmntmailaddress;  //人事部メールアドレス
		String severancepay;  //退職金の有無
		String overtimepay;  //残業代の扱い
		String qualificationallownce;  //資格手当の有無
		String holiday;  //休日
		String zip32;  //郵便番号の前半
		String zip31; //郵便番号の後半
		String pref31; //所在地の前半（都道府県）
		String addr31; //所在地の後半
		String value;  //ラジオボタンの判定用

		try {
			System.out.println(request.getParameter("receptionistsNumber"));  //受付人数
			businessName = request.getParameter("businessName");  //企業名
			tellNumber = request.getParameter("tel");  //電話番号
			businessContent = request.getParameter("businessContent");  //事業内容
			zip31 = request.getParameter("zip31");  //郵便番号の前半
			zip32 = request.getParameter("zip32");  //郵便番号の後半
			postalcode = zip31 + "-" + zip32;  //郵便番号
			pref31 = request.getParameter("pref31");  //所在地の前半
			addr31 = request.getParameter("addr31");  //所在地の後半
			location = pref31 + addr31;  //所在地
			ludustry = request.getParameter("job");  //業種
			value = request.getParameter("existence");  //上場の有無
			if(value.equals("0")) {
				existence = "無";
			}else {
				existence = "有";
			}
			receptionistsNumber = Integer.parseInt(request.getParameter("receptionistsNumber"));  //受付人数
			homepage = request.getParameter("homepage");  //ホームページ
			receiptField = request.getParameter("receiptField");  //求人分野
			salary2 = Integer.parseInt(request.getParameter("salary2"));  //給料2年制
			salary3 = Integer.parseInt(request.getParameter("salary3"));  //給料3年制
			salary4 = Integer.parseInt(request.getParameter("salary4"));  //給料4年制
			numberOfemployees = Integer.parseInt(request.getParameter("numberOfemployees"));  //従業員数
			humanresourcesdepartmentname = request.getParameter("humanresourcesdepartmntname");  //人事部氏名
			humanresourcesdepartmntmailaddress = request.getParameter("humanresourcesdepartmntmailaddress");  //人事部メールアドレス
			value = request.getParameter("severancepay");  //退職金の有無
			if(value.equals("0")) {
				severancepay = "無";
			}else {
				severancepay = "有";
			}
			value = request.getParameter("overtimepay");  //残業代の扱い
			if(value.equals("0")) {
				overtimepay = "その都度";
			}else {
				overtimepay = "みなし残業";
			}
			value = request.getParameter("qualificationallownce");  //資格手当の有無
			if(value.equals("0")) {
				qualificationallownce = "無";
			}else {
				qualificationallownce = "有";
			}
			value = request.getParameter("holiday");  //給料2年制休日
			if(value.equals("土")&&value.equals("日・祝")) {
				holiday = "完全週休二日制";
			}else {
				holiday = "週休二日制";
			}
            //上記、各変数にBusinessAdd.htmlからの値を代入
			
			BusinessRecordBean bubean = new BusinessRecordBean();
			bubean.setBusinessName(businessName);
			bubean.setTellNumber(tellNumber);
			bubean.setBusinessContent(businessContent);
			bubean.setPostalcode(postalcode);
			bubean.setLocation(location);
			bubean.setLudustry(ludustry);
			bubean.setExistence(existence);
			bubean.setReceptionistsNumber(receptionistsNumber);
			bubean.setHomepage(homepage);
			bubean.setReceiptField(receiptField);
			bubean.setSalary2(salary2);
			bubean.setSalary3(salary3);
			bubean.setSalary4(salary4);
			bubean.setNumberOfemployees(numberOfemployees);
			bubean.setHumanresourcesdepartmntname(humanresourcesdepartmentname);
			bubean.setHumanresourcesdepartmntmailaddress(humanresourcesdepartmntmailaddress);
			bubean.setSeverancepay(severancepay);
			bubean.setOvertimepay(overtimepay);
			bubean.setQualificationallownce(qualificationallownce);
			bubean.setHoliday(holiday);

			BusinessDAO dao = new BusinessDAO();

			dao.insertRecord(bubean);
			
			request.getRequestDispatcher("/BusinessAddComp.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}