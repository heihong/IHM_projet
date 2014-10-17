angular.module('ihm', ['ui.bootstrap']);
var newContactController = function ($scope, $timeout) {
	
	
//datepiker	
  $scope.today = function() {
    $scope.dt = new Date();
  };
  $scope.today();


  $scope.clear = function () {
    $scope.dt = null;
  };


  $scope.open = function() {
    $timeout(function() {
      $scope.opened = true;
    });
  };

  $scope.dateOptions = {
    'year-format': "'yy'",
    'starting-day': 1
  };
  
  //adress
  
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
	    
	    // get Address
	    
	    $scope.listAddress = null;
	
		 
		 // get the object json in a list ($scope.listAddress)
		$scope.add = function() {
			if(typeof(listAddressJson) != 'undefined'){
				 $scope.listAddress = listAddressJson;
			}
			
			

		};
		
		$scope.add();

	    
	    
};