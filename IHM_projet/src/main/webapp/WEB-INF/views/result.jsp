<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>New Contact</title>
</head>
<body>
	<div class="navbar navbar-default navbar-static-top">
<style>
.body {
	padding-top: 70px
}
</style>		<style>
.body {
	padding-top: 70px
}
</style>
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" >Contact Manager</a>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse"></div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-primary">
					<span class="glyphicon glyphicon-user"></span> Detail du Contact
				</h1>
				<hr style="background-color: #428BCA; height: 3px;" draggable="true">
			</div>

			<div class="col-md-12">
				<form:form method="post" action="addContact"
					modelAttribute="contact" class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputName" class="control-label">Nom :</label>
						</div>
						<div class="col-sm-10">
							 <p class="form-control-static">${lastName}</p>

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputFirstName" class="control-label">Prénom
								:</label>
						</div>
						<div class="col-sm-10">
								 <p class="form-control-static">${firstName}</p>


						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputEmail" class="control-label">Email :</label>
						</div>
						<div class="col-sm-10">
						 <p class="form-control-static">${email}</p>


						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputPhoneNumber" class="control-label">Téléphone
								:</label>
						</div>
						<div class="col-sm-10">
							 <p class="form-control-static">${phoneNumber}</p>
							
						</div>
					</div>


					<div class=" form-group">
						<div class="col-sm-12">
							<div class="form-actions">
								<div class="pull-right">
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Modifier
									</button>
									&nbsp;
									<a type="button" class="btn btn-success" href="showContactList">
										<span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Liste de Contact
									</a>
								</div>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<c:forEach items="${Listcontacts}" var="contact">
			<div class="row" style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">
				<div class="col-md-12">
					<ul class="media-list" >
						<li class="media"><a class="pull-left" ><img
								class="randomColor img-circle media-object" width="64" height="64" style="border: 1px solid #428bca;"></a>
							<div class="media-body">
								<h4 class="media-heading">${contact.lastName}&nbsp;${contact.firstName}</h4>
								<h4 class="media-heading">${contact.phoneNumber}</h4>
							</div></li>
					</ul>
				</div>
			</div>
		</c:forEach>

	</div>


</body>
</html>
