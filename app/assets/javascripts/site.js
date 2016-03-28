$(document).on("ready",function(){
  var home_url = window.location.pathname.split("/")
  // debugger
  if (home_url[1] === "users" && (home_url[2] === "sign_in" || home_url[2] === "sign_up" || home_url[2] === undefined || home_url[3] === "edit") ){
    $('.nav_bar').hide();
    $('.panel').hide();
    $('.home_body').addClass('users_body');
  }
  if (home_url[1] === "companies" && (home_url[2] === "sign_in" || home_url[2] === "sign_up" || home_url[2] === undefined || home_url[3] === "edit") ){
    $('.nav_bar').hide();
    $('.panel').hide();
    $('.home_body').addClass('companies_body');
  }
  if (home_url[1] === "employees" && (home_url[2] === "sign_in" || home_url[2] === "sign_up" || home_url[2] === undefined || home_url[3] === "edit") ){
    $('.nav_bar').hide();
    $('.panel').hide();
    $('sing_up_link').hide();
    $('.home_body').addClass('employees_body');
  }
  if (home_url[1] === "employees" && (home_url[2] === "sign_in") ){
    $('sing_up_link').text("");
  }
  if (home_url[0] === "" && home_url[1] === "" ){
    $('.nav_bar').hide();
    $('.panel').hide();
    $('.home_body').addClass('comun_body');
  }
})
