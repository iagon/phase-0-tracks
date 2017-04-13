$(document).ready(function(){
    $("div").hide();

    $(".button1").click(function(){
        $("div").show();
    });

    $(".button2").click(function(){
        $("ol").fadeOut()
    });

    $(".button3").click(function(){
        $("ol").fadeIn();
    });

    $("h1").mouseenter(function(){
        $("h1").css("background-color", "red");
    });

    $("h1").mouseleave(function(){
        $("h1").css("background-color", "black");
    });


});


/*
    $("article").hover(function(){
        alert("You entered the article");
    });,

    function(){
      alert("You left the article");
    });
*/