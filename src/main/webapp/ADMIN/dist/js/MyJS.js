document.addEventListener("DOMContentLoaded", function ()
{
    //Xử lý nút thêm mới
    var btn_add_new_item = document.getElementsByClassName('btn_add_new_item')[0];
    var close_form_addnew = document.getElementById('close-form-addnew');
    var add_new_item = document.getElementById('add_new_item');

    btn_add_new_item.onclick = function () { add_new_item.style.display = "block" }
    close_form_addnew.onclick = function (){console.log(add_new_item.style.display = "none")}

    //Xử lý nút xóa
    var btn_del_item = document.getElementsByClassName('btn-del-item');
    var item_in_table = document.getElementsByClassName('item_in_table');

    for (let i = 0; i < btn_del_item.length; i++) {
        const element = btn_del_item[i];
        element.onclick = function () {item_in_table[i].remove();}
    }

    //Xử lý nút edit
    var btn_edit_item = document.getElementsByClassName('btn-edit-item')[0];
    var close_form_edit = document.getElementById('close-form-edit');
    var edit_item = document.getElementById('edit_item');

    btn_edit_item .onclick = function () {edit_item.style.display = "block"}
    close_form_edit.onclick = function (){edit_item.style.display = "none"}

}, false);