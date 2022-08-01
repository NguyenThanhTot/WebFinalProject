<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="<%=request.getContextPath()%>/ADMIN/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<%=request.getContextPath()%>/ADMIN/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="<%=request.getContextPath()%>/ADMIN/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/ADMIN/dist/css/My_CSS.css">

</head>

<style>
    * {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

</style>

<body class="skin-blue">
<!-- Site wrapper -->
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
                                    <a href="../dang-nhap.jsp" class="btn btn-default btn-flat">Đăng xuất</a>
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
                        <li><a href="don-da-giao.jsp"><i class="fa fa-circle-o"></i> Đơn Đã Giao</a></li>
                        <li><a href="dang-xu-ly.jsp"><i class="fa fa-circle-o"></i> Đang xử lý</a></li>
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
                        <li><a href="../dang-nhap.jsp"><i class="fa fa-circle-o"></i> Đăng Nhập</a></li>
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

    <!-- =============================================== -->

    <!-- Right side column. Contains the navbar and content of the page -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Đơn Hàng
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> TRANG CHỦ</a></li>
                <li><a href="#">ĐƠN HÀNG</a></li>
                <li class="active">TẤT CẢ</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tbody>
                                <tr>
                                    <th style="width: 100px">MÃ ĐƠN HÀNG</th>
                                    <th style="width: 100px">ID KH</th>
                                    <th style="width: 100px">NGÀY ĐẶT HÀNG</th>
                                    <th style="width: 100px">TÌNH TRẠNG</th>
                                    <th style="width: 100px"></th>
                                </tr>

                                <c:forEach items="${listOrderFinish}" var="o">
                                    <tr class="item_in_table">
                                        <td style="width: 100px">${o.idOrder}</td>
                                        <td style="width: 100px">${o.idAccount}</td>
                                        <td style="width: 100px">${o.orderTime}</td>
                                        <td style="width: 100px">
                                            <div class="label status_order">${o.status}</div>
                                        </td>
                                        <td>
                                            <div style="font-size: 18px;" class="my_editANDremove">
                                                <i class="fa fa-edit"></i>
                                                <a href="">Xem chi tiết</a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>

                                <%--                                        <tr class="item_in_table">--%>
                                <%--                                            <td style="width: 50px">1</td>--%>
                                <%--                                            <td style="width: 100px">DH-01</td>--%>
                                <%--                                            <td style="width: 100px">183</td>--%>
                                <%--                                            <td style="width: 100px">--%>
                                <%--                                                - <span class="MaSP_info">SMABC</span>  X <span class="SL_info">1</span><br>--%>
                                <%--                                                - <span class="MaSP_info">SMABA</span>  X <span class="SL_info">1</span><br>--%>
                                <%--                                                - <span class="MaSP_info">SMABC</span>  X <span class="SL_info">1</span><br>--%>
                                <%--                                            </td>--%>
                                <%--                                            <td style="width: 100px">1900000VNĐ</td>--%>
                                <%--                                            <td style="width: 100px">20/11/2021</td>--%>
                                <%--                                            <td style="width: 100px">--%>
                                <%--                                                <small class="label label-info">Đang xử lý</small>--%>
                                <%--                                            </td>--%>
                                <%--                                            <td>--%>
                                <%--                                                <div style="font-size: 18px;" class="my_editANDremove">--%>
                                <%--                                                    <i class="fa fa-edit"></i>--%>
                                <%--                                                    <i class="fa fa-trash-o btn-del-item"></i>--%>
                                <%--                                                </div>--%>
                                <%--                                            </td>--%>
                                <%--                                        </tr>--%>
                                <%--                                        <tr class="item_in_table">--%>
                                <%--                                            <td style="width: 50px">2</td>--%>
                                <%--                                            <td style="width: 100px">DH-02</td>--%>
                                <%--                                            <td style="width: 100px">123</td>--%>
                                <%--                                            <td style="width: 100px">--%>
                                <%--                                                - <span class="MaSP_info">SAMC</span>  X <span class="SL_info">1</span><br>--%>
                                <%--                                                - <span class="MaSP_info">SASM</span>  X <span class="SL_info">1</span><br>--%>
                                <%--                                                - <span class="MaSP_info">SMAA</span>  X <span class="SL_info">1</span><br>--%>
                                <%--                                            </td>--%>
                                <%--                                            <td style="width: 100px">1299000VNĐ</td>--%>
                                <%--                                            <td style="width: 100px">20/11/2021</td>--%>
                                <%--                                            <td style="width: 100px">--%>
                                <%--                                                <small class="label label-success">Đã giao</small>--%>
                                <%--                                            </td>--%>
                                <%--                                            <td>--%>
                                <%--                                                <div style="font-size: 18px;" class="my_editANDremove">--%>
                                <%--                                                    <i class="fa fa-edit"></i>--%>
                                <%--                                                    <i class="fa fa-trash-o btn-del-item"></i>--%>
                                <%--                                                </div>--%>
                                <%--                                            </td>--%>
                                <%--                                        </tr>--%>
                                </tbody>
                            </table>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>
            </div>
        </section>
    </div><!-- /.content-wrapper -->
</div><!-- ./wrapper -->

<!-- jQuery 2.1.3 -->
<script src="<%=request.getContextPath()%>/ADMIN/plugins/jQuery/jQuery-2.1.3.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="<%=request.getContextPath()%>/ADMIN/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- SlimScroll -->
<script src="<%=request.getContextPath()%>/ADMIN/plugins/slimScroll/jquery.slimScroll.min.js" type="text/javascript"></script>
<!-- FastClick -->
<script src='<%=request.getContextPath()%>/ADMIN/plugins/fastclick/fastclick.min.js'></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/ADMIN/dist/js/app.min.js" type="text/javascript"></script>

<script>
    $(document).ready(function(){
        //Xử lý nút xóa
        var status = $('.status_order');
        console.log(status.length);
        for (let i = 0; i < status.length; i++) {
            console.log(status[i].innerHTML);
            if(status[i].innerHTML=="Đã hoàn thành"){
                status[i].classList.add("label-success");
            }
            if(status[i].innerHTML=="Đơn hàng bị hủy"){
                status[i].classList.add("label-danger");
            }
        }
    });
</script>
</body>

</html>
