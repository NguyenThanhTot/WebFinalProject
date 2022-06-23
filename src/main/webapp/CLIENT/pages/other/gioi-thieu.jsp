<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <title>Giới thiệu DTD</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <!-- LINK FONT MENU font-family: 'Arima Madurai', cursive;-->
    <link href="https://fonts.googleapis.com/css2?family=Arima+Madurai:wght@900&display=swap" rel="stylesheet">
    <!-- LINK FONT LOGO MENU font-family: 'Bungee Shade', cursive;-->
    <link href="https://fonts.googleapis.com/css2?family=Bungee+Shade&display=swap" rel="stylesheet">
    <!-- Link css for menu -->
    <link rel="stylesheet" href="../../my_css/menu.css">
</head>


<body>
    <!------------------------------------- Start menu ------------------------------------->
    <!-- Menu pc -->
    <div id="menu_header" class="container-fluid pt-2 pb-2 menu_header">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-1"><a href="../trang-chu.jsp" style="font-family: 'Bungee Shade', cursive; color: #fff; font-size: 40px; text-decoration: none;">DTD</a>
                </div>
                <div class="col-sm-9 justify-content-end d-flex align-self-center pr-0">
                    <a href="../trang-chu.jsp" class="menu-item pr-4"> Trang chủ<div class="underline_menu-item"></div></a>
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
                <div class="col-2"><a href="../trang-chu.jsp" style="font-family: 'Bungee Shade', cursive; color: #fff; font-size: 40px; text-decoration: none;">DTD</a>
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
    <div id="menulist_mobile" class="container-fluid m-0 menulist_mobile" style="position: fixed; top: 0; bottom: 0; z-index: 3;">
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
                        <a href="../trang-chu.jsp" class="menu-item d-flex justify-content-center text-dark"> Trang chủ</a>
                        <hr>
                        <a href="Nam.jsp" class="menu-item d-flex justify-content-center text-dark">Nam</a>
                        <hr>
                        <a href="Nu.jsp" class="menu-item d-flex justify-content-center text-dark">Nữ</a>
                        <hr>
                        <a href="uu-dai.jsp" class="menu-item d-flex justify-content-center text-dark">Khuyến mãi</a>
                        <hr>
                        <a href="bang-tin.jsp" class="menu-item d-flex justify-content-center text-dark">Tin tức</a>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Giao diện khi click vào cart-button -->
    <div class="cart-right container-fluid" style="position: fixed;  left:0;top: 0;right:0;bottom:0;overflow-y:scroll;">
        <div class="row m-0" style="width: 100%;">
            <div id="bg-close-cart" class="col-4 col-sm-4 col-lg-8 p-0 bg-dark" style="min-height: 100vh; opacity: 0.5;">
            </div>
            <div class="col-8 col-sm-8 col-lg-4 bg-white">
                <div class="mb-5 mt-3 row justify-content-center">
                    <div class="col-5 col-sm-5">
                        <div class="pt-2 pb-2">GIỎ HÀNG</div>
                    </div>
                    <div class="col-5 col-sm-5 align-self-center d-flex justify-content-end" id="button_cart_mobile_close">
                        <i class="fa fa-times" aria-hidden="true" style="font-size: 30px;"></i>
                    </div>
                </div>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src=".././img/Nu/AoThun/thun3.jpg" alt="" class="img-fluid" style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;"> Áo thun Oversize Unisex UNS12 - Trắng, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center" style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">290.000Đ </div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../../img/Img_Nam/Aokhoac/aokhoac3a.png" alt="" class="img-fluid" style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo khoác kaki unisex TH Store - Đỏ, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center" style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">197.000Đ</div>
                            <div class="col-2 col-sm-6 align-self-center d-flex justify-content-end">
                                <i class="fa fa-times" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="product-detail row justify-content-center">
                    <div class="col-2 col-5 col-sm-3 pt-2">
                        <img src="../../img/Img_Nam/Asomi/aosomi14b.png" alt="" class="img-fluid" style="max-height: 70px;">
                    </div>
                    <div class="col-7 col-5 col-sm-7 pt-2">
                        <div class="row" style="font-size: 13px;">Áo sơ mi sọc caro - Vàng, L</div>
                        <div class="row pt-2">
                            <div class="col-2 col-sm-2 p-0">
                                <div class="d-flex justify-content-center" style="background-color: grey; width: 24px; height: 24px;">1</div>
                            </div>
                            <div class="col-6 col-sm-4">350.000Đ</div>
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
                        837.000Đ
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
    <div class="search-right container-fluid" style="position: fixed; left:0;top: 0;right:0;bottom:0;overflow-y:scroll; z-index: 10;">
        <div class="row m-0" style="width: 100%;">
            <div id="bg-close-search" class="col-4 col-sm-4 col-lg-8 p-0 bg-dark" style="min-height: 100vh; opacity: 0.5;">
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
                    <input type="text" class="form-control col-10 col-lg-10" name="search" id="search" aria-describedby="helpId" placeholder="Nội dung tìm kiếm">
                    <div class="col-1 col-lg-1 m-0 p-0 pt-2"><i class="fa fa-search" aria-hidden="true" style="font-size: 20px; height: 100%; cursor: pointer;"></i></div>
                </div>
            </div>
        </div>
    </div>
    <!------------------------------------- End menu ------------------------------------->

    <div class="container mb-4 bg-light p-2 mt-4">
        <a href="../trang-chu.jsp" class="home-icon text-dark"><i class="fa fa-home" aria-hidden="true"></i></a>
        <span>/</span>
        <a href="" class="category-present text-dark" style="font-weight: 500; text-decoration: none;">Giới thiệu DTD</a>
    </div>

    <div class="container-fluid">
        <div class="container">
            <div class="row justify-content-center">
                <divc class=" col-lg-12 col-md-12 col-sm-12">
                    <h3>GIỚI THIỆU VỀ THƯƠNG HIỆU THỜI TRANG NAM-NỮ DTD</h3>
                    <h6>HƠN MƯỜI NĂM ÔN VINH BẢN LĨNH ĐÀN ÔNG VIỆT , QUYẾN RŨ VÀ NĂNG ĐỘNG CỦA NGƯỜI PHỤ NỮ - ĐÓ LÀ CẢ MỘT QUÁ TRÌNH</h6>
                    <p>
                        <span>Sau hơn 1 thập kỉ theo đuổi sứ mệnh: <strong>Mang tới trải nghiệm mặc toàn diện, về cả chất lượng sản phẩm lẫn tính thời trang đổi mới,</strong>
                        DTD đã để lại những dấu ấn đặc biệt trong tâm trí khách hàng,  dần trở nên que thuộc với đại đa số các bạn nam nữ fashion hiện đại, với các phong cách luôn nằm trong tốp đầu các thương hiệu thời trang tại Việt Nam
                    </span>
                    </p>
                    <p>
                        <strong>I.Hành trình 10 năm đồng hành cùng thời trang Việt Nam</strong>
                    </p>
                    <p>
                        <span>Được thành lập năm 2008, DTD là một trong những thương hiệu tiên phong về chất liệu. Giữa vô vàn các hãng thời trang không rõ nguồn gốc xuất xứ, chất lượng không có sự đảm bảo,
                         DTD khẳng định mình là thương hiệu Việt uy tín chất lượng cao, kiến tạo chuẩn mực mới cho thời trang dành cho nam và nữ hiện đại.
                        </span>
                    </p>
                    <p>
                        <span>Năm 2014, DTD tiếp tục đầu tư mạnh về chất liệu thông qua sự hợp tác với Itochu - Công ty dệt may Nhật Bản chuyên cung cấp, quản lý chất liệu vải theo tiêu chuẩn khắt khe bậc nhất Nhật Bản,
                        đi đầu về công nghệ sản xuất chất liệu mới (như vải sợi tre, sợi Nano, sợi cafe,...) Hơn cả là đối tác về cung cấp, Itochu còn là đối tác về chiến lược của thương hiệu,
                         Itochu Group đã cố vấn toàn diện về hoạt động mở rộng thị trường, quản trị chất lượng sản phẩm và tối ưu nhân lực lãnh đạo,... Việc hợp tác toàn diện giữa thương hiệu DTD và
                          Itochu đã không chỉ tăng sự hiện diện của thương hiệu trên thị trường bán lẻ, mà còn nới rộng và góp phần nâng tầm Owen trở thành thương hiệu thời trang nam-nữ hàng đầu Việt Nam.
                        </span>
                    </p>
                    <p>
                        <span>Năm 2018, sau 10 năm không ngừng phát triển và cải tiến, DTD đánh dấu sự thành công vang dội với hơn 1000 đại lý, showroom và 100 cửa hàng bán lẻ tại các tỉnh và thành phố lớn,
                        trở thành hãng thời trang nam có độ phủ lớn nhất cả nước. Một trong những yếu tố lớn nhất làm nên thành công của DTD chính là sự kỹ càng trong việc tuyển chọn chất liệu lẫn nghiên
                         cứu xu hướng thời trang quốc tế, thông qua đó, DTD đã cho ra mắt nhiều bộ sưu tập đột phá, đón nhận sự hưởng ứng nồng nhiệt và là lựa chọn tin cậy của đông đảo nam giới.
                          Năm 2018 cũng chứng kiến DTD mở rộng thương hiệu theo chiều sâu, hướng tới những đối tượng khách hàng trẻ hơn với những chiến lược tái định vị về cả thông điệp, hình ảnh thương hiệu lẫn chiến lược truyền thông.
                    </span>
                    </p>
                    <p><span>
                    <img class="img-fluid" src="../img/Img_Nam/Aokhoac/aokhoac5.png" alt="">
                    <img class="img-fluid" src="../img/Img_Nam/Aothun/aothun16a.png" alt="">
                </span></p>
                    <p>
                        <span>Năm 2021, sau 2 năm chuyển mình, DTD đã ước đầu đón nhận hành quả sau khi các thế hệ nam nữ trẻ đều nhận diện được thương hiệu thời trong DTD của chúng tôi.
                        Đồng thời, các sản phẩm được ra mắt với mẫu đa dạng hơn, phong phú hơn về thiết kế, luon nổ lực để tạo ra những bản thiết kế nổi bậc về cae kiểu dang và fashion cho thế hệ trẻ ngày nay
                    </span>
                    </p>
                    <p>
                        <strong>II. Định vị thương hiệu của DTD - Điều tạo nên giá trị khác biệt cho thương hiệu</strong>
                    </p>
                    <p><span>DTD không chỉ dừng lại ở chất liệu thời trang và phong cách như những thương hiệu khác đang làm.</span></p>
                    <p><strong>DTD mang tới giải pháp thời trang, đem lại sự tin cho nam giới và năng động, quyến rũ cho nữ giới.</strong></p>
                    <p><span>Lấy ý tưởng kết hợp bản sắc thời trang và tinh thần bản lĩnh của thế hệ người Việt trẻ, DTD là người bạn đồng hành trong những chặng đường chinh phục thử thách của đàn ông Việt. </span></p>
                    <p>
                        <Span>Qua đó, DTD đểxuất giá trị và vị thế của mình như sau:</Span>
                    </p>
                    <p>
                        <strong> "LỊCH LÃM THỜI TRANG NAM,  NĂNG ĐỘNG THỜI TRANG NỮ"</strong>
                    </p>
                    <p>
                        <span>
                        <img class="img-fluid" src="../img/Img_Nam/Hinh/thoi-trang-nam-nu.png" alt="">
                    </span>
                    </p>
                    <p>
                        <strong>III. Triết lý cốt lõi DTD đã và đang xây dựng</strong>
                    </p>
                    <p><strong>1.Biến nam giới trở thành một quý ông thực thụ</strong></p>
                    <p>
                        <span>Thông thường, mọi người luôn nghĩ chỉ có phụ nữ nên mới đầu tư vào thời trang. Đàn ông là người xuề xòa, bề ngoài không cần chăm chút kỹ lưỡng. DTD đã chứng minh điều ngược lại.
                         Nam giới cũng có thế giới thời trang riêng của họ. Phong cách thời trang góp phần toát lên được bản lĩnh đích thực của phái mạnh.</span>
                    </p>
                    <img class="img-fluid" src="../img/Img_Nam/Hinh/anhNam.jpg" alt="">
                    <p>
                        <span>DTD tin rằng đàn ông thành đạt, tự tin trong cuộc sống luôn có phong cách ăn mặc rõ nét: lịch lãm, đĩnh đạc và đậm hơi thở hiện đại. Do đó, Owen hoạt động với tôn chỉ “Giúp nam giới thành quý ông” nhằm nâng tầm hình ảnh đàn ông Việt,
                        không chỉ bên ngoài mà còn cả bên trong.</span>
                    </p>
                    <p><strong>2.Trở thành một người phụ nữ quyến rũ và thời trang</strong></p>
                    <p>
                        <span>Với người phụ nữ, thời trang đối với họ là vô cùng cần thiết, luôn cập nhật và khiến mình sáng, quyến rũ hơn.
                        Họ luôn cần những mẫu thời trang chất lượng, độc là và đều trên hết là sexy nhưng vẫn bảo đảm là cơ thể không lộ khuyết điểm.
                    </span>
                    </p>
                    <p>
                        <span>Đến với DTD, chúng tôi sẽ cô bạn thấy được sự tự tin, quyến rũ và còn tri thức khi diện lên những thiết kế của công ty chúng tôi</span>
                    </p>
                    <img class="img-fluid" src="../img/Img_Nam/Hinh/" alt="">
            </div>
        </div>
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
                    <p class="mt-3"><b>VP Phía Bắc: </b>Tầng 17 tòa nhà Viwaseen, 48 Phố Tố Hữu, Trung Văn, Nam Từ Liêm, Hà Nội.</p>
                    <p><b>VP Phía Nam:</b> Lô III.25, Đường 19/5A, Nhóm CN III, Khu Công Nghiệp Tân Bình, P. Tây Thạnh, Q. Tân Phú, HCM</p>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-2">
                    <div class="mt-5 mb-0" style="font-size: 14px; font-weight: 500;font-family: 'Arima Madurai', cursive; color: #fff;">
                        GIỚI THIỆU VỀ DTD
                    </div>
                    <div class="mt-1"><a href="gioi-thieu.jsp" style="text-decoration: none; color:gray; font-size: 14px;">Giới thiệu
                            DTD</a></div>
                    <div class="mt-2"><a href="chi-nhanh.jsp" style="text-decoration: none; color:gray; font-size: 14px;">Hệ thống
                            cửa hàng</a></div>
                    <div class="mt-2"><a href="lien-he.jsp" style="text-decoration: none; color:gray; font-size: 14px;">Liên hệ</a>
                    </div>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-3">
                    <div class="mt-5 mb-0" style="font-size: 14px; font-weight: 500;font-family: 'Arima Madurai', cursive;  color: #fff;">
                        HỖ TRỢ KHÁCH HÀNG
                    </div>
                    <div class="mt-1"><a href="size.jsp" style="text-decoration: none; color:gray; font-size: 14px;">Hướng dẫn
                            chọn kích cỡ</a></div>
                    <div class="mt-2"><a href="van-chuyen.jsp" style="text-decoration: none; color:gray; font-size: 14px;">Chính sách
                            vận chuyển</a></div>
                    <div class="mt-2"><a href="doi-tra.jsp" style="text-decoration: none; color:gray; font-size: 14px;">Chính sách
                            đổi trả</a></div>
                </div>
                <div class="col-12 col-sm-12 col-md-4 col-lg-3">
                    <div class="mt-5 mb-0" style="font-size: 14px; font-weight: 500;font-family: 'Arima Madurai', cursive;  color: #fff;">
                        KẾT NỐI VỚI CHÚNG TÔI</div>
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="../my_js/menu.js"></script>
</body>

</html>