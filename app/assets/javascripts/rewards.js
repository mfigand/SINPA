$(document).on("ready",function(){

  if($('.input-field').length){
    $('#filterrific_results').hide()
  }
  if($('#filterrific_search_query').length && $('#filterrific_search_query')[0].defaultValue != ""){
    $('#filterrific_results').show()
  }
  if($('#rewards_map2').length){
    navigator.geolocation.getCurrentPosition(rewardsLocation, onError)
  }

var map;

  function rewardsLocation(userPosition){
    var myPosition = {
      lat: userPosition.coords.latitude,
      lng: userPosition.coords.longitude
     };

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

    var position = {
      lat: latitude,
      lng: longitude
     };

     createRewardsMap(myPosition);
     createRewardsMarker(position);
  }

  function createRewardsMap(position){
    var mapPosition = {
      lat: position.lat[0],
      lng: position.lng[0]
     };
    var mapOptions = {
      center: position,
      zoom: 12
    };
    map = new google.maps.Map($('#rewards_map2')[0], mapOptions);

    var pinColor = "2F76EE"; // a random blue color that i picked
    var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
                new google.maps.Size(21, 34),
                new google.maps.Point(0,0),
                new google.maps.Point(10, 34));
    var pinShadow = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_shadow",
                new google.maps.Size(40, 37),
                new google.maps.Point(0, 0),
                new google.maps.Point(12, 35));
    var mapMarker = new google.maps.Marker({
     position: position,
     map: map,
     icon: pinImage,
     title: $('.js-user-name').data('user-name'),
     shadow: pinShadow
     });
     mapMarker.addListener('click', function() {
      infowindow.open(map, mapMarker);
    });

    debugger
    var user_name = $('.js-user-name').data('user-name');
    var contentString = '<div id="content">'+
          '<div id="siteNotice">'+
          '</div>'+
          '<h1 id="firstHeading" class="firstHeading"></h4>'+
          '<div id="bodyContent">'+
          '<p><b>'+ user_name +'</b>'+
          '</div>'+
          '</div>';
    var infowindow = new google.maps.InfoWindow({
       content: contentString
     });

  }

  function createRewardsMarker(position) {
    // debugger
    for (i = position.lat.length-1; i >= 0; i--){
      var branch_name = $('.js-rewards-name')[0].innerText;
      var branch_rewards = [];
      $('.js-branch-reward').each(function(){
        var reward = $(this).data('branch-rewards');
        branch_rewards.push(reward);
      })
      var markerPosition = {
        lat: position.lat[i],
        lng: position.lng[i]
       };
      var marker = new google.maps.Marker({
       position: markerPosition,
       map: map
       });
       marker.addListener('click', function() {
        infowindow.open(map, marker);
      });
      var contentString = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h1 id="firstHeading" class="firstHeading"></h4>'+
            '<div id="bodyContent">'+
            '<p><b>'+ branch_name +'</b>'+
            '<p>'+branch_rewards+'</p>'+
            '</div>'+
            '</div>';
      var infowindow = new google.maps.InfoWindow({
         content: contentString
       });
     }
  }

  function onError(err){
    console.log("What are you using, IE 7??", err);
  }

})
