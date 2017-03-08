<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inscription</title>
</head>
<body>
	<form method="post" action="connexion">
		<fieldset>
            <label>Pseudo: </label><input type="text" name="pseudo" placeholder="amel6274" value=""><br>
            <label>Password: </label><input type="text" name="password" placeholder="blabla" value=""><br>
            <input type="submit" name="submit" value="Connexion">
		</fieldset>
	</form>
	
				<c:if test="${!empty sessionScope.sessionUtilisateur}">

                    <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>

                    <p>Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.pseudo}</p>

                </c:if></body>
</html>