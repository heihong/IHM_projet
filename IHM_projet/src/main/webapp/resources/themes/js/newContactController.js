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
  


	    
	    
};