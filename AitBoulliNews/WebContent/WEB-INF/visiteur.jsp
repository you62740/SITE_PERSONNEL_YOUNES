<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Visiteur</title>
</head>
<body>
<h1>Remplir le formulaire - Visiteur</h1>

<!-- Formulaire simple visiteur -->
<form method="post" action="visiteur">
	<fieldset>
		<table>
		<tr>
		<td><label for="name">Nom</label></td>
		<td><input type="text" id="name" name="name" value="<c:out value="${visiteur.name}"/>"></td>
		</tr>
		<tr>
		<td><label for="surname">Prénom</label></td>
		<td><input type="text" id="surname" name="surname" value="<c:out value="${visiteur.surname}"/>"></td>
		</tr>
		<tr>
		<td><label for="age">Âge</label></td>
		<td><input type="number" id="age" name="age" value="<c:out value="${visiteur.age}"/>"></td>
		</tr>
		<tr>
		<td><input type="submit" value="Soumettre" name=submit></td>
		</tr>
		</table>
	</fieldset>
</form>

</body>

</html>