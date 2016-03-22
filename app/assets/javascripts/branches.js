$(document).on("ready",function(){
  if($('.js-view_map').length){
    $('.js-view_map').on("click",branchLocation);
  }
})

var map;

function branchLocation(){
  var position = {
    lat: $('.js-latitude').data('lat'),
    lng: $('.js-longitude').data('lon')
  };

  createBranchMap(position);
}

function createBranchMap(position){
  var mapOptions = {
    center: position,
    zoom: 18
  };

  map = new google.maps.Map($('#branchMap')[0], mapOptions);
  createBranchMarker(position);
}

function createBranchMarker(position) {
  var marker = new google.maps.Marker({
   position: position,
   map: map,
   title:$('.js-branch-name')[0].innerText
   });
   marker.addListener('click', function() {
    infowindow.open(map, marker);
  });
}

var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading"></h4>'+
      '<div id="bodyContent">'+
      '<p><b>Uluru</b>'+
      '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
      'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
      '(last visited June 22, 2009).</p>'+
      '</div>'+
      '</div>';


var infowindow = new google.maps.InfoWindow({
   content: contentString
 });

function branchLocationError(err){
  console.log("What are you using, IE 7??", err);
}
