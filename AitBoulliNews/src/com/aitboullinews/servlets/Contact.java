package com.aitboullinews.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Contact")
public class Contact extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String CHAMP_NOM = "nom";
    public static final String CHAMP_PRENOM = "prenom";
	public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_MESSAGE = "message";
	private static final String ATT_ERREURS = "erreurs";
	private static final String ATT_RESULTAT = "resultat";
	private static final String VUE = "/WEB-INF/contact.jsp";
	
	/**
	 * 
	 */
	public Contact() {
		// TODO Auto-generated constructor stub
	}
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher( VUE ).forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String resultat;

        Map<String, String> erreurs = new HashMap<String, String>();
		
		/* Récupération des champs du formulaire. */

        String nom = request.getParameter( CHAMP_NOM );
        String prenom = request.getParameter( CHAMP_PRENOM );
        String email = request.getParameter( CHAMP_EMAIL );
        String message = request.getParameter( CHAMP_MESSAGE );
        
        
        try {
        	validationNom( nom );
        	
        } 
        catch (Exception e) {
            erreurs.put( CHAMP_NOM, e.getMessage() );        }

        try {
        validationPrenom( prenom );
    	
        } catch (Exception e) {
        erreurs.put( CHAMP_PRENOM, e.getMessage() );        }

		try {
		    validationEmail( email );
			
		} catch (Exception e) {
		    erreurs.put( CHAMP_EMAIL, e.getMessage() );        }

		try {
		    validationMessage( message );
			
		} catch (Exception e) {
		    erreurs.put( CHAMP_MESSAGE, e.getMessage() ); } 
		

        /* Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty() ) {
            resultat = "Succès de l'inscription.";
        } else {
            resultat = "Échec de l'inscription.";
        }

        /* Stockage du résultat et des messages d'erreur dans l'objet request */
        request.setAttribute( ATT_ERREURS, erreurs );
        request.setAttribute( ATT_RESULTAT, resultat );

        /* Transmission de la paire d'objets request/response à notre JSP */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	
	}



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
	
}
