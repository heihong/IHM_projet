var app = angular.module('ihm', []);

app.controller('newContactController',['$scope', function($scope){ 

	$scope.editing=true;
	
	  $scope.listAddress = [];

	  // get the Address and push it in a list ($scope.listAddress)
	  $scope.newAddress = function(){

	        $scope.listAddress.push({kindAddress:$scope.kindAddress, number:$scope.number,  street:$scope.street,city:$scope.city,zipCode:$scope.zipCode });

	     
	      $scope.kindAddress='';
	  	  $scope.number='';
	  	  $scope.street='';
	  	  $scope.zipCode='';
	  	  $scope.city=''; 
	  	  
	  	
	  	$scope.editing=false;
	   
	  	console.log($scope.listAddress);

	    };
	    
	    
	 
	    

	
	
}]);