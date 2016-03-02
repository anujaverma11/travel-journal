$(document).ready(function() {
  $("#birthdate").datepicker();
  $("#birthdate").click(function() {
    var selected = $("#dropdown option:selected").text();
    var birthdate = $("#birthdate").val();
    if (birthdate === "") {
      alert("Please select your birthdate.");
      }
    else {
      var data ={ birth_date: birthdate}
      }
        var userId = $('#user_id').val();
            $.ajax({
              method:"patch",
              url: '/user/'+ userId,
              data: data
            }).done(function(){
              console.log("success")
            })

    });
});