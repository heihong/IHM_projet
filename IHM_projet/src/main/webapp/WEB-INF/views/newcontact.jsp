<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
	
	<div class="navbar navbar-default navbar-static-top">
      <style>
        .body{padding-top:70px}
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
          <h1 class="text-primary">Nouveau contact</h1>
          <hr style="background-color:#428BCA; height:3px;"
          draggable="true">
        </div>
        <div class="col-md-12">
          <form class="form-horizontal" role="form">
            <div class="form-group">
              <div class="col-sm-2">
                <label for="inputName" class="control-label">Nom</label>
              </div>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="inputName" placeholder="nom">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-2">
                <label for="inputFirstName" class="control-label">Prénom</label>
              </div>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="inputFirstName" placeholder="prénom">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-2">
                <label for="phone" class="control-label">Téléphone</label>
              </div>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="phone" placeholder="numéro de téléphone">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-2">
                <label for="email" class="control-label">Email</label>
              </div>
              <div class="col-sm-10">
                <input type="email" class="form-control" id="email" placeholder="email">
              </div>
            </div>
            <div id="adress">
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="number" class="control-label">Numéro</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="number" placeholder="numéro de rue">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="streetname" class="control-label">Nom de la rue</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="streetname" placeholder="nom de la rue">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="street" class="control-label">Ville</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="street" placeholder="nom de la rue">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="zipcode" class="control-label">Code Postal</label>
                </div>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="zipcode" placeholder="code postal">
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
       <div class="footer">
      <div class="form-group">
        <div class="pull-right">
          <button type="button" class="btn btn-danger" draggable="true">
            <span class="glyphicon glyphicon-remove-circle"></span>&nbsp;Annuler</button>&nbsp;
          <button type="button" class="btn btn-success">
            <span class="glyphicon glyphicon-ok-circle"></span>&nbsp;Enregistrer</button>
        </div>
      </div>
    </div>
    </div>
   

</body>
</html>