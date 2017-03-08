package com.aitboullinews.forms;

import javax.servlet.http.HttpServletRequest;

import com.aitboullinews.beans.Utilisateur;

public class ConnexionForm {
public Utilisateur connecterUtilisateur(HttpServletRequest request){
		
		String pseudo = request.getParameter("pseudo");
		String password = request.getParameter("password");        
		
		
		Utilisateur utilisateur = new Utilisateur();
		
	
		utilisateur.setPseudo(pseudo);
		utilisateur.setPassword(password);
		
		
		
		return utilisateur;
		
	}
}
