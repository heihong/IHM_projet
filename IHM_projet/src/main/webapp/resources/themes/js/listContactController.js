var app = angular.module('ihm', []);
var listContactController = function ($scope) {
		
	
	 $scope.listContacts = null;
	 $scope.search='';
	 var i=0;
	 
	 // get the object json in a list ($scope.listContact)
	$scope.save = function() {
		if(typeof(listContactsJson) != 'undefined'){
			 $scope.listContacts = listContactsJson;
		}

	};

	$scope.save();
	
		$scope.getVal=function(search){
			$scope.save();
		
				$scope.listContacts=$scope.listContacts.filter(function (value) {
					  return (new RegExp("^" +search, "i")).test(value.lastName);});
		
	};
	
	console.log( $scope.listContacts);
    
};

// http://toddmotto.com/everything-about-custom-filters-in-angular-js/
//filter the list by what the user put in the input
app.filter('searchitem', function () {
	  return function (items, search) {
	    var filtered = [];
	    if(items!=null){
	    	filtered=items.filter(function (value) {
				  return (new RegExp("^" +search, "i")).test(value.lastName)||(new RegExp("^" +search, "i")).test(value.firstName)||(new RegExp("^" +search, "i")).test(value.phoneNumber);});
	    }
	    
	    return filtered;
	  };
	});
