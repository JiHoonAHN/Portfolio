$(document).ready(function() {
    $(window).on('scroll', function() {
        if ($(window).scrollTop()) {
            $("#portfolio-head").addClass('header-bc');
        }else{
            $("#portfolio-head").removeClass('header-bc');
        }
    });
});
