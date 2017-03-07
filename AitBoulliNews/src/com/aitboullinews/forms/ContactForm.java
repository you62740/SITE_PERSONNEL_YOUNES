package com.aitboullinews.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.aitboullinews.beans.ContactBean;

public class ContactForm {

	/**1**/
	public static final String CHAMP_NOM = "nom";
    public static final String CHAMP_PRENOM = "prenom";
	public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_MESSAGE = "message";
  
    /**2**/
    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();

    
	public String getResultat() {
		return resultat;
	}

	public Map<String, String> getErreurs() {
		return erreurs;
	}
	
	/****3*/
	
	public ContactBean inscrireContact( HttpServletRequest request){
		//méthode qui retourne un objet de type ContactBean et qui prend comme param la requête
		
		
		String nom = getValeurChamp( request,CHAMP_NOM );
        String prenom = getValeurChamp( request, CHAMP_PRENOM );
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String message = getValeurChamp( request,CHAMP_MESSAGE );
        
        
        ContactBean contact= new ContactBean();
        
        try {
        	validationNom( nom );
        	
        } 
        catch (Exception e) {
            setErreur( CHAMP_NOM, e.getMessage() );        }
        //**important*/
        contact.setNom(nom);

        try {
        validationPrenom( prenom );
    	
        } catch (Exception e) {
        	setErreur( CHAMP_PRENOM, e.getMessage() );        }
        
        contact.setPrenom(prenom);

		try {
		    validationEmail( email );
			
		} catch (Exception e) {
			setErreur( CHAMP_EMAIL, e.getMessage() );        }
		
		contact.setEmail(email);

		try {
		    validationMessage( message );
			
		} catch (Exception e) {
			setErreur( CHAMP_MESSAGE, e.getMessage() ); } 
		
		contact.setMessage(message);
		
		
		if ( erreurs.isEmpty() ) {

	        resultat = "Succès de l'inscription.";

	    } else {

	        resultat = "Échec de l'inscription.";

	    }

/**retourne le contact**/
	    return contact;

 
	}
	
	/*4**/
	
	private void validationMessage(String message) throws Exception{
		if ( message != null && message.trim().length() < 10 ) {

	        throw new Exception( "Le Message doit contenir au moins 10 caractères." );
	}
	}


	private void validationEmail(String email) throws Exception {
		 if ( email != null && email.trim().length() != 0 ) {

		        if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {

		            throw new Exception( "Merci de saisir une adresse mail valide." );

		        }

		    } else {

		        throw new Exception( "Merci de saisir une adresse mail." );

		    }
	}


	private void validationPrenom(String prenom) throws Exception{
		if ( prenom != null && prenom.trim().length() < 3 ) {

	        throw new Exception( "Le prénom d'utilisateur doit contenir au moins 3 caractères." );}
	}


	private void validationNom(String nom)  throws Exception{
		if ( nom != null && nom.trim().length() < 3 ) {

	        throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caractères." );
	}

	}
	
	/*

	 * Ajoute un warning correspondant au champ spécifié à la map des erreurs.

	 */

	private void setErreur( String champ, String warning ) {

	    erreurs.put( champ, warning );

	}


	/*

	 * Méthode utilitaire qui retourne null si un champ est vide, et son contenu

	 * sinon.

	 */

	private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {

	    String valeur = request.getParameter( nomChamp );

	    if ( valeur == null || valeur.trim().length() == 0 ) {

	        return null;

	    } else {

	        return valeur.trim();

	    }

	}
	

}
