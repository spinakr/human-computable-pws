hcp.service('DataService',['$timeout', 'chromeStorage', '$resource',
    function($timeout, chromeStorage, $resource){
        var self = this;
        this.pw = '';
        this.url = '';
        var tmp;
        function handleMessage(){
            if(tmp.pwValue){
                self.pw = tmp.pwValue;
            }
            if(tmp.newUrl){
                self.url = tmp.newUrl;
            }
        }
        try{
            chrome.runtime.onMessage.addListener(function(message,sender){
                tmp = message;
                $timeout(handleMessage);
            });            
        }
        catch(err){
            console.log("not extension")
        }
}]);
