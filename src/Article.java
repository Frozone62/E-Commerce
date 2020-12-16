
public class Article {
	
	long codeBarre;
	String reference;
	String libelle;
	Integer prixHT;
	Integer tauxTva;
	
	public static final Integer[] tva = { 550, 2000 };
	
	Article(long codeBarre, String reference, String libelle, Integer prixHT,Integer tauxTva){
		this.codeBarre = codeBarre;
		this.reference = reference;
		this.libelle = libelle;
		this.prixHT = prixHT;
		this.tauxTva =tauxTva;
	}

	public long getCodeBarre() {
		return codeBarre;
	}

	public void setCodeBarre(long codeBarre) {
		this.codeBarre = codeBarre;
	}

	public String getReference() {
		return reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Integer getPrixHT() {
		return prixHT;
	}

	public void setPrixHT(Integer prixHT) {
		this.prixHT = prixHT;
	}

	public Integer getTauxTva() {
		return tauxTva;
	}

	public void setTauxTva(Integer tauxTva) {
		this.tauxTva = tauxTva;
	}
	
	
}
