
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Simple Tables</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
           folder instead of downloading all of them to reduce the load. -->
    <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="../../dist/css/My_CSS.css">
    <script src="../../dist/js/MyJS.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="../../index.jsp" class="logo"><b>Admin</b>DTD</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">Bạn có 4 tin nhắn</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                                            </div>
                                            <h4>
                                                Đội hỗ trợ
                                                <small><i class="fa fa-clock-o"></i> 5 phút trước</small>
                                            </h4>
                                            <p>Làm sao để nhiều người tiếp cận trang?</p>
                                        </a>
                                    </li><!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                                            </div>
                                            <h4>
                                                Đội thiết kế
                                                <small><i class="fa fa-clock-o"></i> 2 tiếng trước</small>
                                            </h4>
                                            <p>Tại sao không nhập những thiết kế mới?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                                            </div>
                                            <h4>
                                                Nhà phát triển
                                                <small><i class="fa fa-clock-o"></i> Hôm nay</small>
                                            </h4>
                                            <p>Bạn có muốn thay đổi xu hướng?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                                            </div>
                                            <h4>
                                                Người bán hàng
                                                <small><i class="fa fa-clock-o"></i> Hôm qua</small>
                                            </h4>
                                            <p>Bán hàng siêu chạy?</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">Xem tất cả tin nhắn</a></li>
                        </ul>
                    </li>
                    <!-- Notifications: style can be found in dropdown.less -->
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">Bạn có 10 thông báo</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-red"></i> 5 khách hàng mới tham khảo trang
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart text-green"></i> 25 đơn hàng trong hôm nay
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user text-red"></i> Có 1 thành viên mới
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">Xem tất cả</a></li>
                        </ul>
                    </li>

                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="../../dist/img/logo.jpg" class="user-image" alt="User Image"/>
                            <span class="hidden-xs">Admin DTD</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="../../dist/img/logo.jpg" class="img-circle" alt="User Image" />
                                <p>
                                    Xin chào quản lý
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-right">
                                    <a href="../cauhinh/dang-nhap.jsp" class="btn btn-default btn-flat">Đăng xuất</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Tìm kiếm..."/>
                    <span class="input-group-btn">
              <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
            </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">THỐNG KÊ</li>
                <li class="treeview">
                    <a href="../../index.jsp">
                        <i class="fa fa-pie-chart"></i> <span>Chi Tiết Thống Kê</span>
                    </a>
                </li>
                <li class="header">QUẢN LÝ</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder"></i>
                        <span>Sản Phẩm</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="../sanpham/mau-sac.jsp"><i class="fa fa-circle-o"></i>Màu Sắc</a></li>
                        <li><a href="../sanpham/size-sp.jsp"><i class="fa fa-circle-o"></i>Size Sản Phẩm</a></li>
                        <li><a href="../sanpham/danh-sach-sp.jsp"><i class="fa fa-circle-o"></i>Danh Sách Sản Phẩm</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-archive"></i>
                        <span>Đơn hàng</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="../donhang/tat-ca-don-hang.jsp"><i class="fa fa-circle-o"></i> Tất Cả Đơn Hàng</a></li>
                        <li><a href="../donhang/don-da-giao.jsp"><i class="fa fa-circle-o"></i> Đơn Đã Giao</a></li>
                        <li><a href="../donhang/dang-xu-ly.jsp"><i class="fa fa-circle-o"></i> Đang xử lý</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="../khachhang/khachhang.jsp">
                        <i class="fa fa-users"></i>
                        <span>Khách Hàng</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="../bangtin/bangtin.jsp">
                        <i class="fa  fa-comment-o"></i>
                        <span>Bảng tin</span>
                    </a>
                </li>
                <li>
                    <a href="../hopthu/hopthu.jsp">
                        <i class="fa fa-envelope"></i> <span>Hộp Thư</span>
                        <small class="label pull-right bg-yellow">12</small>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa  fa-gear"></i> <span>Cấu hình</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="../cauhinh/dang-nhap.jsp"><i class="fa fa-circle-o"></i> Đăng Nhập</a></li>
                        <li><a href="../cauhinh/man-hinh-khoa.jsp"><i class="fa fa-circle-o"></i> Màn hình khóa</a></li>
                        <li><a href="../cauhinh/404.jsp"><i class="fa fa-circle-o"></i> 404 Lỗi</a></li>
                        <li><a href="../cauhinh/500.jsp"><i class="fa fa-circle-o"></i> 500 Lỗi</a></li>
                        <li><a href="../cauhinh/trang-trong.jsp"><i class="fa fa-circle-o"></i> Trang Trống</a></li>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
</div><!-- ./wrapper -->
</body>
</html>
