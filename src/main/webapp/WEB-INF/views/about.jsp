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

<body id="bodyBack">

	<jsp:include page="fragment/navbar.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-sm-8 blog-main">
				<div class="blog-post" id="AboutContainer">
					<div class="well">
						<h4>Serwis powstał z myślą o społeczności zainteresowanej
							branżą elektroniczną. Użytkownicy serwisu mogą zamieszczać w nim
							posty w postaci linków z tytułem i opisem. Dzięki takiemu
							rozwiązaniu wszystkie artykuły dotyczące tej tematyki znajdziemy
							w jednym miejscu. Czytelnicy niezarejestrowani w serwisie mogą
							korzystać z zamieszczonych na stronie odnośników. Jeśli jednak
							chcieli by współtworzyć kompedium wiedzy muszą założyć konto w
							serwisie i się zalogować.</h4>
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