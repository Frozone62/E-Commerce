<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="Base.jsp"%>

<div class="mb-auto p-2">
	<div class="d-flex justify-content-center">
		<div class="shadow p-3 mb-5 bg-white rounded">
			<div class="row">
				<div class="col-8">
				 <h1>Supprimer Votre  Article</h1>
					<br>
				</div>
				<div class="row">
					<div class="panel-body">
						<form method="POST">
							<div class="row">
								<div class="col-12">
									<div class="input-group input-group-sm mb-12">
										<div class="input-group-prepend">
											<span class="input-group-text" id="inputGroup-sizing-sm"
												style="width: 150px;">Code Barre : </span>
										</div>
										<input type="long" name="CodeBarre" placeholder='Code Barre' value="<%=request.getParameter("codeBarre")%>" readOnly="readOnly"/>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="input-group input-group-sm mb-12">
										<div class="input-group-prepend">
											<span class="input-group-text" id="inputGroup-sizing-sm"
												style="width: 150px;">Reference :</span>
										</div>
										<input type="text" name="ReferenceArticle"
											placeholder='Reference' value="<%=request.getAttribute("ReferenceArticle")%>" readOnly="readOnly">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="input-group input-group-sm mb-12">
										<div class="input-group-prepend">
											<span class="input-group-text" id="inputGroup-sizing-sm"
												style="width: 150px;">Libelle :</span>
										</div>
										<input type="text" name="LibelleArticle" placeholder='Libelle' value="<%=request.getAttribute("LibelleArticle")%>" readOnly="readOnly">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="input-group input-group-sm mb-6">
										<div class="input-group-prepend">
											<span class="input-group-text" id="inputGroup-sizing-sm"
												style="width: 150px;">Prix HT : </span>
										</div>
										<input type="number" name="PrixHTArticle"
											placeholder='Prix Hors Taxes' value="<%=request.getAttribute("PrixHTArticle")%>" readOnly="readOnly">
									</div>
								</div>
							</div>
							<br>
							<div class="d-flex justify-content-center">
								  <button type="submit" class="btn btn-danger">Suppression de votre Article</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>