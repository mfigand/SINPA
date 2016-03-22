$(document).on("ready",function(){
  if($('.js-btn-runkeeper').length){
    $(".js-btn-runkeeper").on("click", getActivity);
  }
})

var getActivity = function (){
  $('.kms_counter').empty();
  $('.level_counter').empty();
  $('.races_counter').empty();

  var activity_request = $.get('/api_sinparun');
  activity_request.done(get_kms);
  activity_request.fail(activityError);

  function activityError(error){
    if (error.status == 406){
      $(".error").text(error.responseText)
    }
    else {
      $(".error").text("Sorry synchronization error")
    }
  };

  function get_kms(response){
    var sync_acount = $.get('/users/sync_account', response);
    sync_acount.done(get_kms_response);
    sync_acount.fail(get_kmsError);
  };

  function get_kms_response(kms_response){
    $(".message").text("Successful synchronization");
    $(".kms_counter").text(kms_response.kms);
    $('.level_counter').text(kms_response.level);
    $('.races_counter').text(kms_response.races);
  };

  function get_kmsError(error){
    if (error.status == 406){
      $(".error").text(error.responseText)
    }
    else {
      $(".error").text("Sorry synchronization error")
    }
  };
};
