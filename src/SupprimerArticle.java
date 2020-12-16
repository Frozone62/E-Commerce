

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SupprimerArticle
 */
@WebServlet("/SupprimerArticle")
public class SupprimerArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupprimerArticle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/jsp/Supprimer.jsp");
		Article leArticle = new Article();
		
		List<String> listeArticle = Article.getLeArticle(Long.parseLong(request.getParameter("codeBarre")));
		request.setAttribute("LibelleArticle", listeArticle.get(1));
        request.setAttribute("ReferenceArticle", listeArticle.get(0));
        request.setAttribute("PrixHTArticle", listeArticle.get(2));
        request.setAttribute("TauxTVAArticle", listeArticle.get(3));
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Long CodeBarre = Long.parseLong(request.getParameter("codeBarre"));
		
		Article leArticle = new Article();
		
		Article.Article.remove(CodeBarre);

		System.out.println(CodeBarre);
		
		response.sendRedirect(request.getContextPath() + "/Index");

	}

}
