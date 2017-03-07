package com.aitboullinews.forms;

import javax.servlet.http.HttpServletRequest;

import com.aitboullinews.beans.VisiteurBean;

public class VisiteurForm {
/* Objet Métier traitement des données envoyées par le client via le formulaire de la jsp*/
	
	
	
	/*Méthode permettant d'inscrire les champs du formulaire comme attributs de l'instance du bean visiteur 
	 * prenant donc en paramètre la requete HTTP
	 * */

	
	
	public VisiteurBean inscrireVisiteur( HttpServletRequest request){
		/*on récupère les données saisies par l'utilisateur via la requête afficher le paramètre dont le champ est....*/
		String name = request.getParameter( "name" );
	    String surname = request.getParameter("surname" );
	    String age_string = request.getParameter("age" );
	    int age;
	    age = Integer.parseInt(age_string);

	    /* on instancie un bean visiteur*/
		VisiteurBean visiteur=new VisiteurBean();
		
		/*on y inscrit les données du formulaire */
		
		visiteur.setName(name);
		visiteur.setSurname(surname);
		visiteur.setAge(age);

		return visiteur;

}
   
}