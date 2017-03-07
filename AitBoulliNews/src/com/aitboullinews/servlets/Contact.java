package com.aitboullinews.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aitboullinews.beans.ContactBean;
import com.aitboullinews.forms.ContactForm;

@WebServlet("/Contact")
public class Contact extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private static final String ATT_CONTACT = "contact";
	private static final String ATT_FORM = "form";
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
		/* Préparation de l'objet formulaire */

        ContactForm form = new ContactForm();

        

        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */

        ContactBean contact = form.inscrireContact( request );

        

        /* Stockage du formulaire et du bean dans l'objet request */

        request.setAttribute( ATT_FORM, form );

        request.setAttribute( ATT_CONTACT, contact );

        

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );

    }
		
	
}

