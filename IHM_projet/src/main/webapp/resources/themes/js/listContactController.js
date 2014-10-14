var app = angular.module('ihm', []);

app.controller('listContactController',['$scope', function($scope){ 

	
	 $scope.listContacts = null;
	 $scope.search='';
	 var i=0;
	 
	 // get the object json in a list ($scope.listContact)
	var save = function() {
		if(typeof(listContactsJson) != 'undefined'){
			 $scope.listContacts = listContactsJson;
		}

	};

	save();
	
		$scope.getVal=function(search){
		save();
		
				$scope.listContacts=$scope.listContacts.filter(function (value) {
					  return (new RegExp("^" +search, "i")).test(value.lastName);});
				
		
		
		
	};
	
	

}]);

// http://toddmotto.com/everything-about-custom-filters-in-angular-js/
//filter the list by what the user put in the input
app.filter('searchitem', function () {
	  return function (items, search) {
	    var filtered = [];
	    filtered=items.filter(function (value) {
			  return (new RegExp("^" +search, "i")).test(value.lastName)||(new RegExp("^" +search, "i")).test(value.firstName)||(new RegExp("^" +search, "i")).test(value.phoneNumber);});
	    return filtered;
	  };
	});
