<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="resources/themes/jquery/jquery.min.js"></script>
	<script type="text/javascript"
	src="resources/themes/bootstrap/js/bootstrap.min.js"></script>
<link href="resources/themes/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/themes/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet">


<title>New Contact</title>
</head>
<body>
	<div class="navbar navbar-default navbar-static-top">
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
							<p class="form-control-static">${contact.lastName}</p>

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputFirstName" class="control-label">Pr�nom
								:</label>
						</div>
						<div class="col-sm-10">
							<p class="form-control-static">${contact.firstName}</p>


						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputBirthday" class="control-label">Naissance :</label>
						</div>
						<div class="col-sm-10">
							<p class="form-control-static">${contact.birthday}</p>


						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputEmail" class="control-label">Email :</label>
						</div>
						<div class="col-sm-10">
							<p class="form-control-static">${contact.email}</p>


						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							<label for="inputPhoneNumber" class="control-label">T�l�phone
								:</label>
						</div>
						<div class="col-sm-10">
							<p class="form-control-static">${contact.phoneNumber}</p>

						</div>
					</div>
					<c:forEach items="${contact.addressList}" var="address">
						<div>
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
							</div>
					</c:forEach>


					<div class=" form-group">
						<div class="col-sm-12">
							<div class="form-actions">
								<div class="pull-right">
						
									<a class="btn btn-danger" data-toggle="modal" data-target="#myModal">
										<span class="glyphicon glyphicon-trash" href="#"></span>&nbsp;Supprimer	
									</a>
									
									&nbsp; 
									<a type="button" class="btn btn-warning"
										href="editContact?id=${contact.id}"> <span
										class="glyphicon glyphicon-pencil"></span>&nbsp;Modifier
									</a> 
									&nbsp; 
									<a type="button" class="btn btn-primary"
										href="showContactList"> <span
										class="glyphicon glyphicon-home"></span>&nbsp;Liste de
										contacts
									</a>
									
									<!-- Button trigger modal -->
	
									
								</div>
							</div>
						</div>
					</div>
									




				</form:form>
			
			</div>
		</div>
	</div>
	
	
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Supprimer le contact</h4>
      </div>
      <div class="modal-body">
        Voulez-vous supprimer le contact ?
      </div>
      <div class="modal-footer">
        <a type="button" class="btn btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;non</a>
        <a type="button" class="btn btn-success" href="deleteContact?id=${contact.id}"><span class="glyphicon glyphicon-ok-circle"></span>&nbsp;oui</a>
      </div>
    </div>
  </div>
</div>


</body>
</html>
