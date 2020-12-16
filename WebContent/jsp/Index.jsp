<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
 
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Index">Accueil</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login">Connexion</a>
      </li>
    </ul>
  </div>
</nav>


	<p>Liste des Articles</p>

	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th>CodeBarre</th>
				<th>Reference</th>
				<th>Libelle</th>
				<th>PrixHT</th>
				<th>TauxTVA</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="p" items="${Article}">

				<tr>
					<td>${p.key}</td>
					<td>${p.value[0]}</td>
					<td>${p.value[1]}</td>
					<td>${p.value[2]}</td>
					<td>${p.value[3]}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>