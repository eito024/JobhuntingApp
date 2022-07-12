package businessInfoSearch;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class BusinessListSearchServlet
 */
@WebServlet("/UserBusinessListSearchServlet")
public class UserBusinessListSearchServlet extends HttpServlet {

	private BusinessListSearchInfoArray BLSIA;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  {
		String selectLocation = "";
		String selectLudustry = "";
		String selectExistence = "";
		String selectReceiptfield = "";
		String selectseverancePay = "";
		String selectovertimePay = "";
		String selectqualificationAllownce = "";
		String selectHoliday = "";
		String sort = "";
		String order = "";

		try {
			sort = request.getParameter("sort");
			order = request.getParameter("order");
			selectLocation = request.getParameter("selectlocation");
			selectLudustry = request.getParameter("selectludustry");
			selectExistence = request.getParameter("selectexistence");
			selectReceiptfield = request.getParameter("selectreceiptfield");
			selectseverancePay = request.getParameter("selectseverancepay");
			selectovertimePay = request.getParameter("selectovertimepay");
			selectqualificationAllownce = request.getParameter("selectqualificationallownce");
			selectHoliday = request.getParameter("selectholiday");
			BusinessListSearchDao dao = new BusinessListSearchDao();
			BLSIA = dao.getBusinessListSearchInfoArray(selectLocation,selectLudustry,selectExistence,selectReceiptfield,selectseverancePay,selectovertimePay,selectqualificationAllownce,selectHoliday,sort,order);
			HttpSession session = request.getSession();
			session.setAttribute("BLSIA", BLSIA);
			getServletContext().getRequestDispatcher("/UserLoginBusinessList.jsp").forward(request,response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
