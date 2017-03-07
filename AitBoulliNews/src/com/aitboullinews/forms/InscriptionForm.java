package com.aitboullinews.forms;

import javax.servlet.http.HttpServletRequest;

import com.aitboullinews.beans.Utilisateur;

public class InscriptionForm {

	public Utilisateur inscrireUtilisateur(HttpServletRequest request){
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");        
		String age = request.getParameter("age");
		String mail = request.getParameter("mail");
		String pseudo = request.getParameter("pseudo");
		String password = request.getParameter("password");
		
		
		
		Utilisateur utilisateur = new Utilisateur();
		
		utilisateur.setNom(nom);
		utilisateur.setPrenom(prenom);
		utilisateur.setAge(age);
		utilisateur.setMail(mail);
		utilisateur.setPseudo(pseudo);
		utilisateur.setPassword(password);
		
		
		
		return utilisateur;
		
	}
}
