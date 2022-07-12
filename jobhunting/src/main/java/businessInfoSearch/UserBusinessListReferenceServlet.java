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
@WebServlet("/UserBusinessListReferenceServlet")
public class UserBusinessListReferenceServlet extends HttpServlet {
	private BusinessListSearchInfoArray BLSIA;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			BusinessDao dao = new BusinessDao();
			BLSIA = dao.getBusinessListSearchInfoArray();
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
