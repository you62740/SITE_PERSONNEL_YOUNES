<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			
			<h1>Formulaire de Contact</h1>
			<br>
			<br>
			



        <form method="post" action="inscription">

            <fieldset>

                <legend>Contact</legend>

                <p>Vous pouvez envoyer un message via ce formulaire.</p>

				<label for="nom">Nom</label>

                <input type="text" id="nom" name="nom" value="" size="20" maxlength="20" />

                <br/>
                <label for="prenom">Prénom</label>

                <input type="text" id="prenom" name="prenom" value="" size="20" maxlength="20" />

                <br/>

                <label for="email">Adresse email<span class="requis">*</span></label>

                <input type="text" id="email" name="email" value="" size="20" maxlength="60" />

                <br/>

                <input type="submit" value="EnvoiMessage" class="sansLabel" />

                <br/>

            </fieldset>

        </form>

  
			
		</div>
		</body>
		</html>
			
			
			
			