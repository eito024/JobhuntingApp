package businessInfoDelete;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/BusinessInfoDeleteListServlet")
public class BusinessInfoDeleteListServlet extends HttpServlet {


  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    BusinessInfoArrayBean bubean = null;
    BusinessDeleteDao DAO = new BusinessDeleteDao();

    int businessNumber;


    try {

    	String number = request.getParameter("name");
    	System.out.println(number);
    	businessNumber = Integer.parseInt(number);
    	DAO.getBusinessInfoRecordArray(businessNumber);

      HttpSession session = request.getSession();
      session.setAttribute("bubean", businessNumber);
      getServletContext().getRequestDispatcher("/BusinessDeleteComp.jsp").forward(request, response);

    } catch(Exception e) {
    	e.printStackTrace();
    }

  }
}

