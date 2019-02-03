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

<body id="BodyMain">

	<jsp:include page="fragment/navbar.jsp" />

	<div class="container" id="HomeContainer">
		<div class="jumbotron">
			<h1>Witamy w serwisie Dart!</h1>
			<div>
				<h4>Dziel się treścią z branży elektronicznej ze społecznością
					dodając znalezione w sieci artykuły.</h4>
			</div>
		</div>
		<c:if test="${not empty allPosts}">
			<c:forEach var="post" items="${allPosts}">
				<div class="row bs-callout bs-callout-success">
					<div class="col col-md-11 col-sm-10">
						<h3 class="centered">
							<a href="<c:out value="${post.url}" />"><c:out
									value="${post.title}" /></a>
						</h3>
						<h6>
							<small>Dodane przez: <c:out value="${post.user.username}" />,
								Dnia: <fmt:formatDate value="${post.time}" pattern="dd/MM/YYYY" /></small>
						</h6>
						<p>
							<c:out value="${post.description}" />
						</p>
						<a href="<c:out value="${post.url}" />"
							class="btn btn-success btn-sm">Czytaj dalej...</a>
						<c:choose>
							<c:when
								test="${pageContext['request'].userPrincipal.name == post.user.username}">
								<a href="<c:url value="/removePost/${post.title}" />"
									class="btn btn-danger btn-sm">Usuń</a>
							</c:when>
						</c:choose>
					</div>
				</div>
			</c:forEach>
		</c:if>
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