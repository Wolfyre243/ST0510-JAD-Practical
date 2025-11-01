package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import queries.User;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/verify")
public class VerifyUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public VerifyUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		final String errRedirectURL = "prac5/part4/login.jsp?errCode=invalidLogin";
		final String successRedirectURL = "prac5/part4/displayMember.jsp";

		// Retrieve login creds
		String loginId = request.getParameter("loginid");
		String password = request.getParameter("password");

		User user = null;
		try {
			user = User.getUserByLoginId(loginId);
		} catch (SQLException e) {
			e.printStackTrace();
      response.sendRedirect(errRedirectURL);
      return;
		}

		if (user == null || !user.checkPassword(password)) {
			response.sendRedirect(errRedirectURL);
		} else {
			session.setAttribute("sessUserId", user.getUserId());
			session.setAttribute("sessLoginId", user.getLoginId());
			session.setAttribute("sessUserRole", user.getUserRole());
			response.sendRedirect(successRedirectURL);
		}
	}
}
