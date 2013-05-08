package pt.ulht.es.cookbook.domain;

import java.util.Date;

public class Recipe {

	private String titulo, problema, receita, id;
	
	//private Date datacriacao;
	
	public Recipe(String titulo, String problema, String receita /*, Date datacriacao*/) {
		
		this.titulo=titulo;
		this.problema=problema;
		this.receita=receita;		
		//this.datacriacao=datacriacao;
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
