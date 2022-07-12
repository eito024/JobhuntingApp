package businessInfoChange;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusinessChangeExcuteServlet
 */
@WebServlet("/BusinessChangeExcuteServlet")
public class BusinessChangeExcuteServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		int businessNumber;
		String businessName;
		String telNumber;
		String businessContent;
		String postalcode;
		String location;
		String ludustry;
		String existence;
		int receptionistsNumber;
		String homepage;
		String receiptField;
		int salary2;
		int salary3;
		int salary4;
		int numberOfemployees;
		String humanresourcesdepartmentname;
		String humanresourcesdepartmntmailaddress;
		String severancepay;
		String overtimepay;
		String qualificationallownce;
		String holiday;
		String zip32;
		String zip31;
		String pref31;
		String addr31;

		try {
			System.out.println(request.getParameter("receptionistsNumber"));
			businessNumber = Integer.parseInt(request.getParameter("businessNumber"));
			businessName = request.getParameter("businessName");
			telNumber = request.getParameter("tellNumber");
			businessContent = request.getParameter("businessContent");
			postalcode = request.getParameter("postalcode");
			location = request.getParameter("location");
			ludustry = request.getParameter("ludustry");
			existence = request.getParameter("existence");
			receptionistsNumber = Integer.parseInt(request.getParameter("receptionistsNumber"));
			homepage = request.getParameter("homepage");
			receiptField = request.getParameter("receiptField");
			salary2 = Integer.parseInt(request.getParameter("salary2"));
			salary3 = Integer.parseInt(request.getParameter("salary3"));
			salary4 = Integer.parseInt(request.getParameter("salary4"));
			numberOfemployees = Integer.parseInt(request.getParameter("numberOfEmployees"));
			humanresourcesdepartmentname = request.getParameter("humanResourcesDepartmentName");
			humanresourcesdepartmntmailaddress = request.getParameter("humanResourcesDepartmentMailAddress");
			severancepay = request.getParameter("severancePay");
			overtimepay = request.getParameter("overtimePay");
			qualificationallownce = request.getParameter("qualificationAllOwnce");
			holiday = request.getParameter("holiday");

			
			
			BusinessInfoChangeRecordBean bubean = new BusinessInfoChangeRecordBean();
			bubean.setBusinessNumber(businessNumber);
			bubean.setBusinessName(businessName);
			bubean.setTellNumber(telNumber);
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

			BusinessChangeExcuteDao dao = new BusinessChangeExcuteDao();

			dao.updateRecord(bubean);

			getServletContext().getRequestDispatcher("/BusinessChangeComp.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
