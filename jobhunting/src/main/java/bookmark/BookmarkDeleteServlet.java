package bookmark;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookmarkDeleteServlet
 */
@WebServlet("/BookmarkDeleteServlet")
public class BookmarkDeleteServlet extends HttpServlet {
	private BusinessListSearchInfoArray BLSIA;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		int number = 0;
		try {
			number = Integer.parseInt(request.getParameter("number"));
		}catch(NumberFormatException e) {
			e.printStackTrace();
		}
		BusinessListSearchRecordBean BLSRB = new BusinessListSearchRecordBean();
		BLSRB.setBusinessNumber(number);
		try {
			BookmarkDao dao = new BookmarkDao();
			int ret = dao.delete(BLSRB);//getBusinessListSearchInfoArray(BLSRB);
			HttpSession session = request.getSession();
			session.setAttribute("BLSIA", BLSIA);
			getServletContext().getRequestDispatcher("/BookmarkDeleteComp.jsp").forward(request,response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
