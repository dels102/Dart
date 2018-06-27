<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><!DOCTYPE html>
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

<body>

	<jsp:include page="fragment/navbar.jsp" />

	<div class="container" id="ContactContainer">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="well well-sm">
					<form class="form-horizontal"
						action="${pageContext.request.contextPath}/contact" method="post">
						<fieldset>
							<legend class="text-center">Skontaktuj się z nami</legend>

							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Imię</label>
								<div class="col-md-9">
									<input id="name" name="name" type="text"
										placeholder="Wpisz imię" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 control-label" for="email">Email</label>
								<div class="col-md-9">
									<input id="email" name="email" type="text"
										placeholder="Podaj swój email" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 control-label" for="message">Wiadomość</label>
								<div class="col-md-9">
									<textarea class="form-control" id="message" name="message"
										placeholder="Co chcesz wiedzieć?" rows="5"></textarea>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-12 text-right">
									<button type="submit" class="btn btn-primary btn-lg">Wyślij</button>
								</div>
							</div>
						</fieldset>
					</form>
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