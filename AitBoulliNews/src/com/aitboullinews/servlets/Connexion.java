package com.aitboullinews.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aitboullinews.beans.Utilisateur;
import com.aitboullinews.forms.ConnexionForm;



@WebServlet("/Connexion")
public class Connexion extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	/**
	 * 
	 */
	public Connexion() {
		// TODO Auto-generated constructor stub
	}
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher( "/WEB-INF/connexion.jsp" ).forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ConnexionForm form= new ConnexionForm();
		
		Utilisateur utilisateur =form.connecterUtilisateur(request);
		
		/* Création ou récupération de la session */

		HttpSession session = request.getSession();


		/* Mise en session de l'objet*/
		session.setAttribute( "sessionUtilisateur", utilisateur );
		
		request.setAttribute( "form", form );

        request.setAttribute( "utilisateur", utilisateur );
        
        this.getServletContext().getRequestDispatcher( "/WEB-INF/connexion.jsp" ).forward( request, response );
		
	}

    
		

}
