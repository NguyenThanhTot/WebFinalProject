<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Dashboard</title>
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="../../dist/css/My_CSS.css">
    <script src="../../dist/js/MyJS.js"></script>

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
                      <li class="header">B???n c?? 4 tin nh???n</li>
                      <li>
                        <!-- inner menu: contains the actual data -->
                        <ul class="menu">
                          <li><!-- start message -->
                            <a href="#">
                              <div class="pull-left">
                                <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                              </div>
                              <h4>
                                ?????i h??? tr???
                                <small><i class="fa fa-clock-o"></i> 5 ph??t tr?????c</small>
                              </h4>
                              <p>L??m sao ????? nhi???u ng?????i ti???p c???n trang?</p>
                            </a>
                          </li><!-- end message -->
                          <li>
                            <a href="#">
                              <div class="pull-left">
                                <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                              </div>
                              <h4>
                                ?????i thi???t k???
                                <small><i class="fa fa-clock-o"></i> 2 ti???ng tr?????c</small>
                              </h4>
                              <p>T???i sao kh??ng nh???p nh???ng thi???t k??? m???i?</p>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <div class="pull-left">
                                <img src="../../dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                              </div>
                              <h4>
                                Nh?? ph??t tri???n
                                <small><i class="fa fa-clock-o"></i> H??m nay</small>
                              </h4>
                              <p>B???n c?? mu???n thay ?????i xu h?????ng?</p>
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <div class="pull-left">
                                <img src="../../dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                              </div>
                              <h4>
                                Ng?????i b??n h??ng
                                <small><i class="fa fa-clock-o"></i> H??m qua</small>
                              </h4>
                              <p>B??n h??ng si??u ch???y?</p>
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li class="footer"><a href="#">Xem t???t c??? tin nh???n</a></li>
                    </ul>
                  </li>
                  <!-- Notifications: style can be found in dropdown.less -->
                  <li class="dropdown notifications-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-bell-o"></i>
                      <span class="label label-warning">10</span>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="header">B???n c?? 10 th??ng b??o</li>
                      <li>
                        <!-- inner menu: contains the actual data -->
                        <ul class="menu">
                          <li>
                            <a href="#">
                              <i class="fa fa-users text-red"></i> 5 kh??ch h??ng m???i tham kh???o trang
                            </a>
                          </li>
      
                          <li>
                            <a href="#">
                              <i class="fa fa-shopping-cart text-green"></i> 25 ????n h??ng trong h??m nay
                            </a>
                          </li>
                          <li>
                            <a href="#">
                              <i class="fa fa-user text-red"></i> C?? 1 th??nh vi??n m???i
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li class="footer"><a href="#">Xem t???t c???</a></li>
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
                          Xin ch??o qu???n l??
                        </p>
                      </li>
                      <!-- Menu Footer-->
                      <li class="user-footer">
                        <div class="pull-right">
                          <a href="../cauhinh/dang-nhap.jsp" class="btn btn-default btn-flat">????ng xu???t</a>
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
                        <input type="text" name="q" class="form-control" placeholder="T??m ki???m..." />
                        <span class="input-group-btn">
                            <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i
                                    class="fa fa-search"></i></button>
                        </span>
                    </div>
                </form>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="header">TH???NG K??</li>
                    <li class="treeview">
                        <a href="../../index.jsp">
                            <i class="fa fa-pie-chart"></i> <span>Chi Ti???t Th???ng K??</span>
                        </a>
                    </li>
                    <li class="header">QU???N L??</li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-folder"></i>
                            <span>S???n Ph???m</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="../sanpham/mau-sac.jsp"><i class="fa fa-circle-o"></i>M??u S???c</a></li>
                            <li><a href="../sanpham/size-sp.jsp"><i class="fa fa-circle-o"></i>Size S???n Ph???m</a></li>
                            <li><a href="../sanpham/danh-sach-sp.jsp"><i class="fa fa-circle-o"></i>Danh S??ch S???n
                                    Ph???m</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-archive"></i>
                            <span>????n h??ng</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="../donhang/tat-ca-don-hang.jsp"><i class="fa fa-circle-o"></i> T???t C??? ????n
                                    H??ng</a></li>
                            <li><a href="../donhang/don-da-giao.jsp"><i class="fa fa-circle-o"></i> ????n ???? Giao</a>
                            </li>
                            <li><a href="../donhang/dang-xu-ly.jsp"><i class="fa fa-circle-o"></i> ??ang x??? l??</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="../khachhang/khachhang.jsp">
                            <i class="fa fa-users"></i>
                            <span>Kh??ch H??ng</span>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="../bangtin/bangtin.jsp">
                            <i class="fa  fa-comment-o"></i>
                            <span>B???ng tin</span>
                        </a>
                    </li>
                    <li>
                        <a href="../hopthu/hopthu.jsp">
                            <i class="fa fa-envelope"></i> <span>H???p Th??</span>
                            <small class="label pull-right bg-yellow">12</small>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa  fa-gear"></i> <span>C???u h??nh</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="../cauhinh/dang-nhap.jsp"><i class="fa fa-circle-o"></i> ????ng Nh???p</a></li>
                            <li><a href="../cauhinh/man-hinh-khoa.jsp"><i class="fa fa-circle-o"></i> M??n h??nh kh??a</a>
                            </li>
                            <li><a href="../cauhinh/404.jsp"><i class="fa fa-circle-o"></i> 404 L???i</a></li>
                            <li><a href="../cauhinh/500.jsp"><i class="fa fa-circle-o"></i> 500 L???i</a></li>
                            <li><a href="../cauhinh/trang-trong.jsp"><i class="fa fa-circle-o"></i> Trang Tr???ng</a>
                            </li>
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
                    B???ng Tin
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> TRANG CH???</a></li>
                    <li class="active">B???NG TIN</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">

                <!-- Default box -->
                <div class="box">
                    <div class="box-header">
                        <button class="btn btn-default pull-right btn_add_new_item"><i class="fa fa-plus"></i> Th??m
                            m???i</button>
                    </div><!-- /.box-header -->
                    <div class="box-body no-padding">
                        <table class="table table-condensed">
                            <tbody>
                                <tr>
                                    <th style="width: 60px">STT</th>
                                    <th style="width: 100px">TI??U ?????</th>
                                    <th style="width: 200px">N???I DUNG</th>
                                    <th style="width: 50px"></th>
                                </tr>
                                <tr class="item_in_table">
                                    <td>1.</td>
                                    <td style="width: 100px;">BLACK FRIDAY ??? SALE S???P S??N H??NG NG??N ??U ????I L??N ?????N 70%
                                    </td>
                                    <td style="width: 200px">
                                        Nh??n d???p sinh nh???t l??n 7, 360 boutique GI???M GI?? L??N ?????N 50% to??n b??? hoodie,
                                        kho??c gi??, qu???n jeans, qu???n ??u, sweater, s?? mi v?? c??? ??o ph??ng, k??? c??? H??NG M???I
                                        V???.
                                        <br>
                                        Ch????ng tr??nh SALE l???n nh???t n??m b???n nhanh ch??n rinh th???t nhi???u qu?? nh??!
                                    </td>
                                    <td>
                                        <div style="font-size: 18px;" class="my_editANDremove">
                                            <i class="fa fa-edit btn-edit-item"></i>
                                            <i class="fa fa-trash-o btn-del-item"></i>
                                        </div>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->

            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </div><!-- ./wrapper -->

    <!-- Form t???o m???i d??? li???u -->
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
                            <h3 class="box-title">Th??m b???ng tin m???i</h3>
                            <i class="fa fa-times" id="close-form-addnew"></i>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form role="form">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="tieude">Ti??u ?????</label>
                                    <input type="text" class="form-control" id="tieude" placeholder="Nh???p ti??u ?????">
                                </div>
                                <div class="form-group">
                                    <label for="noidung">N???i dung</label><br>
                                    <textarea name="" id="noidung" cols="65%" rows="10"></textarea>
                                </div>
                                <div class="box-footer">
                                    <button type="submit" class="btn btn-primary">Th??m m???i</button>
                                    <button class="btn btn-secondary">H???y</button>
                                </div>
                        </form>
                    </div><!-- /.box -->
                </div>
                <!--/.col (left) -->
                <div class="col-md-3"></div>
            </div>
        </section>
    </div>
    <!-- End Form t???o m???i d??? li???u -->

    <!-- Form EDIT d??? li???u -->
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
                            <h3 class="box-title">C???p nh???t tin</h3>
                            <i class="fa fa-times" id="close-form-edit"></i>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form role="form">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="tieude">Ti??u ?????</label>
                                    <input type="text" class="form-control" id="tieude" placeholder="Nh???p ti??u ?????"
                                        value="BLACK FRIDAY ??? SALE S???P S??N H??NG NG??N ??U ????I L??N ?????N 70%">
                                </div>
                                <div class="form-group">
                                    <label for="noidung">N???i dung</label><br>
                                    <textarea name="" id="noidung" cols="65%"
                                        rows="10"> Nh??n d???p sinh nh???t l??n 7, 360 boutique GI???M GI?? L??N ?????N 50% to??n b??? hoodie,kho??c gi??, qu???n jeans, qu???n ??u, sweater, s?? mi v?? c??? ??o ph??ng, k??? c??? H??NG M???I V???. Ch????ng tr??nh SALE l???n nh???t n??m b???n nhanh ch??n rinh th???t nhi???u qu?? nh??!</textarea>
                                </div>
                                <div class="box-footer">
                                    <button type="submit" class="btn btn-primary">C???p nh???t</button>
                                    <button class="btn btn-secondary">H???y</button>
                                </div>
                        </form>
                    </div><!-- /.box -->
                </div>
                <!--/.col (left) -->
                <div class="col-md-3"></div>
            </div>
        </section>
    </div>
    <!-- End Form EDIT d??? li???u -->

    <!-- jQuery 2.1.3 -->
    <script src="../../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="../../plugins/slimScroll/jquery.slimScroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js" type="text/javascript"></script>
</body>

</html>
