<%@page language="java" import="java.util.Date,java.text.*"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter un article</title>
</head>
<body>
	<h1>Ajouter un article</h1>

	<form method="POST">
		<p>
			Code barre : <input type="long" name="CodeBarre">
		</p>

		<p>
			Reference : <input type="text" name="ReferenceArticle">
		</p>

		<p>
			Libelle : <input type="text" name="LibelleArticle">
		</p>

		<p>
			Prix HT : <input type="number" name="PrixHTArticle">
		</p>

		<p>
			Taux TVA : <select name="TauxTVAArticle" id="pet-select">
				<option value="">--Choisir une option--</option>
				<option value="1">5,50%</option>
				<option value="2">20,00%</option>
			</select>
		</p>

		<br>
		<button type="submit">Valider</button>
	</form>

</body>
</html>