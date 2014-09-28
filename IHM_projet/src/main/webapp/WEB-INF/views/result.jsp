<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<div class="input-group">
					<a class="navbar-brand">Contact Manager</a> <span
						class="input-group-btn"> <a href="newContact" style="width: 80px"
						class="btn btn-link pull-right"><span
							class="glyphicon glyphicon-plus-circle glyphicon-plus-sign"></span></a>
					</span>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Rechercher un contact"> <span
						class="input-group-btn">
						<button class="btn btn-primary glyphicon glyphicon-search"
							type="button" style="width: 80px"></button>
					</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-primary">A</h1>
				<hr style="background-color: #428BCA; height: 3px;">
			</div>
		</div>
		<c:forEach items="${Listcontacts}" var="listcontact">
			<div class="row" style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">
				<div class="col-md-12">
					<ul class="media-list" >
						<li class="media"><a class="pull-left" ><img
								class="img-circle media-object" src="http://placehold.it/64x64"></a>
							<div class="media-body">
								<h4 class="media-heading">${listcontact.lastName}&nbsp;${listcontact.firstName}</h4>
								<h4 class="media-heading">${listcontact.phoneNumber}</h4>
							</div></li>
					</ul>
				</div>
			</div>
		</c:forEach>

	</div>


</body>
</html>