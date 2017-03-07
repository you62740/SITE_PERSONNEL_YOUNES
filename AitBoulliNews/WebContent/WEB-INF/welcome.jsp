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
		<link href="./vues/css/welcome.css" rel="stylesheet">
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
			            <li><a href="#"><span class=" glyphicon glyphicon-home"></span>Présentation</a></li>
				        <li><a href="#"><span class="glyphicon glyphicon-briefcase"></span> Parcours </a></li>
			            <li><a href="inscription"><span class="glyphicon glyphicon-calendar"></span> Evènements</a></li>
			            <li><a href="visiteur"><span class="glyphicon glyphicon-user"></span> Visiteur</a></li>
			            <li><a href="contact"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
			        </ul>
		        </div>
		        
		    </nav>


		    <div class="row no-padding">	

			<header class="page-header">
				<div class="container">
				<div class="row no-padding">
					<div class="col-xs-12 col-sm-12 col-md-12">
					<jsp:useBean id="younes" class="com.aitboullinews.beans.Younes" scope="request" />
						<h1><span class="title1"><em>${younes.emploi}</em></span> <br/><span class="title2">${younes.prenom} ${younes.nom}</span></h1>
					</div>
				</div>
				</div>
			</header>

					<section class="row no-padding">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<div class="presentation">
								<h2>Qui suis-je ?</h2>
								<p>Passionné par les technologies Web et la programmation en général,
								grâce à des lectures, des auto-formations en ligne et une formation approfondie chez M2I Formation,
								mon objectif est de travailler dans une entreprise spécialisée dans la conduite de projets Web. Mes Qualités :
								Soif d’apprendre, Rigoureux, Curieux, Esprit d’équipe.</p>
							</div>
						</div>
					</section>

					<div class="dark_footer">
						<footer>
							<div class="container">
								<div class="row">
									<div class="col-xs-6 col-sm-6 col-md-3 item">
										<p>Blablabla</p>
										<p>Blablabla</p>
										<p>Blablabla</p>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-3 item">
										<p>Blablabla</p>
										<p>Blablabla</p>
										<p>Blablabla</p>
									</div>
									<div class="col-xs-12 col-sm-12 col-md-6 item">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet accumsan felis. Morbi tincidunt nibh eu nisi cursus, ac porta urna hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas venenatis nunc urna, vitae placerat tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet accumsan felis. Morbi tincidunt nibh eu nisi cursus, ac porta urna hendrerit.</p>
									</div>
								</div>
								<br/>
								<p class="copyright">Tous droits réservés - 2017</p>
							</div>
						</footer>
					</div>



    		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<script type="text/javascript" src="./vues/bootstrap/js/bootstrap.min.js"></script> 
			
	</body>



</html>