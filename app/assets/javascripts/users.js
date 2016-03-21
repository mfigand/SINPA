// $(document).on("ready",function(){
//   $(".js-btn-runkeeper").on("click", getActivity);
//
// });
//
// var getActivity = function (){
//   $('.kms_counter').empty();
//   $('.level_counter').empty();
//   $('.races_counter').empty();
//   // var kms = $('.input_search').val().replace(" ","%20");
//   // var request = $.get('https://api.spotify.com/v1/search?type=track&q='+title);
//   // request.fail(handleError);
//   // request.done(sync_activity);
//   var self = this;
//
//   $.ajax({
//     url: "/api/kms_sinpa/" + this.id,
//     success: function (response){
//       self.info = response;
//
//       $(".kms_countere").text(self.info.name);
//       $(".level_counter").text(self.info.pkdx_id);
//       $(".races_counter").text(self.info.height);
//     }
//   })
// };
//
// function handleError (error){
//   console.log(error);
//   $(".error").text("Error: Sorry Activity not found!!");
// };
//
// function sync_activity (response){
//
// };
