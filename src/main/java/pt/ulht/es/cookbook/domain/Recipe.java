package pt.ulht.es.cookbook.domain;

import java.util.Date;

public class Recipe {

	private String titulo, problema, receita, id, autor;
	private Date data;
	
	public Recipe(String titulo, String problema, String receita, Date data, String autor) {
		
		this.titulo=titulo;
		this.problema=problema;
		this.receita=receita;
		this.data=data;
		this.autor=autor;
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
	
	public Date getData(){
		return data;
	}
	public void setData(Date data) {
		this.data=data;
	}
	
	public String getAutor() {
		return autor;
	}
	
	public void setAutor(String autor) {
		this.autor=autor;
	}

}
