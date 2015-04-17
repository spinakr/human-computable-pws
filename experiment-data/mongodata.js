db.datas.group(
   {
     key: { hcpId: 1},
     cond: {},
     reduce: function ( curr, result ) {
          for(i=1;i<curr.calcTimes.length;i++){	
	       result.sum += curr.calcTimes[i];
               result.count++;
               result.calcTimes.push(curr.calcTimes[i]);
	  };
          result.age = curr.age;
          result.occupation = curr.occupation;
          
          
     },
     initial: {sum : 0 , count: 0, calcTimes: []},
     finalize: function(result){
          result.avg = result.sum / result.count;
	
     }
   }
)
