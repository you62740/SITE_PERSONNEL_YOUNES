package com.aitboullinews.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aitboullinews.beans.VisiteurBean;
import com.aitboullinews.forms.VisiteurForm;

@WebServlet("/Visiteur")
public class Visiteur extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	public Visiteur() {
		// TODO Auto-generated constructor stub
	}
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/visiteur.jsp").forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/*instanciation objet VisiteurForm*/
		
		VisiteurForm form=new VisiteurForm();
		
		/* Appel au traitement d ela requête, et récupération du bean en résultant */

        VisiteurBean visiteur = form.inscrireVisiteur( request );
		
        /* Stockage du formulaire et du bean dans l'objet request */

        request.setAttribute( "form", form );

        request.setAttribute( "visiteur", visiteur );

        

        this.getServletContext().getRequestDispatcher( "/WEB-INF/visiteur.jsp" ).forward( request, response );

}

}