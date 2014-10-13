<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
<script type="text/javascript" src="resources/themes/controller/listContactController.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>

$(document).ready(function(){
	var colors = ['#69A3D6', '#CCE45A', '#EEB451', '#E86957', '#8C89B6', '#8FAFA5', '#C778BF' ,'#8E9EB0' ,'#8CB39C' ,'#A3C47B' , '#BFA980'];
	
	$(".randomColor").each(function() {
		
		var index = Math.floor(Math.random() * colors.length);
		var color = colors[index];
	   
	    $(this).css("background-color", color);
	});
	
	
	
	});
</script>
</head>
<body ng-app="ihm" ng-controller="listContactController">
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
						placeholder="Rechercher un contact" ng-model="search"> <span
						class="input-group-btn">
						<button class="btn btn-primary glyphicon glyphicon-search" ng-click="searhInListContact(search)"
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
		
		<c:if test="${not empty listContactsJson}">
			<script type="text/javascript">
				var listContactsJson = ${listContactsJson};
			</script >
		</c:if>
		
		
			<div ng-repeat="listContact in listContacts">
			<div class="row" style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">
				<div class="col-md-12">
					<ul class="media-list" >
						<li class="media">
						<div class="imageAndText pull-left" style="position: relative;">
							<img class="randomColor img-circle media-object" width="64" height="64" style="border: 1px solid #428bca;">
							<div class="col" style="position: absolute; z-index: 1; top: 2px; left: 3px; text-align: center; color: #ffffff; font-size: 42px;">
								<div class="col-sm-4">
						            <p>{{listContact.firstName.charAt(0).toUpperCase()}}</p>
						        </div>
					        </div>
						</div>		
							<div class="media-body">						
								<h4 class="media-heading">{{listContact.lastName}}&nbsp;{{listContact.firstName}}</h4>
								<h4 class="media-heading" style="color: #969696;">{{listContact.phoneNumber}}</h4>
							</div>
							<a type="button" class="btn btn-warning pull-right" href="contactDetails?id={{listContact.id}}"> <span
										class="glyphicon glyphicon-pencil"></span>&nbsp;Modifier
							</a> 
							</li>
					</ul>
				</div>
			</div>
		</div>
		



	</div>



</body>
</html>