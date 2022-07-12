package login;
 
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
/**
 * Servlet implementation class UserRegServlet
 */
@WebServlet("/UserRegServlet")
public class UserRegServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegServlet() {
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
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String number = request.getParameter("number");
    String password = request.getParameter("password");
    String role = request.getParameter("role");

    System.out.println(id);
    System.out.println(name);
    System.out.println(address);
    UserDao dao = new UserDao();
    UserDto user = dao.findUser(id);
 
    boolean isLogin = (user != null && id.equals(user.getUserid()) && 
        password.equals(user.getPassword()));
    HttpSession session = request.getSession();
    session.setAttribute("isLogin", isLogin);
 
    if (!isLogin) {
        int result = dao.regUser(id, name, address, number, password, role);
        request.setAttribute("username", id);
        request.getRequestDispatcher("/user_reg_success.jsp").forward(request, response);
    } else {
        request.setAttribute("error", "同じIDとパスワードのユーザが既に登録されています。\n再入力してください。");
        request.getRequestDispatcher("/user_regist.jsp").forward(request, response);
    }
 
    }
}