	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ihm">
<head>
<script type="text/javascript" src="resources/themes/jquery/jquery.min.js"></script>
<script type="text/javascript"src="resources/themes/angular/angular.min.js"></script>
<script type="text/javascript" src="resources/themes/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/themes/datepiker/ui-bootstrap-tpls-0.6.0.js"></script>
<link href="resources/themes/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/themes/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="resources/themes/css/main.css" rel="stylesheet">
 
    

<script type="text/javascript" src="resources/themes/js/newContactController.js"></script>


<script type="text/javascript">
function doAjaxPost() {  
	var self = this;
	  // get the form values  
	  var option = $('#option').val();
	  var number = $('#number').val();
	  var street = $('#street').val();
	  var postCode = $('#postCode').val();
	  var city = $('#city').val();
	   
	  $.ajax({  
	    type: "POST",  
	    url: "/IHM_projet/AddAddress.htm",  
	    data: "option=" + option + "&number=" + number + "&street="  + street + "&postCode=" +postCode + "&city=" + city ,  
	    success: function(response){  
	      // we have the response  
	      $('#info').html(response);
	      $('#option').val('');
	      $('#number').val('');
	      $('#street').val('');
	      $('#postCode').val('');
	      $('#city').val('');
	    },  
	    error: function(e){  
	      alert('Error: ' + e);  
	    }  
	  });  
	}  
</script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>New Contact</title>
</head>
<body ng-controller="newContactController">
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
			
				<form:form  method="post" action="addContact" id="newContactForm"
					modelAttribute="contact" class="form-horizontal">
					<div class="form-group" >
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
						 <div class="input-group">
      						<input type="text" class="form-control" datepicker-popup="dd-MMMM-yyyy" ng-model="dt" is-open="opened"  name="birthday" id="birthday" path="birthday"/>
     							 <span class="input-group-btn">
        					<button class="btn btn-default glyphicon glyphicon-calendar" ng-click="open()"></button>
      							</span>
    						</div><!-- /input-group -->
						
							
       
               
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
					</form:form>
					
					
					
					
					
					
					
				<form:form method="post" action="#" id="newAddressForm"
					 class="form-horizontal">	
					
					  <div id="wrap" > <!-- http://plnkr.co/edit/2UFfaG?p=preview -->
 						<div class="container">
			
            
            
					  
						<div>
							<div class="form-group"
								style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">
								<div class="col-sm-3 col-md-2">
									<label for="inputkindadress" class="control-label">Type
										d'adresse :</label>
								</div>
								<div class="col-sm-9 col-md-10">
									<input type="text" class="form-control" name="option"
										id="option" path="option" placeholder="Type d'adresse" />

								</div>


								<div class="col-sm-3 col-md-2 col-xs-12">
									<label for="inputNumber" class="control-label">N° et voie :</label>
								</div>

								<div class="col-sm-9  col-md-10 col-xs-12">
									<div class="row">
										<div class="col-sm-3 col-xs-12 ">
											<input type="text" class="form-control" name="number"
												id="number" path="number" placeholder="N° rue" />

										</div>
										<div class="col-sm-9 col-xs-12 ">
											<input type="text" class="form-control" name="street"
												id="street" path="street" placeholder="Rue" />

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
												pattern="[0-9]{5}" />
										</div>
										<div class="col-sm-9 col-xs-12 ">
											<input type="text" class="form-control" name="city"
												id="city" path="city" placeholder="Ville" />

										</div>
									</div>
								</div>
									<div class=" form-group">
									        <div class=" col-sm-12">
									              <div class="pull-right">
									                   <button class="btn btn-success" type="button" onclick="doAjaxPost()"> <span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Enregistrer</button>
									               </div>
											</div>
            						</div>
            						
            						<tr><td colspan="2"><div id="info" style="color: green;"></div></td></tr>
							
						</div>
					
				
					 </div>
					</div>
					  <div id="push"></div>
    </div>
    
    </form:form>
					<div class="form-group">
						<div class="col-sm-12">
							<div class="form-actions">
								<div class="pull-right">
									<button type="reset" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Annuler
									</button>
									&nbsp;
									<button type="submit" form="newContactForm" class="btn btn-success">
										<span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Enregistrer
									</button>
								</div>
							</div>
						</div>
					</div>
				
			</div>
		</div>
	</div>


</body>
</html>
