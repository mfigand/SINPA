$(document).on("ready",function(){
  if($('.js-btn-runkeeper').length){
    $(".js-btn-runkeeper").on("click", getActivity);
  }
})

var getActivity = function (){
  $('.kms_counter').empty();
  $('.total_kms_counter').empty();
  $('.level_counter').empty();
  $('.races_counter').empty();

  var activity_request = $.get('/api_sinparun');
  activity_request.done(get_kms);
  };

  function get_kms(response){
    // debugger
    var sync_acount = $.get('/users/sync_account', response);
    sync_acount.done(get_kms_response);
    sync_acount.fail(get_kmsError);
  };

  function get_kms_response(kms_response){
    // debugger
    $(".message").text("Successful synchronization");
    $(".kms_counter").text(kms_response.sinparun_kms);
    $(".total_kms_counter").text(kms_response.total_kms);
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
