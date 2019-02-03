<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<title>Dart</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href="${pageContext.request.contextPath}/resources/css/Footer-with-button-logo.css"
	type="text/css" rel="stylesheet">
</head>

<body id="bodyBack">

	<jsp:include page="fragment/navbar.jsp" />

	<div class="container" id="AddContainer">
		<div class="row vertical-offset-100">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Dodawanie wpisu</h3>
					</div>
					<div class="panel-body">
						<form accept-charset="UTF-8" role="form" method="post"
							action="add">
							<fieldset>
								<div class="row" id="input">
									<div class="form-group required">
										<div class="col-md-11 ">
											<input name="inputTitle" class="form-control"
												placeholder="Temat" required autofocus type="text">
										</div>
									</div>
								</div>

								<div class="row" id="input">
									<div class="form-group required">
										<div class="col-md-11 ">
											<input name="inputUrl" type="url" class="form-control"
												placeholder="URL" required autofocus />
										</div>
									</div>
								</div>

								<div class="row" id="input">
									<div class="form-group required">
										<div class="col-md-11 ">
											<textarea name="inputDescription" rows="5"
												class="form-control" placeholder="Opis" required autofocus></textarea>
										</div>
									</div>
								</div>
								<input class="btn btn-lg btn-success btn-block" type="submit"
									value="Dodaj">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="fragment/footer.jsp" />

	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>