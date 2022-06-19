<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Chính sách đổi trả</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <!-- LINK FONT MENU font-family: 'Arima Madurai', cursive;-->
    <link href="https://fonts.googleapis.com/css2?family=Arima+Madurai:wght@900&display=swap" rel="stylesheet">
    <!-- LINK FONT LOGO MENU font-family: 'Bungee Shade', cursive;-->
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">
    <!-- Link css for menu -->
    <link rel="stylesheet" href=".././my_css/menu.css">


</head>

<body>
    <!------------------------------------- Start menu ------------------------------------->
    <!-- Menu pc -->
    <div id="menu_header" class="container-fluid pt-2 pb-2 menu_header">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-1"><a href="../trang-chu.jsp"
                        style="font-family: 'Bungee Shade', cursive; color: #fff; font-size: 40px; text-decoration: none;">DTD</a>
                </div>
                <div class="col-sm-9 justify-content-end d-flex align-self-center pr-0">
                    <a href="../trang-chu.jsp" class="menu-item pr-4"> Trang chủ<div class="underline_menu-item"></div>
                        </a>
                    <a href="Nam.jsp" class="menu-item pr-4">Nam<div class="underline_menu-item"></div></a>
                    <a href="Nu.jsp" class="menu-item pr-4">Nữ<div class="underline_menu-item"></div></a>
                    <a href="uu-dai.jsp" class="menu-item pr-4 ">Ưu đãi<div class="underline_menu-item"></div></a>
                    <a href="bang-tin.jsp" class="menu-item pr-4">Tin tức<div class="underline_menu-item"></div></a>
                </div>
                <div class="col-sm-2 align-self-center  d-flex justify-content-end p-0">
                    <a href="dang-nhap.jsp" class="fa fa-heart icon_menu_right" style="text-decoration: none;"></a>
                    <a href="dang-nhap.jsp" class="fa fa-user icon_menu_right"></a>
                    <i class="fas fa-box cart-icon icon_menu_right"></i>
                    <i class="fa fa-search search-icon icon_menu_right" aria-hidden="true"></i>
                </div>
            </div>
        </div>
    </div>

    <!-- Menu mobile -->
    <div id="menu_header_mobile" class="container-fluid menu_header menu_header_mobile">
        <div class="container  pt-2 pb-2">
            <div class="row justify-content-between">
                <div class="col-2"><a href="../trang-chu.jsp"
                        style="font-family: 'Bungee Shade', cursive; color: #fff; font-size: 40px; text-decoration: none;">DTD</a>
                </div>
                <div class="col-2 align-self-center d-flex justify-content-end">
                    <a href="dang-nhap.jsp" class="fa fa-heart icon_menu_right" style="text-decoration: none;"></a>
                    <a href="dang-nhap.jsp" class="fa fa-user icon_menu_right"></a>
                    <i class="fas fa-box cart-icon icon_menu_right"></i>
                    <i class="fa fa-search search-icon icon_menu_right"></i>
                    <i class="fa fa-align-justify icon_menu_right" id="button_menulist_mobile_show"></i>
                </div>
            </div>
        </div>
    </div>

    <!-- Menu khi click vào 3 gạch -->
    <div id="menulist_mobile" class="container-fluid m-0 menulist_mobile"
        style="position: fixed; top: 0; bottom: 0; z-index: 3;">
        <div class="row m-0" style="width: 100%;">
            <div id="bg-close-menu" class="col-4 p-0  bg-dark" style="height: 100vh; opacity: 0.5;"></div>
            <div class="col-8 bg-white">
                <div class="row mb-5 mt-3 mr-0 ml-0 justify-content-center">
                    <div class="col-5">
                        <div class="pt-2 pb-2">MENU</div>
                    </div>
                    <div class="col-5 align-self-center d-flex justify-content-end" id="button_menulist_mobile_close">
                        <i class="fa fa-times" aria-hidden="true" style="font-size: 30px;"></i>
                    </div>
                </div>
                <div class="menu-icon">
                    <div class="justify-content-center">
                        <a href="" class="menu-item d-flex justify-content-center text-dark"> Trang chủ</a>
                        <hr>
                        <a href="" class="menu-item d-flex justify-content-center text-dark">Nam</a>
                        <hr>
                        <a href="" class="menu-item d-flex justify-content-center text-dark">Nữ</a>
                        <hr>
                        <a href="" class="menu-item d-flex justify-content-center text-dark">Khuyến mãi</a>
                        <hr>
                        <a href="" class="menu-item d-flex justify-content-center text-dark">Liên hệ</a>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Giao diện khi click vào cart-button -->
    <div class="cart-right container-fluid" style="position: fixed;  left:0;top: 0;right:0;bottom:0;overflow-y:scroll;">
        <div class="row m-0" style="width: 100%;">
            <div id="bg-close-cart" class="col-4 col-sm-4 col-lg-8 p-0 bg-dark"
                style="min-height: 100vh; opacity: 0.5;">
            </div>
            <div class="col-8 col-sm-8 col-lg-4 bg-white">
                <div class="mb-5 mt-3 row justify-content-center">
                    <div class="col-5 col-sm-5">
                        <div class="pt-2 pb-2">GIỎ HÀNG</div>
                    </div>
                    <div class="col-5 col-sm-5 align-self-center d-flex justify-content-end"
                        id="button_cart_mobile_close">
                        <i class="fa fa-times" aria-hidden="true" style="font-size: 30px;"></i>
                    </div>
                </div>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../img/product/APHTK264-13-400x500.jpg" alt="" class="img-fluid"
                            style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi nam SKDTK241 - Xanh lá, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center"
                                    style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">399.000D</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../img/product/APHTK264-13-400x500.jpg" alt="" class="img-fluid"
                            style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi nam SKDTK241 - Xanh lá, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center"
                                    style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">399.000D</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../img/product/APHTK264-13-400x500.jpg" alt="" class="img-fluid"
                            style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi nam SKDTK241 - Xanh lá, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center"
                                    style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">399.000D</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../img/product/APHTK264-13-400x500.jpg" alt="" class="img-fluid"
                            style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi nam SKDTK241 - Xanh lá, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center"
                                    style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">399.000D</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../img/product/APHTK264-13-400x500.jpg" alt="" class="img-fluid"
                            style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi nam SKDTK241 - Xanh lá, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center"
                                    style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">399.000D</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../img/product/APHTK264-13-400x500.jpg" alt="" class="img-fluid"
                            style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi nam SKDTK241 - Xanh lá, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center"
                                    style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">399.000D</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../img/product/APHTK264-13-400x500.jpg" alt="" class="img-fluid"
                            style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi nam SKDTK241 - Xanh lá, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center"
                                    style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">399.000D</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../img/product/APHTK264-13-400x500.jpg" alt="" class="img-fluid"
                            style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi nam SKDTK241 - Xanh lá, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center"
                                    style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">399.000D</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row justify-content-center">
                    <div class="col-5 col-sm-5">
                        <div class="pt-2 pb-2">TỔNG TIỀN</div>
                    </div>
                    <div class="col-5 col-sm-5 align-self-center d-flex justify-content-end">
                        399.000Đ
                    </div>
                </div>
                <div class="mt-3 mb-4 row justify-content-center">
                    <div class="col-6 col-sm-5 d-flex justify-content-start">
                        <div class="pt-2 pb-2 btn btn-dark">
                            <a href="gio-hang.jsp" style="text-decoration: none; color: #fff; font-size: 12px;">XEM GIỎ
                                HÀNG</a>
                        </div>
                    </div>
                    <div class="col-6 col-sm-5 d-flex justify-content-end">
                        <div class="pt-2 pb-2 btn btn-dark">
                            <a href="thanh-toan.jsp" style="text-decoration: none; color: #fff; font-size: 12px;">THANH
                                TOÁN</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Giao diện khi click vào search button -->
    <div class="search-right container-fluid"
        style="position: fixed; left:0;top: 0;right:0;bottom:0;overflow-y:scroll; z-index: 10;">
        <div class="row m-0" style="width: 100%;">
            <div id="bg-close-search" class="col-4 col-sm-4 col-lg-8 p-0 bg-dark"
                style="min-height: 100vh; opacity: 0.5;">
            </div>
            <div class="col-8 col-sm-8 col-lg-4 bg-white">
                <div class="mb-5 mt-3 row justify-content-center">
                    <div class="col-5 col-sm-5">
                        <div class="pt-2 pb-2">TÌM KIẾM</div>
                    </div>
                    <div class="col-5 col-sm-5 align-self-center d-flex justify-content-end" id="button_search_close">
                        <i class="fa fa-times" aria-hidden="true" style="font-size: 30px;"></i>
                    </div>
                </div>
                <div class="form-group row justify-content-around">
                    <input type="text" class="form-control col-10 col-lg-10" name="search" id="search"
                        aria-describedby="helpId" placeholder="Nội dung tìm kiếm">
                    <div class="col-1 col-lg-1 m-0 p-0 pt-2"><i class="fa fa-search" aria-hidden="true"
                            style="font-size: 20px; height: 100%; cursor: pointer;"></i></div>
                </div>
            </div>
        </div>
    </div>
    <!------------------------------------- End menu ------------------------------------->
    <div class="container mb-4 bg-light p-2 mt-4">
        <a href="../trang-chu.jsp" class="home-icon text-dark"><i class="fa fa-home" aria-hidden="true"></i></a>
        <span>/</span>
        <a href="doi-tra.jsp" class="category-present text-dark" style="font-weight: 500; text-decoration: none;">Đổi trả</a>
    </div>
    <div class="container">
        <main id="maincontent" class="page-main">
            <span id="contentarea" tabindex="-1">

            </span>
            <div class="page-title-wrapper">
                <h2 class="page-title">
                    <span class="base" data-ui-id="page-title-wrapper">Chính sách đổi trả</span>
                </h2>
            </div>
            <div class="row">
                <div class="sidebar sidebar-main col-lg-4 col-md-12 col-sm-12">
                    <div class="sidebar-support">
                        <h3 class="sidebar-support-heading">Hỗ trợ</h3>
                        <ul class="sidebar-support-content">
                            <li><a href="van-chuyen.jsp">Chính sách vận chuyển</a></li>
                            <li><a href="doi-tra.jsp" class="active">Chính sách đổi trả</a></li>
                            <li><a href="size.jsp">Hướng dẫn chọn kích cỡ</a></li>
                        </ul>
                    </div>
                </div>
                <div class="columns col-lg-8 col-md-12 col-sm-12">
                    <div class="column main">
                        <input name="form_key" type="hidden" value="bEUE5EdBlEWq5loq">
                        <div></div>
                        <strong>1. THỜI GIAN ÁP DỤNG</strong>
                        <p>
                            <strong>05 ngày</strong>
                            &nbsp;kể từ ngày nhận hàng.
                        </p>
                        <ul>
                            <li>Với Khách hàng mua hàng tại cửa hàng: Ngày nhận hàng là ngày ghi trên hóa đơn bán hàng.
                            </li>
                            <li>Với Khách hàng mua hàng online: Ngày nhận hàng là ngày Khách hàng nhận được hàng từ đối
                                tác giao vận được DTD.</li>
                        </ul>
                        <ul>
                            <li>Với Khách hàng mua hàng tại cửa hàng: Mua hàng tại cửa hàng nào đổi trả tại chính cửa
                                hàng đó, không áp dụng đổi hàng tại các cửa hàng khác.</li>
                            <li>Với Khách hàng mua hàng online: Khách hàng đổi trả tại Văn phòng công ty (chi tiết tại
                                quy trình xử lý thủ tục đổi trả hàng).</li>
                        </ul>
                        <strong>3. ĐIỀU KIỆN ĐƯỢC ĐỔI TRẢ HÀNG</strong>
                        <ul>
                            <li>Còn hóa đơn mua hàng, còn nguyên nhãn mác, thẻ bài đính kèm sản phẩm và sản phẩm không
                                bị dơ bẩn, hư hỏng bởi những tác nhân bên ngoài cửa hàng sau khi mua sản phẩm.</li>
                            <li>Sản phẩm lỗi từ phía nhà sản xuất.</li>
                            <li>Sản phẩm mua nguyên giá.</li>
                        </ul>
                        <strong>4. KHÔNG ÁP DỤNG CHÍNH SÁCH NÀY KHI</strong>
                        <ul>
                            <li>Sản phẩm mua trong chương trình khuyến mại.</li>
                            <li>Sản phẩm quá thời hạn đổi nói trên.</li>
                            <li>Sản phẩm không còn nhãn mác, sử dụng sai quy cách, bảo quản va chạm, ma sát với vật cứng
                                làm trầy xước, hư hỏng.</li>
                            <li>Không có hóa đơn mua hàng.</li>
                            <li>Các phụ kiện của sản phẩm không còn đầy đủ (mất cúc, khóa…)</li>
                            <li>Sản phẩm đồ lót, tất và phụ kiện.</li>
                            <li>Sản phẩm đã sử dụng hoặc đã có mùi nước hoa, hóa mỹ phẩm.</li>
                            <li>Với những đơn xuất hóa đơn công ty.</li>
                        </ul>
                        <strong>5. GIÁ TRỊ ĐỔI HÀNG</strong>
                        <ul>
                            <li>Giá trị sản phẩm đổi: bằng hoặc cao hơn giá trị sản phẩm đã mua trước đó.</li>
                            <li>Nếu sản phẩm đổi có giá trị cao hơn, Quý khách thanh toán tiền chênh lệch, nếu sản phẩm
                                đổi có giá trị thấp hơn DTD không hoàn trả tiền thừa.</li>
                        </ul>
                        <strong>6. QUY TRÌNH XỬ LÝ THỦ TỤC ĐỔI TRẢ HÀNG</strong>
                        <ul>
                            <li>Với Khách hàng mua hàng tại cửa hàng: Khách hàng mang sản phẩm tới cửa hàng DTD nơi quý
                                khách mua hàng, hoặc liên hệ ngay hotline: <strong>19008079</strong>&nbsp;để nhận được
                                tư vấn phù hợp nhất.</li>
                            <li>Với Khách hàng mua hàng online, Quý khách có thể chủ động gửi hàng về VP Công ty theo
                                địa chỉ:</li>
                            <ul>
                                <li><strong>Miền Bắc:</strong>&nbsp;Số 35 đường Quyết Thắng, lô 18 cụm khu công nghiệp,
                                    phường Yên Nghĩa, quận Hà Đông, Hà Nội, Việt Nam</li>
                                <li><strong>Miền Nam:</strong>&nbsp;Phòng Chăm sóc Khách hàng, Công ty Cổ phần Kowil S
                                    Việt Nam,&nbsp; Lô III.25, Đường 19/5A, Nhóm CN III, Khu Công Nghiệp Tân Bình, P.
                                    Tây Thạnh, Q. Tân Phú, HCM.</li>
                                <li>Hoặc liên hệ ngay Hotline&nbsp;<strong>19008079&nbsp;</strong>để được NV CSKH DTD hỗ
                                    trợ lên vận đơn gửi hàng về Công ty.</li>
                            </ul>
                            <li>Công ty sẽ kiểm tra tình trạng sản phẩm và tiến hành đổi hàng với những trường hợp sản
                                phẩm đáp ứng tiêu chí của điều kiện đổi hàng trong chính sách đã cam kết.</li>
                            <li>Sau khi tiến hành kiểm tra xác minh, nhân viên CSKH của DTD sẽ liên hệ bằng điện thoại
                                hoặc email để xác nhận thông tin đổi hàng.</li>
                            <li>Quy trình xử lý thủ tục đổi hàng được thực hiện trong vòng 3 - 7 ngày tính từ lúc DTD
                                nhận đủ thông tin và các giấy tờ theo quy định từ phía khách hàng.</li>
                        </ul>
                        <strong>7. QUI ĐỊNH VỀ PHÍ VẬN CHUYỂN</strong>
                        <ul>
                            <li>Với trường hợp đổi trả hàng do phát sinh từ phía khách hàng&nbsp;<em>(chọn sai sản phẩm,
                                    màu sắc, kích cỡ…):&nbsp;</em>Khách hàng chịu phí vận chuyển 2 chiều.</li>
                        </ul>
                        <p>Với trường hợp đổi trả hàng do phát sinh từ phía DTD
                            <em>
                                (sản phẩm được giao có lỗi kỹ thuật từ nhà sản xuất hoặc bộ phận giao hàng của DTD giao
                                sai sản phẩm so với thông tin đặt hàng,...)
                            </em>: Công ty sẽ chịu phí vận chuyển 2 chiều.
                        </p>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <footer id="footer" class="container-fluid pb-3" style="background-color: #222222; color: rgb(114, 114, 114)">
        <div class="container">
            <div class="row pt-4">
                <div class="col-12 col-sm-12 col-md-12 col-lg-4" style="font-size: 13px;">
                    <div style="font-family: 'Bungee Shade', cursive; color: #fff; font-size: 50px;">DTD</div>
                    <div>
                        <b>CÔNG TY CỔ PHẦN THỜI TRANG DTD VIỆT NAM <br>
                            Hotline: 1900 8079 <br>
                            8:30 - 19:00 tất cả các ngày trong tuần.</br>
                        </b>
                    </div>
                    <p class="mt-3"><b>VP Phía Bắc: </b>Tầng 17 tòa nhà Viwaseen, 48 Phố Tố Hữu, Trung Văn, Nam Từ Liêm,
                        Hà Nội.</p>
                    <p><b>VP Phía Nam:</b> Lô III.25, Đường 19/5A, Nhóm CN III, Khu Công Nghiệp Tân Bình, P. Tây Thạnh,
                        Q. Tân Phú, HCM</p>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-2">
                    <div class="mt-5 mb-0"
                        style="font-size: 14px; font-weight: 500;font-family: 'Arima Madurai', cursive; color: #fff;">
                        GIỚI THIỆU VỀ
                        DTD</div>
                    <div class="mt-1"><a href="gioi-thieu.jsp"
                            style="text-decoration: none; color:gray; font-size: 14px;">Giới thiệu
                            DTD</a></div>
                    <div class="mt-2"><a href="chi-nhanh.jsp"
                            style="text-decoration: none; color:gray; font-size: 14px;">Hệ thống
                            cửa hàng</a></div>
                    <div class="mt-2"><a href="lien-he.jsp"
                            style="text-decoration: none; color:gray; font-size: 14px;">Liên hệ</a>
                    </div>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-3">
                    <div class="mt-5 mb-0"
                        style="font-size: 14px; font-weight: 500;font-family: 'Arima Madurai', cursive;  color: #fff;">
                        HỖ TRỢ KHÁCH
                        HÀNG</div>
                    <div class="mt-1"><a href="size.jsp"
                            style="text-decoration: none; color:gray; font-size: 14px;">Hướng dẫn
                            chọn kích cỡ</a></div>
                    <div class="mt-2"><a href="van-chuyen.jsp"
                            style="text-decoration: none; color:gray; font-size: 14px;">Chính sách
                            vận chuyển</a></div>
                    <div class="mt-2"><a href="doi-tra.jsp"
                            style="text-decoration: none; color:gray; font-size: 14px;">Chính sách
                            đổi trả</a></div>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-3">
                    <div class="mt-5 mb-0"
                        style="font-size: 14px; font-weight: 500;font-family: 'Arima Madurai', cursive;  color: #fff;">
                        KẾT NỐI VỚI
                        CHÚNG TÔI</div>
                    <div class="social_icon_contact mt-2" style="font-size: 25px;">
                        <i class="fab fa-facebook-square" style="margin-right: 10px;"></i>
                        <i class="fab fa-instagram" style="margin-right: 10px;"></i>
                        <i class="fab fa-tiktok" style="margin-right: 10px;"></i>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>

    <script src="../my_js/menu.js"></script>
</body>
</html>
