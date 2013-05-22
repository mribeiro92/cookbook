package pt.ulht.es.cookbook.domain;

import java.util.Date;

import org.joda.time.DateTime;

public class Recipe extends Recipe_Base {
    
    public  Recipe(String titulo, String problema, String receita, String autor) {
    	setTitulo(titulo);
    	setProblema(problema);
    	setReceita(receita);
    	setCreationTimestamp(new DateTime());
    	setAutor(autor);
    	setCookbookManager(CookbookManager.getInstance());
    	
    }
    
}
