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
	<form method="post" action="inscription">
		<fieldset>
			<label>Nom: </label><input type="text" name="nom" placeholder="Dupont" value="<c:out value="${utilisateur.nom }"/>"><br>
            <label>Prénom: </label><input type="text" name="prenom" placeholder="Michel" value="<c:out value="${utilisateur.prenom }"/>"><br>
            <label>Âge: </label><input type="text" name="age" placeholder="18" value="<c:out value="${utilisateur.age }"/>"><br>
            <label>Mail: </label><input type="text" name="mail" placeholder="ememme@live.fr" value="<c:out value="${utilisateur.mail }"/>"><br>
            <label>Pseudo: </label><input type="text" name="pseudo" placeholder="amel6274" value="<c:out value="${utilisateur.pseudo }"/>"><br>
            <label>Password: </label><input type="text" name="password" placeholder="blabla" value="<c:out value="${utilisateur.password }"/>"><br>
            <input type="submit" name="submit" value="Inscription">
		</fieldset>
	</form>
</body>
</html>