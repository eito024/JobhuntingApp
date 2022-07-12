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
@WebServlet("/AdminBusinessListSearchFreewordServlet")
public class AdminBusinessListSearchFreewordServlet extends HttpServlet {

	private BusinessListSearchInfoArray BLSIA;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)  {
		String KeyWord="";
		try {
			KeyWord = request.getParameter("keyword");
			BusinessListSearchDao dao = new BusinessListSearchDao();
			BLSIA = dao.getBusinessListSearchInfoArray(KeyWord);
			HttpSession session = request.getSession();
			session.setAttribute("BLSIA", BLSIA);
			getServletContext().getRequestDispatcher("/AdminLoginBusinessList.jsp").forward(request,response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
