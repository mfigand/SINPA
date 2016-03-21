$(document).on("ready",function(){
  if($('.js-view_map').length){
    $(".js-view_map").on("click", navigator.geolocation.getCurrentPosition(onLocation, onError));
  }
})

var map;

function onLocation(position){
  var position = {
    lat: $('.js-latitude').data('lat'),
    lng: $('.js-longitude').data('lon')
  };

  createMap(position);
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

  map = new google.maps.Map($('#map')[0], mapOptions);
  createMarker(position);
}
