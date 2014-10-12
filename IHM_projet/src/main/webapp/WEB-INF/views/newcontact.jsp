	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="resources/themes/jquery/js/jquery.min.js"></script>
<link href="resources/themes/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/themes/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<script type="text/javascript" src="resources/themes/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"src="resources/themes/angular/angular.min.js"></script>
<script>
      document.write('<base href="' + document.location + '" />');
    </script>
<script type="text/javascript" src="resources/themes/controller/newContactController.js"></script>


<script type="text/javascript">
	// http://www.sanwebe.com/2013/03/addremove-input-fields-dynamically-with-jquery
	$(document)
			.ready(
					function() {
						var max_fields = 10; //maximum input boxes allowed
						var wrapper = $(".input_fields_wrap"); //Fields wrapper
						var add_button = $(".add_field_button"); //Add button ID

						var x = 1; //initlal address box count
						$(add_button)
								.click(
										function(e) { //on add address button click
											e.preventDefault();
											if (x < max_fields) { //max address allowed
												x++; 
												$(wrapper)
														.append(
																'<div><div class="form-group" style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">'

																		// kind address
																		+ '<div class="col-sm-3 col-md-2">'
																		+ '<label for="inputkindadress" class="control-label">Type d\'adresse</label>'
																		+ '</div><div class="col-sm-9 col-md-10">'
																		+ '<input type="text" class="form-control" name="option" id="option" path="option" placeholder="Type d\'adresse" />'
																		+ '</div>'
																		
																		// adress
																		+ '<div class="col-sm-3 col-md-2">'
																		+ '<label for="inputNumber" class="control-label">Adresse :</label>'
																		+ '</div><div class="col-sm-9 col-md-10">'
																		+ '<div class="row">'
																		+ '<div class="col-sm-2 ">'
																		+ '<input type="text" class="form-control" name="number" id="number" path="number" placeholder="N° rue" />'
																		+'</div>'
																		+'<div class="col-sm-10">'
																		+'<input type="text" class="form-control" name="street" id="street" path="street" placeholder="Rue" />'
																		+'</div>'
																		+'</div>'
																		+ '</div>'

																		// postCode
																		+ '<div class="col-sm-3 col-md-2">'
																		+ '<label for="inputStreet" class="control-label">Code postale :</label>'
																		+ '</div><div class="col-sm-9 col-md-10">'
																		+ '<input type="text" class="form-control" name="postCode" id="postCode" path="postCode" placeholder="Code postale" maxlength="5" pattern="[0-9]{5}" />'
																		+ '</div>'

																		+ '</div><a href="" class="remove_field pull-right"><span class="glyphicon glyphicon-trash"></span> Supprimer</a><br /><br /></div>'); //add input box

											}
										});

						$(wrapper).on("click", ".remove_field", function(e) { //user click on remove
							e.preventDefault();
							$(this).parent('div').remove();
							x--;
						})
					});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>New Contact</title>
</head>
<body ng-app="ihm" ng-controller="newContactController">
	<div class="navbar navbar-default navbar-static-top">
		<style>
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
								id="lastName" path="lastName" placeholder="Nom" required="required">

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputFirstName" class="control-label">Prénom
								:</label>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="firstName"
								id="firstName" path="firstName" placeholder="Prénom" required="required">

						</div>
					</div>
						<div class="form-group">
						<div class="col-sm-2">
							<label for="inputDate" class="control-label">Naissance :</label>
						</div>
						<div class="col-sm-10">
							 <input type="date"  class="form-control"  name="birthday"
								id="birthday" path="birthday" ng-model="bday.date" placeholder="Date" ng-required/>
               
