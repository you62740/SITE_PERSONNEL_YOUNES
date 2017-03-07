<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<title>Younes El Ouahmani WebSite</title>
		<link href="./vues/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="./vues/font-awesome/css/font-awesome.min.css">
		
	</head>

	<body>
		<div class="container-fluid">

<!-- NAVIGATION -->
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">  
		       <!-- Barre de navigation pour mobile et tablette -->
		        <div class="navbar-header">   
		          	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
		          	</button>
		          	<a class="navbar-brand" href="#"></a>
		        </div>
			<!-- Menu de Navigation -->

		        <div id="header" class="collapse navbar-collapse">
			        <ul class="nav navbar-nav">
			            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Présentation</a></li>
				        <li><a href="#"><span class="glyphicon glyphicon-briefcase"></span> Parcours </a></li>
			            <li><a href="#"><span class="glyphicon glyphicon-calendar"></span> Evènements</a></li>
			            <li><a href="contact"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
			        </ul>
			
		        </div>
		        
		    </nav>
			</header>
			
			
			<br>
			<br>
			<br>
			<br>
			<br>
			


        <form method="post" action="contact">
		    <p>Formulaire de Contact</p>

            <fieldset>

                <legend>Contact</legend>
                <p>Vous pouvez envoyer un message via ce formulaire.</p>

				<table>
				<tr >
				<td><label for="nom">Nom</label></td>
                <td><input type="text" id="nom" name="nom" value="<c:out value="${contact.nom}"/>" size="20" maxlength="20" /></td>
                <td class="erreur">${form.erreurs['nom']}</td>
                </tr>
                
                <tr >
                <td><label for="prenom">Prénom</label></td>
                <td><input type="text" id="prenom" name="prenom" value="<c:out value="${contact.prenom}"/>" size="20" maxlength="20" /></td>
                <td class="erreur">${form.erreurs['prenom']}</td>
                </tr>
                
				<tr >	
                <td><label for="email">Adresse email</span></label></td>
                <td><input type="text" id="email" name="email" value="<c:out value="${contact.email}"/>" size="20" maxlength="60" /></td>
               <td class="erreur">${form.erreurs['email']}</td>
                </tr>
                
                <tr >
                <td><label for="message">Message</span></label></td>
               <td> <textarea rows="4" cols="50" id="message" name="message"><c:out value="${contact.message}"/></textarea></td>
               <td class="erreur">${form.erreurs['message']}</td> 
                </tr>

				<tr >
                <td><input type="submit" value="Envoyer" class="sansLabel" /></td>
       
                </tr>
                
                <tr>
                <td><p>${form.resultat}</p></td>
                </tr>
				</table>
                

            </fieldset>

        </form>
       


			
		</div>
		</body>
		</html>
			
			
			
			