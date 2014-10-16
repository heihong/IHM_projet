<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="resources/themes/jquery/jquery.min.js"></script>
<link href="resources/themes/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/themes/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="resources/themes/bootstrap/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>New Contact</title>
</head>
<body>
	<div class="navbar navbar-default navbar-static-top">
		<style>
.body {
	padding-top: 70px
}
</style>
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="showContactList">Contact Manager</a>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse"></div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-primary">
					<span class="glyphicon glyphicon-user"></span> Modifier le contact
				</h1>
				<hr style="background-color: #428BCA; height: 3px;" draggable="true">
			</div>

			<div class="col-md-12">
				<form:form method="post" action="saveEditContact"
					modelAttribute="contact" class="form-horizontal">
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputName" class="control-label">Nom :</label>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="lastName"
								placeholder="Nom" path="lastName" id="lastName"
								required="required" value="${contact.lastName}" />

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputFirstName" class="control-label">Prénom
								:</label>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="firstName"
								id="firstName" path="firstName" placeholder="Prénom"
								required="required" value="${contact.firstName}" />

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputEmail" class="control-label">Email :</label>
						</div>
						<div class="col-sm-10">
							<input type="email" class="form-control" name="email" id="email"
								path="email" placeholder="Email" value="${contact.email}">

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputPhoneNumber" class="control-label">Téléphone
								:</label>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="phoneNumber"
								id="phoneNumber" path="phoneNumber" placeholder="Téléphone"
								maxlength="10" value="${contact.phoneNumber}" />

						</div>
						<input type="hidden" name="id" id="id" value="${contact.id}">
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<div class="form-actions">
								<div class="pull-right">
									<a href="showContactList" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Annuler
									</a>
									&nbsp;
									<button type="submit" class="btn btn-success">
										<span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Enregistrer
									</button>
								</div>
							</div>
						</div>
					</div>


				</form:form>
			</div>
		</div>
	</div>


</body>
</html>
