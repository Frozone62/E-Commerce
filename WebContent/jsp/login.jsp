<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="Base.jsp"%>
<div class="mb-auto p-2">

	<div class="d-flex justify-content-center">
		<div class="shadow p-3 mb-5 bg-white rounded">
			<div class="row">
				<div class="col-6">
					<h1>Connexion</h1>
				</div>
				<br>
				<div class="row">
					<div class="panel-body">
						<form method="POST">
							<div class="row">
								<div class="col-12">
									<div class="input-group mb-12">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"
												style="width: 150px;">Login :</span>
										</div>
										<input type="text" name="login" placeholder='Login'
											style="width: 50%;" />
									</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-12">
									<div class="input-group mb-12">
										<div class="input-group-prepend">
											<span class="input-group-text" id="inputGroup-sizing-sm"
												style="width: 150px;">Mot de passe : </span>
										</div>
										<input type="password" name="password"
											placeholder='Mot de passe' style="width: 50%;" />
									</div>
								</div>
							</div>
							<br>
							<div class="d-flex justify-content-center">
								<button type="submit" class="btn btn-primary">Se
									connecter</button>
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