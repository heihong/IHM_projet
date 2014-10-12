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
	
	// filter the list by what the user put in the input
	$scope.searhInListContact=function(search){
		save(); 
		if(search=='') 
		{
			save();
		}
		else
		{
			for(i;i<$scope.listContacts.length;i++) 
			{
				$scope.listContacts=$scope.listContacts.filter(function (value) {
					  return (new RegExp("^" +search, "i")).test(value.lastName)||(new RegExp("^" +search, "i")).test(value.firstName);});
				
			}
		}
		
	};
	
	

}]);