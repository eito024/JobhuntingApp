package businessInfoChange;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BusinessInfoChangeServlet
 */
@WebServlet("/BusinessInfoChangeServlet")
public class BusinessInfoChangeServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BusinessInfoChangeRecordBean bubean;
		BusinessInfoChangeDao dao = new BusinessInfoChangeDao();

		int businessNumber;

		try {

			businessNumber = Integer.parseInt(request.getParameter("name"));

			bubean = dao.getBusinessInfoChangeRecordArray(businessNumber);
			
			// bubeanがnullかどうか
			if (bubean != null) {
				// bubeanにrecordが入ってる

				// sessionを生成
				HttpSession session = request.getSession();

				// sessionにrecordをセットする
				session.setAttribute("record", bubean);

				// .jspに画面遷移する
				getServletContext().getRequestDispatcher("/BusinessChange.jsp")
						.forward(request, response);
			

			} else {
				// bubeanの値がnull
				// 遷移前のページに戻るようにする

				getServletContext().getRequestDispatcher("/");

			}

		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}

/*
 * 変数名は小文字
 *
 *
 *
 * */