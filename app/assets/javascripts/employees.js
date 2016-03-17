$(document).on("ready",function(){
  $(".js-btn-validate").on("click", validateCoupon);

});

var validateCoupon = function (){
  $(".salute").empty();
  $(".error").empty();
  $(".response").empty();
  var couponCode = {
    code:$('.validate_coupon').val()
  }

  var request = $.get('/find_coupon', couponCode);
  request.done(modify_coupon);
  request.fail(couponError);
};

function couponError(error){
  if (error.status == 406){
    $(".error").text(error.responseText)
  }
  else {
    $(".error").text("Sorry coupon is not valid")
  }
};

function modify_coupon(response){
  console.log(response);
  $(".response").text("Your code was succesfully validated")
};
