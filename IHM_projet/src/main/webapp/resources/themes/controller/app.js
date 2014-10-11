var app = angular.module('ihm', []);

app.controller('main', function($scope,$http){ 

	
	 $scope.listContacts = null;
	 $scope.search='';
	 var i=0;
	 

	var save = function() {
		if(typeof(listContactsJson) != 'undefined'){
			 $scope.listContacts = listContactsJson;
		}

	};

	save();
	
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
	
	

});