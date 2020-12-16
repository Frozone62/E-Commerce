<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="Base.jsp"%>

<div class="mb-auto p-2">
	<div class="d-flex justify-content-center">
		<div class="shadow p-3 mb-5 bg-white rounded">
			<div class="row">
				<div class="col-8">
					<h1>Modifier Votre Article</h1>
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
										<input type="long" name="CodeBarre" placeholder='Code Barre'
											disabled="disabled" />
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
											placeholder='Reference'>
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
										<input type="text" name="LibelleArticle" placeholder='Libelle'>
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
											placeholder='Prix Hors Taxes'>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<div class="input-group mb-6">
										<div class="input-group-prepend">
											<label class="input-group-text" for="inputGroupSelect01"
												style="width: 150px;">TVA :</label>
										</div>
										<select name="TauxTVAArticle" class="custom-select"
											id="TauxTVAArticle">
											<option selected>--Choisir une option--</option>
											<option value="550">5,50%</option>
											<option value="2000">20,00%</option>
										</select>
									</div>

								</div>
							</div>
							<br>

							<div class="d-flex justify-content-center">
								<button type="submit" class="btn btn-warning">Valider
									votre Modification</button>
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