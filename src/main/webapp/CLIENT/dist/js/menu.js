document.addEventListener("DOMContentLoaded", function ()
{
    //Xu ly menu mobile
    var button_menulist_mobile_show = document.getElementById('button_menulist_mobile_show');
    var menulist_mobile = document.getElementById('menulist_mobile');
    var button_menulist_mobile_close = document.getElementById('button_menulist_mobile_close');
    var bg_close_menu = document.getElementById('bg-close-menu');

    button_menulist_mobile_show.onclick = function () { menulist_mobile.style.display = "block"; };

    var close_element = function () { menulist_mobile.style.display = "none"; };
    button_menulist_mobile_close.onclick = function () { close_element(); };
    bg_close_menu.onclick = function () { close_element();};

    //Xu ly nut gio hang
    var cart_icon = document.getElementsByClassName("cart-icon");
    var cart_right = document.getElementsByClassName("cart-right");
    var button_cart_mobile_close = document.getElementById("button_cart_mobile_close");
    var bg_close_cart = document.getElementById("bg-close-cart");

    cart_icon[0].onclick = function () { cart_right[0].style.display = "block"; };
    cart_icon[1].onclick = function () { cart_right[0].style.display = "block"; };

    var close_cart_right = function () { cart_right[0].style.display = "none"; };
    button_cart_mobile_close.onclick = function () { close_cart_right(); };
    bg_close_cart.onclick = function () { close_cart_right(); };

    //Xu ly nút tìm kiếm 
    var search_icon = document.getElementsByClassName("search-icon");
    var search_right = document.getElementsByClassName("search-right");
    var button_search_close = document.getElementById("button_search_close");
    var bg_close_search = document.getElementById("bg-close-search");

    search_icon[0].onclick = function () { search_right[0].style.display = "block"; };
    search_icon[1].onclick = function () { search_right[0].style.display = "block"; };

    var close_search_right = function () { search_right[0].style.display = "none"; };
    button_search_close.onclick = function () { close_search_right(); };
    bg_close_search.onclick = function () { close_search_right(); };

    //Xu ly menu khi cuon chuot
    //Xu ly khi cuon chuot
    if ($(window).scrollTop() === 0)
    {
            $('.navbar').removeClass('denDam').addClass('denMo')
            $('#back-to-top').addClass('anDi')
    }

    $(window).scroll(function ()
    {
            //Xy ly menuBar
            if ($(this).scrollTop() < 400 || $(window).scrollTop() == 0)
            {
                    $('#menu_header').removeClass('fixed-menu-top');
                    $('#menu_header_mobile').removeClass('fixed-menu-top');
            }
            else
            {
                $('#menu_header').addClass('fixed-menu-top');
                $('#menu_header_mobile').addClass('fixed-menu-top');
            }

    });

}, false);