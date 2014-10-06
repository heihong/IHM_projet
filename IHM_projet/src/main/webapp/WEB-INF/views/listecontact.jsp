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
		<c:forEach items="${contactList}" var="contact">
			<div class="row" style="outline: 1px solid #428bca; margin: 1px; padding: 20px 5px 20px 5px;">
				<div class="col-md-12">
					<ul class="media-list" >
						<li class="media"><a class="pull-left" ><img
								class="randomColor img-circle media-object" width="64" height="64" style="border: 1px solid #428bca;"></a>
							<div class="media-body">
							  <a class="btn btn-default pull-right"><span class="glyphicon glyphicon-zoom-in"></span>&nbsp;Détail</a>
								<h4 class="media-heading">${contact.value.lastName}&nbsp;${contact.value.firstName}</h4>
								<h4 class="media-heading">${contact.value.phoneNumber}</h4>
							</div></li>
					</ul>
				</div>
			</div>
		</c:forEach>

	</div>


</body>
</html>