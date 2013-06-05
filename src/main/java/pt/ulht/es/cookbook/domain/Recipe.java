package pt.ulht.es.cookbook.domain;

import java.util.Date;

import org.joda.time.DateTime;

public class Recipe extends Recipe_Base {
    
    public  Recipe(String titulo, String problema, String receita, String autor, String dific) {
    	setTitulo(titulo);
    	setProblema(problema);
    	setReceita(receita);
    	setCreationTimestamp(new DateTime());
    	setAutor(autor);
    	setDific(dific);
    	setCookbookManager(CookbookManager.getInstance());
    	
    }

	public void delete() {
	
		for(Tag tag:getTagSet()){
			tag.delete();
		}
		
		setCookbookManager(null);
		super.deleteDomainObject();
	}
	
	

}
