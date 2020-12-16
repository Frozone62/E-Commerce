import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjoutArticle
 */
@WebServlet("/AjoutArticle")
public class AjoutArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/jsp/AjoutArticle.jsp");

		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String ReferenceArticle = request.getParameter("ReferenceArticle");
		String LibelleArticle = request.getParameter("LibelleArticle");
		String PrixHTArticle = request.getParameter("PrixHTArticle");
		String TauxTVAArticle = request.getParameter("TauxTVAArticle");
		
		Integer CodeBarre = Integer.parseInt(request.getParameter("CodeBarre"));
		
		Article leArticle = new Article();
		leArticle.setArticle(CodeBarre,ReferenceArticle, LibelleArticle, PrixHTArticle, TauxTVAArticle);
		
		response.sendRedirect(request.getContextPath() + "/Index");

	}
}
