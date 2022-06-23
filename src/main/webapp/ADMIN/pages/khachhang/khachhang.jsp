<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>AdminLTE 2 | Simple Tables</title>
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

  <link rel="stylesheet" href="<%=request.getContextPath()%>/ADMIN/dist/css/My_CSS.css">
<%--  <script src="<%=request.getContextPath()%>/ADMIN/dist/js/MyJS.js"></script>--%>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<style>
  *{font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;}
</style>
<body class="skin-blue">
  <div class="wrapper">

<%--    <jsp:include page="../header.jsp"></jsp:include>--%>
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
            <a href="User">
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

    <!-- Right side column. Contains the navbar and content of the page -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Khách hàng
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i>TRANG CHỦ</a></li>
          <li class="active">KHÁCH HÀNG</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-xs-12">
            <div class="box">
              <div class="box-header">
                <button class="btn btn-default pull-right btn_add_new_item"><i class="fa fa-plus"></i> Thêm mới</button>
              </div><!-- /.box-header -->
              <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                  <tr>
                    <th style="width: 50px;">ID</th>
                    <th style="width: 80px;">Họ và tên</th>
                    <th style="width: 100px;">Số điện thoại</th>
                    <th style="width: 200px;">Email</th>
                    <th style="width: 200px;">Địa chỉ</th>
                    <th style="width: 100px"></th>
                  </tr>
<%--                  <tr class="item_in_table">--%>
<%--                    <td>183</td>--%>
<%--                    <td>Nguyễn Trần Nguyên</td>--%>
<%--                    <td>0123456789</td>--%>
<%--                    <td>nguyentran@gmail.com</td>--%>
<%--                    <td>KP6, phường Linh Trung, quận Thủ Đức, TP HCM</td>--%>
<%--                    <td>--%>
<%--                      <div style="font-size: 18px;" class="my_editANDremove">--%>
<%--                        <i class="fa fa-edit btn-edit-item"></i>--%>
<%--                        <i class="fa fa-trash-o btn-del-item"></i>--%>
<%--                      </div>--%>
<%--                    </td>--%>
<%--                  </tr>--%>
<%--                  <form  action="ServletAdmin" method=post>--%>
                  <c:forEach items="${listU}" var="user">
                    <tr class="item_in_table">
                      <td>${user.userId}</td>
                      <td>${user.fullName}</td>
                      <td>${user.phoneNumber}</td>
                      <td>${user.email}</td>
                      <td>${user.detail_address}</td>
                      <td>
                        <div style="font-size: 18px;" class="my_editANDremove">
                          <button class="fa fa-edit btn-edit-item"></button>
                          <a href="deleteUser?uid=${user.userId}" class="fa fa-trash-o btn-del-item"></a>
                        </div>
                      </td>
                    </tr>
                  </c:forEach>
