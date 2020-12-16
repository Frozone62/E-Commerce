import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class Article {

	public static HashMap<Long,List<String>> Article = new HashMap<>();
	public static final Integer[] tva = { 550, 2000 };
		
	public void setArticle(long codeBarre, String reference, String libelle, String prixHT,String tauxTva) {
		Article.put(codeBarre, Arrays.asList(new String[] {reference,libelle ,prixHT , tauxTva}));
	}
	
	public static HashMap<Long,List<String>> getArticle(){
		return Article;
	}

	public Integer getTauxTva(int tauxTVA) {
		return this.tva[tauxTVA];
	}
}
