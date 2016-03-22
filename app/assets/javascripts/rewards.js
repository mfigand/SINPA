// $(document).on("ready",function(){
//   if($('.btn-rewards_map').length){
//     debugger
//     $('.btn-rewards_map').on('click', function(){
//       navigator.geolocation.getCurrentPosition(rewardsLocation, onError)
//     });
//   }
// })
$(document).on("ready",function(){
  if($('#rewards_map2').length){
    navigator.geolocation.getCurrentPosition(rewardsLocation, onError)
  }
})

var map;

function rewardsLocation(position){
  // debugger
  latitude = [];
  $('.js-rewards-lat').each(function(){
    var lat = $(this).data('rewards-lat');
    latitude.push(lat);
  });

  longitude = [];
  $('.js-rewards-long').each(function(){
    var long = $(this).data('rewards-long');
    longitude.push(long);
  });

  for (i = latitude.length-1; i >= 0; i--){
    var position = {
      lat: latitude[i],
      lng: longitude[i]
    };
    if (i = latitude.length-1){
      createRewardsMap(position);
    };
     createRewardsMarker(position)
  }
}

function createRewardsMap(position){
  var mapOptions = {
    center: position,
    zoom: 17
  };
  map = new google.maps.Map($('#rewards_map2')[0], mapOptions);
  createRewardsMarker(position);
}

function createRewardsMarker(position) {
  var marker = new google.maps.Marker({
   position: position,
   map: map
   });
}

function onError(err){
  console.log("What are you using, IE 7??", err);
}
