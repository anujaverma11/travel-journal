$(document).ready(function(){
        $(".button-visited-places").click(function(e) {
            e.preventDefault();
            console.log("Anuja")
            $("#visitedPlaceForm").show();
        });
        $(".visited-places-submit").click(function(e) {
            $("#visitedPlaceForm").hide();
        });


    });

