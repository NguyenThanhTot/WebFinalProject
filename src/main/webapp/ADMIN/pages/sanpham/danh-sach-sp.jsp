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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/ADMIN/dist/css/My_CSS.css">
  <script src="<%=request.getContextPath()%>/ADMIN/dist/js/MyJS.js"></script>

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
            <li><a href="mau-sac.jsp"><i class="fa fa-circle-o"></i>Màu Sắc</a></li>
            <li><a href="size-sp.jsp"><i class="fa fa-circle-o"></i>Size Sản Phẩm</a></li>
            <li><a href="danh-sach-sp.jsp"><i class="fa fa-circle-o"></i>Danh Sách Sản Phẩm</a></li>
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
        Danh Sách Sản Phẩm
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> TRANG CHỦ</a></li>
        <li><a href="#">SẢN PHẨM</a></li>
        <li class="active">DANH SÁCH</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header">
          <button class="btn btn-default pull-right btn_add_new_item"><i class="fa fa-plus"></i> Thêm mới</button>
        </div><!-- /.box-header -->
        <div class="box-body table-responsive no-padding">
          <table class="table table-hover">
            <tbody>
            <tr>
              <th style="width: 150px">MÃ SP</th>
              <th style="width: 200px">TÊN SP</th>
              <th style="width: 150px">DANH MỤC</th>
              <th style="width: 150px">LOẠI</th>
              <th style="width: 150px">GIÁ GỐC</th>
              <th style="width: 150px">GIÁ</th>
              <th style="width: 150px">GIÁ GIẢM</th>
              <th style="width: 150px">MÔ TẢ</th>
              <th style="width: 100px"></th>
            </tr>

            <c:forEach items="${listProduct}" var="p">
              <tr class="item_in_table">
                <td style="width: 100px">${p.idProduct}</td>
                <td style="width: 150px">${p.nameProduct}</td>
                <td style="width: 100px">${p.getCategories_child().getCategory_parent().getCategory_name()}</td>
                <td style="width: 100px">${p.getCategories_child().getCategory_child_name()}</td>
                <td style="width: 100px">${p.cost}</td>
                <td style="width: 100px">${p.price}</td>
                <td style="width: 100px">${p.priceDesc}</td>
                <td style="width: 100px">${p.description}</td>
                <td style="width: 200px">
                  <div style="font-size: 18px;" class="my_editANDremove">
                    <i class="fa fa-edit btn-edit-item"></i>
                    <a href="deleteProduct?uid=${p.idProduct}"  class="fa fa-trash-o btn-del-item" ></a>
                  </div>
                </td>
              </tr>
            </c:forEach>

            </tbody>
          </table>
        </div><!-- /.box-body -->
      </div><!-- /.box -->
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
            <h3 class="box-title">Tạo mới sản phẩm</h3>
            <i class="fa fa-times" id="close-form-addnew"></i>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form role="form" action="AddProduct" method="post">
            <div class="box-body">
              <div class="form-group">
                <label>Mã sản phẩm</label>
                <input name="ma_sp_input" type="text" class="form-control" placeholder="Nhập mã sản phẩm">
              </div>
              <div class="form-group">
                <label>Tên sản phẩm</label>
                <input name="ten_sp_input" type="text" class="form-control" placeholder="Nhập tên sản phẩm">
              </div>
              <%--                <div class="form-group">--%>
              <%--                  <label>Danh mục</label>--%>
              <%--                  <select name="category" class="form-select" aria-label="Default select example">--%>
              <%--                    <c:forEach items="${listCategory}" var="category">--%>
              <%--                      <br>--%>
              <%--                      <option value="${category.category_id}">${category.category_name}</option>--%>
              <%--                    </c:forEach>--%>
              <%--                  </select>--%>
              <%--                </div>--%>
              <%--                <div class="form-group">--%>
              <%--                  <label>Loại</label>--%>
              <%--                  <select name="subCategory" class="form-select" aria-label="Default select example">--%>
              <%--                    <option value=""></option>--%>
              <%--                    <c:forEach items="${categories_childList}" var="subCategory">--%>
              <%--                      <br>--%>
              <%--                      <option value="${subCategory.subcategory_id}">${subCategory.subcategory_name}</option>--%>
              <%--                    </c:forEach>--%>
              <%--                  </select>--%>
              <%--                </div>--%>

              <div class="form-group">
                <label>Giá nhập</label>
                <input name="gia_nhap_input" type="number" class="form-control" placeholder="Nhập giá sản phẩm">
              </div>
              <div class="form-group">
                <label>Giá bán</label>
                <input name="gia_sp_input" type="number" class="form-control" placeholder="Nhập giá sản phẩm">
              </div>
              <div class="form-group">
                <label>Giá giảm</label>
                <input name="gia_giam_input" type="number" class="form-control" placeholder="Nhập giá sản phẩm">
              </div>
              <div class="form-group">
                <select name="subcategory_id" class="form-select">
                  <c:forEach items="${categories_childList}" var="sub_cat">
                    <option value="${sub_cat.category_child_id}">${sub_cat.category_child_name} - ${sub_cat.getCategory_parent().getCategory_name()}</option>
                  </c:forEach>
                </select>
              </div>
              <div class="form-group">
                <label>Mô tả</label> <br>
                <textarea name="mota_sp_input" cols="70%" rows="10"></textarea>
              </div>
            </div><!-- /.box-body -->
            <div class="box-footer">
              <button type="submit" class="btn btn-primary">Thêm mới</button>
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

