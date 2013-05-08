package pt.ulht.es.cookbook.domain;

public class Recipe {

	private String titulo, problema, receita, id;
	
	public Recipe(String titulo, String problema, String receita) {
		
		this.titulo=titulo;
		this.problema=problema;
		this.receita=receita;		
	}

	public String getTitulo(){
		return titulo;
	}
	
	public String getProblema(){
		return problema;
	}
	
	public String getReceita(){
		return receita;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}
}
