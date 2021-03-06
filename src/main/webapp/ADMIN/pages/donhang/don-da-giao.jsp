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
                  <input type="text" name="q" class="form-control" placeholder="T??m ki???m..."/>
                  <span class="input-group-btn">
                    <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
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
                    <li><a href="../sanpham/danh-sach-sp.jsp"><i class="fa fa-circle-o"></i>Danh S??ch S???n Ph???m</a></li>
                  </ul>
                </li>
                <li class="treeview">
                  <a href="#">
                    <i class="fa fa-archive"></i>
                    <span>????n h??ng</span>
                    <i class="fa fa-angle-left pull-right"></i>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="tat-ca-don-hang.jsp"><i class="fa fa-circle-o"></i> T???t C??? ????n H??ng</a></li>
                    <li><a href="../donhang/don-da-giao.jsp"><i class="fa fa-circle-o"></i> ????n ???? Giao</a></li>
                    <li><a href="dang-xu-ly.jsp"><i class="fa fa-circle-o"></i> ??ang x??? l??</a></li>
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
                    <li><a href="../cauhinh/man-hinh-khoa.jsp"><i class="fa fa-circle-o"></i> M??n h??nh kh??a</a></li>
                    <li><a href="../cauhinh/404.jsp"><i class="fa fa-circle-o"></i> 404 L???i</a></li>
                    <li><a href="../cauhinh/500.jsp"><i class="fa fa-circle-o"></i> 500 L???i</a></li>
                    <li><a href="../cauhinh/trang-trong.jsp"><i class="fa fa-circle-o"></i> Trang Tr???ng</a></li>
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
                    ????n H??ng
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> TRANG CH???</a></li>
                    <li><a href="#">????N H??NG</a></li>
                    <li class="active">T???T C???</li>
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
                                            <th style="width: 50px">STT</th>
                                            <th style="width: 100px">M?? ????N H??NG</th>
                                            <th style="width: 100px">ID KH</th>
                                            <th style="width: 100px">S???N PH???M</th>
                                            <th style="width: 100px">T???NG TI???N</th>
                                            <th style="width: 100px">NG??Y ?????T H??NG</th>
                                            <th style="width: 100px">T??NH TR???NG</th>
                                            <th style="width: 100px"></th>
                                        </tr>
                                        <tr class="item_in_table">
                                            <td style="width: 50px">1</td>
                                            <td style="width: 100px">DH-02</td>
                                            <td style="width: 100px">123</td>
                                            <td style="width: 100px">
                                                - <span class="MaSP_info">SAMC</span> X <span
                                                    class="SL_info">1</span><br>
                                                - <span class="MaSP_info">SASM</span> X <span
                                                    class="SL_info">1</span><br>
                                                - <span class="MaSP_info">SMAA</span> X <span
                                                    class="SL_info">1</span><br>
                                            </td>
                                            <td style="width: 100px">1299000VN??</td>
                                            <td style="width: 100px">20/11/2021</td>
                                            <td style="width: 100px">
                                                <small class="label label-success">???? giao</small>
                                            </td>
                                            <td>
                                                <div style="font-size: 18px;" class="my_editANDremove">
                                                    <i class="fa fa-edit"></i>
                                                    <i class="fa fa-trash-o btn-del-item"></i>
                                                </div>
                                            </td>
                                        </tr>
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
    <script src="../../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- SlimScroll -->
    <script src="../../plugins/slimScroll/jquery.slimScroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js" type="text/javascript"></script>

    <script>
        //X??? l?? n??t x??a
        var btn_del_item = document.getElementsByClassName('btn-del-item');
        var item_in_table = document.getElementsByClassName('item_in_table');

        for (let i = 0; i < btn_del_item.length; i++)
        {
            const element = btn_del_item[i];
            element.onclick = function () { item_in_table[i].remove(); }

        }
    </script>
</body>

</html>