<%--                  </form>--%>
                </table>
              </div><!-- /.box-body -->
            </div><!-- /.box -->
          </div>
        </div>
      </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
  </div><!-- ./wrapper -->

  <!-- Form tạo mới dữ liệu -->
  <div id="add_new_item">
    <section>
      <div id="bg_add_new_item"></div>
      <div class="row">
        <!-- left column -->
        <div class="col-md-3"></div>
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header">
              <h3 class="box-title">Thêm mới khách hàng</h3>
              <i class="fa fa-times" id="close-form-addnew"></i>
            </div><!-- /.box-header -->
            <!-- form start -->
            <form role="form">
              <div class="box-body">
                <div class="form-group">
                  <label for="id_kh">ID</label>
                  <input type="text" class="form-control" id="id_kh" placeholder="Nhập ID">
                </div>
                <div class="form-group">
                  <label for="ho_kh">Họ</label>
                  <input type="text" class="form-control" id="ho_kh" placeholder="Nhập Họ">
                </div>
                <div class="form-group">
                  <label for="ten_kh">Tên</label>
                  <input type="text" class="form-control" id="ten_kh" placeholder="Nhập Tên">
                </div>
                <div class="form-group">
                  <label for="sdt_kh">Số điện thoại</label>
                  <input type="tel" class="form-control" id="sdt_kh" placeholder="Nhập Số điện thoại">
                </div>
                <div class="form-group">
                  <label for="email_kh">Email</label>
                  <input type="text" class="form-control" id="email_kh" placeholder="Nhập Email">
                </div>
                <div class="form-group">
                  <label for="diachi_kh">Địa chỉ</label>
                  <input type="text" class="form-control" id="diachi_kh" placeholder="Nhập địa chỉ">
                </div>
              </div><!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Thêm mới</button>
                <button class="btn btn-secondary">Hủy</button>
              </div>
            </form>
          </div><!-- /.box -->
        </div>
        <!--/.col (left) -->
        <div class="col-md-3"></div>
      </div>
    </section>
  </div>
  <!-- End Form tạo mới dữ liệu -->

  <!-- Form tạo mới dữ liệu -->
  <div id="edit_item">
    <section>
      <div id="bg_add_new_item"></div>
      <div class="row">
        <!-- left column -->
        <div class="col-md-3"></div>
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header">
              <h3 class="box-title">Cập nhật thông tin khách hàng</h3>
              <i class="fa fa-times" id="close-form-edit"></i>
            </div><!-- /.box-header -->
            <!-- form start -->
            <form role="form">
              <div class="box-body">
                <div class="form-group">
                  <label for="id_kh">ID</label>
                  <input type="text" class="form-control" id="id_kh" placeholder="Nhập ID" value="183">
                </div>
                <div class="form-group">
                  <label for="ho_kh">Họ</label>
                  <input type="text" class="form-control" id="ho_kh" placeholder="Nhập Họ" value="Nguyễn">
                </div>
                <div class="form-group">
                  <label for="ten_kh">Tên</label>
                  <input type="text" class="form-control" id="ten_kh" placeholder="Nhập Tên" value="Trần Nguyên">
                </div>
                <div class="form-group">
                  <label for="sdt_kh">Số điện thoại</label>
                  <input type="tel" class="form-control" id="sdt_kh" placeholder="Nhập Số điện thoại" value="0123456789">
                </div>
                <div class="form-group">
                  <label for="email_kh">Email</label>
                  <input type="text" class="form-control" id="email_kh" placeholder="Nhập Email" value="nguyentran@gmail.com">
                </div>
                <div class="form-group">
                  <label for="diachi_kh">Địa chỉ</label>
                  <input type="text" class="form-control" id="diachi_kh" placeholder="Nhập địa chỉ" value="KP6, phường Linh Trung, quận Thủ Đức, TP HCM">
                </div>
              </div><!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Cập nhật</button>
                <button class="btn btn-secondary">Hủy</button>
              </div>
            </form>
          </div><!-- /.box -->
        </div>
        <!--/.col (left) -->
        <div class="col-md-3"></div>
      </div>
    </section>
  </div>
  <!-- End Form tạo mới dữ liệu -->

  <!-- jQuery 2.1.3 -->
  <script src="<%=request.getContextPath()%>/ADMIN/plugins/jQuery/jQuery-2.1.3.min.js"></script>
  <!-- Bootstrap 3.3.2 JS -->
  <script src="<%=request.getContextPath()%>/ADMIN/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <!-- Slimscroll -->
  <script src="<%=request.getContextPath()%>/ADMIN/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
  <!-- FastClick -->
  <script src="<%=request.getContextPath()%>/ADMIN/plugins/fastclick/fastclick.min.js"></script>
  <!-- AdminLTE App -->
  <script src="<%=request.getContextPath()%>/ADMIN/dist/js/app.min.js" type="text/javascript"></script>
  <!-- AdminLTE for demo purposes -->
  <!-- <script src="../../dist/js/demo.js" type="text/javascript"></script> -->
</body>

</html>