</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputEmail" class="control-label">Email :</label>
						</div>
						<div class="col-sm-10">
							<input type="email" class="form-control" name="email" id="email"
								path="email" placeholder="Email">

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputPhoneNumber" class="control-label">Téléphone
								:</label>
						</div>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="phoneNumber"
								id="phoneNumber" path="phoneNumber" placeholder="Téléphone" maxlength="10"/>

						</div>
					</div>
					  <div id="wrap"> <!-- http://plnkr.co/edit/2UFfaG?p=preview -->
 			<div class="container">
				<div ng-repeat="Address in listAddress"> 
				<div ng-hide="editing" ng-click="editing = true">	
				<li><strong>{{Address.kindAddress}}</strong><br\></li>
				<div>{{Address.number}} {{Address.street}} </div><br\>
				<div> {{Address.zipCode}} {{Address.city}}</div> 
				
				</div>
				
				<div ng-show="editing==true"  >
				 <div class="form-group" style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">
				<div class="col-sm-3 col-md-2">
									<label for="inputkindadress" class="control-label">Type
										d'adresse</label>
								</div>
								<div class="col-sm-9 col-md-10">
								   <input type="text"  class="form-control" name="option"
										id="option" path="option" placeholder="Type d'adresse"  ng-model="Address.kindAddress" value="Address.kindAddress" ng-required/>

								</div>
									<div class="col-sm-3 col-md-2 col-xs-12">
									<label for="inputNumber" class="control-label">N° et voie :</label>
								</div>

								<div class="col-sm-9  col-md-10 col-xs-12">
									<div class="row">
										<div class="col-sm-3 col-xs-12 ">
											<input type="text" class="form-control" name="number"
												id="number" path="number" placeholder="N° rue"    ng-model="Address.number" value="Address.number"/>

										</div>
										<div class="col-sm-9 col-xs-12 ">
											<input type="text" class="form-control" name="street"
												id="street" path="street" placeholder="Rue" ng-model="Address.street" value="Address.street"/>

										</div>
									</div>
								</div>
								
								<div class="col-sm-3 col-md-2">
									<label for="inputPostCode" class="control-label">CP et ville :</label>
								</div>
									<div class="col-sm-9 col-md-10 col-xs-12">
									<div class="row">
									
										<div class="col-sm-3 col-xs-12 ">
											<input type="text" class="form-control" name="postCode"
												id="postCode" path="postCode" placeholder="Code postale" maxlength="5"
												pattern="[0-9]{5}"  ng-model="Address.zipCode" value="Address.zipCode"/>
										</div>
										<div class="col-sm-9 col-xs-12 ">
											<input type="text" class="form-control" name="city"
												id="city" path="city" placeholder="Ville" ng-model="Address.city"/>

										</div>
									</div>
								</div>

								 <button class="btn pull-right" type="button" ng-click="editing = false">Save</button>
				</div>
				</div>
				
				</div>
            
            
					  
						<div>
							<div class="form-group"
								style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">
								<div class="col-sm-3 col-md-2">
									<label for="inputkindadress" class="control-label">Type
										d'adresse :</label>
								</div>
								<div class="col-sm-9 col-md-10">
									<input type="text" class="form-control" name="option"
										id="option" path="option" placeholder="Type d'adresse"   ng-model="kindAddress"/>

								</div>


								<div class="col-sm-3 col-md-2 col-xs-12">
									<label for="inputNumber" class="control-label">N° et voie :</label>
								</div>

								<div class="col-sm-9  col-md-10 col-xs-12">
									<div class="row">
										<div class="col-sm-3 col-xs-12 ">
											<input type="text" class="form-control" name="number"
												id="number" path="number" placeholder="N° rue"    ng-model="number"/>

										</div>
										<div class="col-sm-9 col-xs-12 ">
											<input type="text" class="form-control" name="street"
												id="street" path="street" placeholder="Rue" ng-model="street"/>

										</div>
									</div>
								</div>

								<div class="col-sm-3 col-md-2">
									<label for="inputPostCode" class="control-label">CP et ville :</label>
								</div>
								<div class="col-sm-9 col-md-10 col-xs-12">
									<div class="row">
									
										<div class="col-sm-3 col-xs-12 ">
											<input type="text" class="form-control" name="postCode"
												id="postCode" path="postCode" placeholder="Code postale" maxlength="5"
												pattern="[0-9]{5}"  ng-model="zipCode"/>
										</div>
										<div class="col-sm-9 col-xs-12 ">
											<input type="text" class="form-control" name="city"
												id="city" path="city" placeholder="Ville" ng-model="city"/>

										</div>
									</div>
								</div>

					
							  <button class="btn pull-right" type="button" ng-click="newAddress()">Save</button>
						</div>
					
				
					 </div>
					</div>
					  <div id="push"></div>
    </div>
					<div class="form-group">
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