<!-- Form edit dữ liệu -->
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
            <h3 class="box-title">Chỉnh sửa thông tin sản phẩm</h3>
            <i class="fa fa-times" id="close-form-edit"></i>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form role="form">
            <div class="box-body">
              <div class="form-group">
                <label for="ma_sp">Mã sản phẩm</label>
                <input type="text" class="form-control" id="ma_sp" placeholder="Nhập mã sản phẩm" value="SMABC">
              </div>
              <div class="form-group">
                <label for="ten_sp">Tên sản phẩm</label>
                <input type="text" class="form-control" id="ten_sp"
                       placeholder="Nhập tên sản phẩm" value="Áo sơ mi ABC">
              </div>
              <div class="form-group">
                <label for="danhmuc_sp">Danh mục</label>
                <input type="text" class="form-control" id="danhmuc_sp" placeholder="Nhập danh mục" value="NAM">
              </div>
              <div class="form-group">
                <label for="loai_sp">Loại</label>
                <input type="text" class="form-control" id="loai_sp" placeholder="Nhập loại" value="ÁO SƠ MI">
              </div>
              <div class="form-group">
                <label>Size sản phẩm</label>
                <div class="checkbox">
                  <label for="size-s">
                    <input type="checkbox" checked="checked" id="size-s" value="S"> S
                  </label>
                  <label for="size-m">
                    <input type="checkbox" checked="checked" id="size-m" value="M"> M
                  </label>
                  <label for="size-l">
                    <input type="checkbox" checked="checked" id="size-l" value="L"> L
                  </label>
                </div>
              </div>
              <div class="form-group">
                <label for="gia_sp">Giá</label>
                <input type="text" class="form-control" id="gia_sp"
                       placeholder="Nhập giá sản phẩm" value="199000đ">
              </div>
              <div class="form-group">
                <label for="avatar_image_product">Ảnh đại diện</label>
                <input type="file" id="avatar_image_product">
                <img src="../../dist/img/user1-128x128.jpg" alt="" style="margin: 10px 10px;">
              </div>
              <div class="form-group">
                <label for="image_product">Ảnh sản phẩm</label>
                <input type="file" id="image_product" multiple="multiple">
                <img src="../../dist/img/user1-128x128.jpg" alt="" style="margin: 10px 10px;">
                <img src="../../dist/img/user1-128x128.jpg" alt="" style="margin: 10px 10px;">
                <img src="../../dist/img/user1-128x128.jpg" alt="" style="margin: 10px 10px;">
                <img src="../../dist/img/user1-128x128.jpg" alt="" style="margin: 10px 10px;">
              </div>
              <div class="form-group">
                <label for="mota_sp">Mô tả</label> <br>
                <textarea name="" id="mota_sp" cols="70%" rows="10"></textarea>
              </div>
            </div><!-- /.box-body -->
            <div class="box-footer">
              <button type="submit" class="btn btn-primary">Cập nhật</button>
              <button type="submit" class="btn btn-secondary">Hủy</button>
            </div>
          </form>
        </div><!-- /.box -->
      </div>
      <!--/.col (left) -->
      <div class="col-md-3"></div>
    </div>
  </section>
</div>
<!-- End Form edit dữ liệu -->

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

<script src="<%=request.getContextPath()%>/ADMIN/dist/js/MyJS.js"></script>

</body>

</html>
