package pt.ulht.es.cookbook.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ist.fenixframework.pstm.AbstractDomainObject;
import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;
import pt.ulht.es.cookbook.domain.Tag;

@Controller
public class RecipeController {
  
    @RequestMapping(method=RequestMethod.GET, value="/recipes")
    public String listRecipes(Model model) {
    	Set<Recipe> recipes =CookbookManager.getInstance().getRecipeSet();
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
    	String autor = params.get("auto"); 
    	String dific = params.get("dif"); 
    	String[] tag1 = params.get("tag1").split(";");
    	
    Recipe recipe=new Recipe(titulo, problema, receita, autor, dific);
    for(String tag : tag1){
    	recipe.addTag(new Tag(tag));
    }
    return "redirect:/recipes/"+recipe.getExternalId();
    }
    
    @RequestMapping(method=RequestMethod.POST, value="/recipes/{id}")
    public String editRecipe(@RequestParam Map<String,String> params, @PathVariable("id") String id) {
    	
    	String titulo = params.get("tit");
    	String problema = params.get("prob");
    	String receita = params.get("rec");    	
    	String autor = params.get("auto"); 
    	String dific = params.get("dif"); 
    	String[] tag1 = params.get("tag1").split(";");
    	
    	Recipe recipe=AbstractDomainObject.fromExternalId(id);
    	recipe.edit(titulo, problema, receita, autor, dific);


    return "redirect:/recipes/"+recipe.getExternalId();
    }

	@RequestMapping(method=RequestMethod.GET, value="/recipes/{id}")
    public String showRecipe(Model model, @PathVariable String id) {

    	Recipe recipe=AbstractDomainObject.fromExternalId(id);
    	model.addAttribute("recipes", recipe);
    	if(recipe != null){
	    
	    	return "detailedRecipe";
    	}else{
    		return "recipeNotFound";
    	}
    }
         
    
	@RequestMapping(method=RequestMethod.GET, value="/recipes/{id}/delete")
    public String deleteRecipe(@PathVariable("id") String id) {
    	Recipe r=AbstractDomainObject.fromExternalId(id);
        r.delete();

		return "redirect:/recipes";
    }
	
	
	@RequestMapping("/recipes/{id}/edit")
    public String showRecipeEditionForm(Model model, @PathVariable String id) {

    	Recipe recipe=AbstractDomainObject.fromExternalId(id);
    	model.addAttribute("recipes", recipe);
    	if(recipe != null){
	    
	    	return "editingRecipe";
    	}else{
    		return "pageNotFound";
    	}
    }
	
	

    
}