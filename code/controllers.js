angular.module('human-computable-pws.controllers', [])
.controller("MainController", function($scope, chromeStorage, DataService){
    $scope.dataService = DataService;
   
    $scope.newSiteButton=true;
    $scope.newSite = function(){
        $scope.newSiteButton = false;
    }
    
    try{
        chromeStorage.getOrElse("user", function(){
            $scope.user = null;
            return null;
        }).then(function(keyValue){
            $scope.user = keyValue;
        });
    }
    catch(err){
        console.log("Not run as extension")
    }

    $scope.loadUser = function(){
        console.log("users: %o", $scope.user);
        if(!user){
            var newUser = {
                name: $scope.uname,
                sites: [
                    new Site(0, "studweb.ntnu.no"),
                    new Site(1, "facebook.com"),
                    new Site(2, "accounts.google.com"),
                    new Site(3, "github.com")
                    ]
            };
            chromeStorage.set("user", $scope.users);
            $scope.user = newUser;
        }
    };
});


