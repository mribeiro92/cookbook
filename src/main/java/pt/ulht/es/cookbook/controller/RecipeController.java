package pt.ulht.es.cookbook.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;

@Controller
public class RecipeController {
  
    @RequestMapping(method=RequestMethod.GET, value="/recipes")
    public String listRecipes(Model model) {
    	Collection<Recipe> recipes=CookbookManager.getRecipes();
        model.addAttribute("recipes", recipes);
        return "listRecipes";
    }
    
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/create")
    public String showRecipeCreationForm() {
    	return "createRecipe";
    }
    
    @RequestMapping(method=RequestMethod.POST, value="/recipes")
    public String createRecipe(@RequestParam Map<String,String> params) {
    	String titulo = params.get("tit");
    	String problema = params.get("prob");
    	String receita = params.get("rec");    	
    
    Recipe recipe=new Recipe(titulo, problema, receita);
    CookbookManager.saveRecipe(recipe);
    return "redirect:/recipes/"+recipe.getId();
    }
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/{id}")
    public String showRecipe(Model model, @PathVariable String id) {

    	Recipe recipe=CookbookManager.getRecipe(id);
    	model.addAttribute("recipes", recipe);
    	if(recipe != null){
	    
	    	return "detailedRecipe";
    	}else{
    		return "recipeNotFound";
    	}
    }
        
    
    
}