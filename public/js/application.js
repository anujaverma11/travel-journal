$(document).on("ready", function() {
  hideLoginForm();
})

var hideLoginForm = function() {
  $( '.hide' ).on('click', function() {
    event.preventDefault;
    $( '.login-form' ).toggle(1000)
    $( '.show' ).toggle(1000);
  })
}


var tripitenary = $("#trip-itinerary-template").html();
var $div = $(tripitenary);

var postJournalname = function(data){
  $.ajax({
    method: 'POST',
    url:'/appointments',
    data: data,
    dataType: 'JSON'
  }).done(function(response){
  appendappointment(response)
})
}