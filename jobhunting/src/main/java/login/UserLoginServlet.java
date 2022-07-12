package login;
 
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
    }
 
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
 
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    int role = Integer.parseInt(request.getParameter("role"));
 
    UserDao dao = new UserDao();
    UserDto user = dao.findUser(id);
 
    boolean isLogin = (user != null && id.equals(user.getUserid()) && 
        password.equals(user.getPassword()) && role == user.getRole());
    HttpSession session = request.getSession();
    session.setAttribute("isLogin", isLogin);
 
    if (isLogin) {
    	if(role == 1) {
    		request.getRequestDispatcher("/admin.jsp").forward(request, response);
    	}else if(role == 2){
    		request.getRequestDispatcher("/user.jsp").forward(request, response);
    	}else {
    		request.getRequestDispatcher("/error.jsp").forward(request, response);
    	}
    }
    request.getRequestDispatcher("/error.jsp").forward(request, response);
    }
}