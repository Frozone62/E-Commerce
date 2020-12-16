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
	static HashMap<Integer, List<String>> ProduitMap = new HashMap<>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/jsp/AjoutArticle.jsp");

		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ReferenceArticle = request.getParameter("ReferenceArticle");
		String LibelleArticle = request.getParameter("LibelleArticle");
		String PrixHTArticle = request.getParameter("PrixHTArticle");
		Integer TauxTVAArticle = Integer.parseInt(request.getParameter("TauxTVAArticle"));
		Integer TauxTVA; 
		if(TauxTVAArticle == 1) {
			TauxTVA = 550;
		}
		else if(TauxTVAArticle == 2){
			TauxTVA=2000;
		}
		else {
			TauxTVA = 0;
		}
		String TauxTVAString = String.valueOf(TauxTVA);
		Integer CodeBarre = Integer.parseInt(request.getParameter("CodeBarre"));

		ProduitMap.put(CodeBarre,Arrays.asList(new String[] { ReferenceArticle, LibelleArticle, PrixHTArticle, TauxTVAString }));
		request.setAttribute("ProduitMap", ProduitMap);
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/jsp/Index.jsp");
		rd.forward(request, response);

	}

	public static HashMap<Integer, List<String>> getMap() {
		return ProduitMap;
	}
}
