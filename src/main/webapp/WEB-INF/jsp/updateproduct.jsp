<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.example.sweetitech.controller.MainController"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/ico" />

<title>TSMS</title>

<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">

<!-- bootstrap-progressbar -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/jqvmap/dist/jqvmap.min.css"
	rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link
	href="${pageContext.request.contextPath}/resources/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link
	href="${pageContext.request.contextPath}/resources/build/css/custom.min.css"
	rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="${pageContext.request.contextPath}/home" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="${pageContext.request.contextPath}/resources/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Dashboard <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/home">Dashboard</a></li>

                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Product <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath}/addproduct">Add Product</a></li>
                      <li><a href="${pageContext.request.contextPath}/productlist">Product List</a></li>
                    </ul>

                  </li>


                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="<c:url value="/logout" />">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
    <div class="top_nav">
           <div class="nav_menu">
             <nav>
               <div class="nav toggle">
                 <a id="menu_toggle"><i class="fa fa-bars"></i></a>
               </div>

               <ul class="nav navbar-nav navbar-right">
                 <li class="">
                   <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                     <img src="${pageContext.request.contextPath}/resources/images/img.jpg" alt="">${pageContext.request.userPrincipal.name}
                     <span class=" fa fa-angle-down"></span>
                   </a>
                   <ul class="dropdown-menu dropdown-usermenu pull-right">
                     <li><a href="${pageContext.request.contextPath}/profile"> Profile</a></li>

                     <li><a href="<c:url value="/logout" />"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                   </ul>
                 </li>

                 <li role="presentation" class="dropdown">
                   <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                     <i class="fa fa-envelope-o"></i>
                     <span class="badge bg-green">6</span>
                   </a>
                   <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                     <li>
                       <a>
                         <span class="image"><img src="${pageContext.request.contextPath}/resources/images/img.jpg" alt="Profile Image" /></span>
                         <span>
                           <span>John Smith</span>
                           <span class="time">3 mins ago</span>
                         </span>
                         <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="${pageContext.request.contextPath}/resources/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="${pageContext.request.contextPath}/resources/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="dropdown-item">
                        <span class="image"><img src="${pageContext.request.contextPath}/resources/images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Update Order</h3>
                            </div>

                        </div>

                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li class="dropdown">
                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Settings 1</a>
                                                    </li>
                                                    <li><a href="#">Settings 2</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">

                                        <form:form id="demo-form2" method="post" modelAttribute="product" action="${pageContext.request.contextPath}/update"  class="form-horizontal form-label-left">
                                          <div class="form-group">
                                           <form:hidden path="id"/>
                                            </div>
                                              <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Name <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <form:input  path="name"  class=" form-control col-md-7 col-xs-12" required="required" type="text"/>
                                                </div>
                                            </div>
                                              <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12"> Price <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <form:input path="price" class=" form-control col-md-7 col-xs-12" required="required" type="text"/>
                                                </div>
                                            </div>
                                                <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Profit percentage <span class="required">*</span>
                                                   </label>
                                                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                                                <form:input path="profit"  class=" form-control col-md-7 col-xs-12" required="required" type="text"/>
                                                                                            </div>
                                                                                        </div>


                                          <div class="form-group">
                     <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Product Type<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">

                          <form:select path="productType"  class="form-control" >
                            <option  value="RAM">RAM</option>
                            <option  value="MOTHERBOARD">MOTHERBOARD</option>
                            <option  value="GRAPHICS CARD">GRAPHICS CARD</option>

                          </form:select>
                        </div>
                      </div>


                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">


                                                    <button type="submit" class="btn btn-success">Submit</button>
                                                </div>
                                            </div>

                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
          <div class="pull-right">
            TSMS by <a href="https://www.facebook.com/coder64">mahfuj</a>
          </div>
          <div class="clearfix"></div>
        </footer>
                <!-- /footer content -->
                <script src="${pageContext.request.contextPath}/resources/vendors/switchery/dist/switchery.min.js"></script>
            </div>
        </div>
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="${pageContext.request.contextPath}/resources/vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="${pageContext.request.contextPath}/resources/vendors/nprogress/nprogress.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="${pageContext.request.contextPath}/resources/vendors/moment/min/moment.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- bootstrap-datetimepicker -->
        <script src="${pageContext.request.contextPath}/resources/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
        <!-- Ion.RangeSlider -->
        <script src="${pageContext.request.contextPath}/resources/vendors/ion.rangeSlider/js/ion.rangeSlider.min.js"></script>
        <!-- Bootstrap Colorpicker -->
        <script src="${pageContext.request.contextPath}/resources/vendors/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
        <!-- jquery.inputmask -->
        <script src="${pageContext.request.contextPath}/resources/vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
        <!-- jQuery Knob -->
        <script src="${pageContext.request.contextPath}/resources/vendors/jquery-knob/dist/jquery.knob.min.js"></script>
        <!-- Cropper -->
        <script src="${pageContext.request.contextPath}/resources/vendors/cropper/dist/cropper.min.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="${pageContext.request.contextPath}/resources/build/js/custom.min.js"></script>

        <!-- Initialize datetimepicker -->
        <script>
            $('#myDatepicker').datetimepicker();

            $('#myDatepicker2').datetimepicker({
                format: 'DD.MM.YYYY'
            });

            $('#myDatepicker3').datetimepicker({
                format: 'hh:mm A'
            });

            $('#myDatepicker4').datetimepicker({
                ignoreReadonly: true,
                allowInputToggle: true
            });

            $('#datetimepicker6').datetimepicker();

            $('#datetimepicker7').datetimepicker({
                useCurrent: false
            });

            $("#datetimepicker6").on("dp.change", function (e) {
                $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
            });

            $("#datetimepicker7").on("dp.change", function (e) {
                $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
            });
        </script>
    </body>
</html>
