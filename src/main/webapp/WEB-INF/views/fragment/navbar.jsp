<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}">Dart</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="${pageContext.request.contextPath}">Główna</a></li>
			<li><a href="${pageContext.request.contextPath}/add">Dodaj
					wpis</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li>
				<form class="navbar-form navbar-right">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Szukaj">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</li>
			<li><a href="${pageContext.request.contextPath}/register"><span
					class="glyphicon glyphicon-user"></span> Zarejestruj się</a></li>
			<li><a href="${pageContext.request.contextPath}/login"><span
					class="glyphicon glyphicon-log-in"></span> Zaloguj się</a></li>
		</ul>
	</div>
</nav>