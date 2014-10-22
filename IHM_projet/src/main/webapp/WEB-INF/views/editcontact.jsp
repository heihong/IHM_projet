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
	      $('#addresslist').append('<div class="col-sm-2"><b>Adresse : </b></div><div class="col-sm-10">'+option+' - '+number+' '+street+' - '+postCode+' '+city+'</div><br />');
	 	 
	    },  
	    error: function(e){  
	     
	    }  
	  });  
	}  
</script>
<script type="text/javascript">
function deleteAddress(id) {  
	var self = this;
	
	  
	  
	   
	  $.ajax({  
	    type: "POST",  
	    url: "/IHM_projet/deleteAddress.htm?id="+id,  
	    data: "" ,  
	    success: function(response){  
	      // we have the response  
	    	var div = document.getElementById("address_" + id);
	    	div.parentNode.removeChild(div);
	    	$('#addresslist').load(document.URL+' #addresslist');
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
				<form:form method="post" action="saveEditContact" id="editContact"
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
					


				</form:form>
				<form:form method="post" action="#" id="newAddressForm"
					 class="form-horizontal">	
					
					  <div id="wrap" > <!-- http://plnkr.co/edit/2UFfaG?p=preview -->
 						<div class="container">                    
					  
						<div>
						<div id="addresslist">
						<c:forEach items="${contact.addressList}" var="address">
						<div id="address_${contact.addressList.indexOf(address)}">
							<div class="form-group"
								style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">
								<div class="col-sm-3 col-md-2">

									<label for="inputkindadress" class="control-label">Type
										d'adresse</label>
								</div>
								<div class="col-sm-9 col-md-10">
									<p class="form-control-static">${address.option}</p>

								</div>


								<div class="col-sm-3 col-md-2">
									<label for="inputNumber" class="control-label">Adresse
										:</label>
								</div>

								<div class="col-sm-10">
									<div class="row">
										<div class="col-sm-2 ">
											<p class="form-control-static">${address.number}</p>

										</div>
										<div class="col-sm-10">
											<p class="form-control-static">${address.street}</p>

										</div>
									</div>
								</div>

								<div class="col-sm-3 col-md-2">
									<label for="inputPostCode" class="control-label">Code
										postale :</label>
								</div>
								<div class="col-sm-9 col-md-10">
									<p class="form-control-static">${address.postCode}</p>
								</div>
								<a href="#" onclick="deleteAddress(${contact.addressList.indexOf(address)})" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Supprimer
								</a>
							</div>
							</div>
					</c:forEach>
						</div>
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
									                   <button class="btn btn-success" type="button" onclick="doAjaxPost()"> <span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Ajouter l'adresse</button>
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
									<a href="showContactList" class="btn btn-danger">
										<span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Annuler
									</a>
									&nbsp;
									<button type="submit" form="editContact" class="btn btn-success">
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
