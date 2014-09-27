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


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://cdn.sanwebe.com/wp-content/themes/sanwebe/js/jquery-1.10.2.min.js"></script>

<script type="text/javascript">
	// http://www.sanwebe.com/2013/03/addremove-input-fields-dynamically-with-jquery
	$(document)
			.ready(
					function() {
						var max_fields = 10; //maximum input boxes allowed
						var wrapper = $(".input_fields_wrap"); //Fields wrapper
						var add_button = $(".add_field_button"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.click(
										function(e) { //on add input button click
											e.preventDefault();
											if (x < max_fields) { //max input box allowed
												x++; //text box increment
												$(wrapper)
														.append(
																'<div><div class="form-group">'
																
																// number
																+'<div class="col-sm-2">'
																+'<label for="inputPhoneNumber" class="control-label">Adresse :</label>'
																+'</div><div class="col-sm-10">'
																+'<input type="text" class="form-control" name="adresse[]" id="adresse[]" path="adresse" placeholder="Adresse">'
																+'</div>'
																
																// street
																+'<div class="col-sm-2">'
																+'<label for="inputStreet" class="control-label">Rue :</label>'
																+'</div><div class="col-sm-10">'
																+'<input type="text" class="form-control" name="street[]" id="street[]" path="street" placeholder="Rue">'
																+'</div>'
														
																+'</div><a href="#" class="remove_field pull-right">Remove</a></div>'
																); //add input box

											}
										});

						$(wrapper).on("click", ".remove_field", function(e) { //user click on remove text
							e.preventDefault();
							$(this).parent('div').remove();
							x--;
						})
					});
</script>

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
				<a class="navbar-brand" href="#">Contact Manager</a>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse"></div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-primary">
					<span class="glyphicon glyphicon-user"></span> Nouveau contact
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
							<input type="text" class="form-control" name="lastName"
								id="lastName" path="lastName" placeholder="nom">

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputFirstName" class="control-label">Pr�nom
								:</label>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="firstName"
								id="firstName" path="firstName" placeholder="pr�nom">

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputEmail" class="control-label">Email :</label>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="email" id="email"
								path="email" placeholder="email">

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputPhoneNumber" class="control-label">T�l�phone
								:</label>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="phoneNumber"
								id="phoneNumber" path="phoneNumber" placeholder="T�l�phone">

						</div>
					</div>




					<div class="input_fields_wrap">
						<button class="add_field_button">Ajouter une adresse</button>
						
						
						
						
						<div>
							<div class="form-group">
								<div class="col-sm-2">
									<label for="inputNumber" class="control-label">Num�ro :</label>
								</div>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="number[]"
										id="number[]" path="number" placeholder="Num�ro dans la rue">
								</div>
								<div class="col-sm-2">
									<label for="inputStreet" class="control-label">Rue :</label>
								</div>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="street[]"
										id="street[]" path="street" placeholder="Rue">
								</div>
								
								
							</div>
							
						</div>
						
						
						
						
					</div>


					<div class=" form-group">
						<div class="col-sm-12">
							<div class="form-actions">
								<div class="pull-right">
									<button type="reset" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Annuler
									</button>
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