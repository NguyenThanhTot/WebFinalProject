document.addEventListener("DOMContentLoaded", function ()
{
    var product_item =  document.getElementsByClassName('image-product');
    for (let i = 0; i < product_item.length; i++) {
        product_item[i].onclick = function () {location.href = "../chi-tiet-san-pham.html";};
        
    }

}, false);