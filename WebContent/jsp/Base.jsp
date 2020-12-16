<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous"><link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/fontawesome.css">

</head>
<body class="bg-light">

	<nav class="navbar navbar-dark bg-dark">

		<div class="d-flex flex-row">
			<div class="p-2">		<a class="navbar-brand">E-Commerce</a>
</div>
			<div class="p-2">
				<a class="nav-link" href="/E-Commerce/Index">Accueil <span
					class="sr-only"></span></a>
			</div>
			<div class="p-2">
				<%
					if (session.getAttribute("isConnected") != null) {
				%>
				<a class="nav-link"><%=session.getAttribute("nom")%></a>

			</div>
			<div class="p-2">
				<a class="nav-link" href="/E-Commerce/AjoutArticle">Ajouter un
					Article </a>
			</div>
			<div class="p-2">
				<a class="nav-link" href="/E-Commerce/Logout">Se Déconnecter </a>
			</div>

			<%
				} else {
			%>
			<a class="nav-link" href="/E-Commerce/Login">Se connecter</a>
			<%
				}
			%>
		</div>

	</nav>