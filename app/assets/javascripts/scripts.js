window.onload = function(){
    var menu = document.getElementsByClassName('right_menu')[0];
    var btn = document.getElementsByClassName('icon-menu')[0];

    btn.addEventListener('click', function(){
        menu.classList.toggle('active');
    })
}
$(document).on('page:load', function() {
    $(".icon-menu").click(function(t){ $(".right_menu").toggleClass("active")
    })});