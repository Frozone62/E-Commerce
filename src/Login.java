

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	RequestDispatcher rd = 
				this.getServletContext()
				.getRequestDispatcher("/jsp/login.jsp");
		
		rd.forward(request, response);
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		if("admin".equals(login) && "admin".equals(password)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("isConnected", true);
			session.setAttribute("role", "ADMIN");	
			response.sendRedirect(request.getContextPath() + "/Index");
		}
		else if("user".equals(login) && "user".equals(password)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("isConnected", true);
			session.setAttribute("role", "USER");
			response.sendRedirect(request.getContextPath() + "/Index");
		}
		else {
			this.doGet(request, response);
		}
	}

}
