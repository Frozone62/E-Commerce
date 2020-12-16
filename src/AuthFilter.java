

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AuthFilter
 */
@WebFilter(servletNames = {"AjoutArticle", "ModifierArticle","SupprimerArticle"})
public class AuthFilter implements Filter {

   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	   HttpServletRequest req = (HttpServletRequest) request;
	   HttpServletResponse resp = (HttpServletResponse) response;
	   
	   if(req.getRequestURI().equals(req.getContextPath() + "/Login")) {
			chain.doFilter(request, response);
	   }
	   else {
		   HttpSession session = req.getSession();
		   if(session.getAttribute("isConnected") != null && (boolean)session.getAttribute("isConnected") ) {
				chain.doFilter(request, response);
		   }
		   else {
				resp.sendRedirect(req.getContextPath() + "/Login");
		   } 
	   }
	}
}
