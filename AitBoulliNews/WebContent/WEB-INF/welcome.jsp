<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
    <head>
        
        <meta charset="utf-8">
        <title>Ait Boulli News</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <link rel="stylesheet" href="./css/welcome.css">
        
    </head>
    
    <body>
    
    <div id="conteneur">
    
        
	    <!-- header -->
	    <header class="row">
	
		    <h1 class="titre col mob-12 dsk-6 tab-6">Ait Boulli News</h1>
	    
		</header>
		
	    <!-- nav -->
	    
		<nav class="row">

			<div class="navigation col mob-12 dsk-2 tab-2"><a href="index.php">Accueil</a></div>
			<div class="navigation col mob-12 dsk-2 tab-2"><a href="france.php">Histoire</a></div>
			<div class="navigation col mob-12 dsk-2 tab-2"><a href="politique.php">Trecking</a></div>
			<div class="navigation col mob-12 dsk-2 tab-2"><a href="contact.php">Contacts</a></div>

		</nav>
		
	    <!-- form-->
		<form id="formulaire_connexion" method="post" action="index.php">
	    
		    <div class="rectangle">
		        
		    <label for="login">LOGIN: </label><input id="login" type="text" placeholder="Login" name="login">
		        
		    </div>
		    
		    <div class="rectangle">
		        
		    <label for="password">MOT DE PASSE: </label><input  id="password" type="password" placeholder="Mot de Passe" name="password">
		        
		    </div>
		    
		   
		    <div class="connexion_btn"><input id="connexion_btn" type="submit" value="Connexion" name="submit"></div>
		 
	    
		</form>
	
		<div class="inscription">
		        
		    <a href="inscription.php">Pas encore inscrit? Cliquer ici!</a>
		        
		</div>
		
	    <!-- section -->
	    
		<section>
		</section>
		
	    <!-- footer -->
		<footer>
	    
		    <div class="pied"><a href="apropos.php">A PROPOS</a></div>
		    <div class="pied"><a href="auteurs.php">AUTEURS</a></div>
		    <div class="pied"><a href="contact.php">CONTACT</a></div>
	
	
		</footer>
    
        
</div>
    </body>
    
    
</html>