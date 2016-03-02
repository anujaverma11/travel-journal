$(document).ready(function(){
    $( "button#facebookAuth" ).on( "click", function( event ) {
        event.preventDefault();
        var ref = new Firebase("http://travel-journal.firebaseio.com");
        ref.authWithOAuthPopup("facebook", function(error, authData) {
          if (error) {
            console.log("Login Failed!", error);
          } else {
            console.log("Authenticated successfully:", authData);
            var data ={
              facebookDisplayName: authData.facebook.displayName,
              facebookUid: authData.uid,
              facebookId: authData.facebook.id,
              facebookProfileImageURL: authData.facebook.profileImageURL,
              username: authData.facebook.username
              }



            var userId = $('#user_id').val();
            $.ajax({
              method:"patch",
              url: '/users/'+ userId,
              data: data
            }).done(function(){
              console.log("success")
            })
          }
          // remember: "sessionOnly",
          // scope: "email"
        });
    });
});