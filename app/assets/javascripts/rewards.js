$(document).on("ready",function(){
  if($('.js-rewards-lat').length){
    navigator.geolocation.getCurrentPosition(onLocation, onError);
  }
})

var map;

function onLocation(position){
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
      createMap(position);
    };
     createMarker(position)
  }
}

function onError(err){
  console.log("What are you using, IE 7??", err);
}

function createMarker(position) {
  var marker = new google.maps.Marker({
   position: position,
   map: map
   });
}

function createMap(position){
  var mapOptions = {
    center: position,
    zoom: 17
  };
  map = new google.maps.Map($('#rewards_map')[0], mapOptions);
  createMarker(position);
}
