<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="Base.jsp"%>
<div class="mb-auto p-2">

	<div class="container">
		<div class="row">
			<div class="col">
				<h4>Liste des articles</h4>
				<i class="fas fa-camera"></i>
				<!-- this icon's 1) style prefix == fas and 2) icon name == camera -->
				<i class="fas fa-camera"></i>
				<!-- using an <i> element to reference the icon -->
				<span class="fas fa-camera"></span>
				<!-- using a <span> element to reference the icon -->
			</div>
		</div>

		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>Code Barre</th>
					<th>Reference</th>
					<th>Libelle</th>
					<th>PrixHT</th>
					<th>TauxTVA</th>
					<th>Actions</th>
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
						<td><i class="fab fa-500px"></i></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>