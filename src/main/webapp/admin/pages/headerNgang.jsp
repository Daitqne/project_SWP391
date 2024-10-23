<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE jsp>
<jsp>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Bootstrap Admin Theme</title>
        <link rel="icon" href="../img/favicon.ico">
        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../css/metisMenu.min.css" rel="stylesheet">

        

        <!-- Custom Fonts -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom CSS -->
        <link href="../css/style.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

        <div class="navbar-default sidebar" role="navigation">
                            <div class="sidebar-nav navbar-collapse">
                                <ul class="nav" id="side-menu">
                                    <li class="sidebar-search">
                                        <div class="input-group custom-search-form">
                                            <input type="text" class="form-control" placeholder="Search...">
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                        </span>
                                        </div>
                                        <!-- /input-group -->
                                    </li>
                                    <li>
                                        <a href="index.jsp" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                                        <ul class="nav nav-second-level">
                                            <li>
                                                <a href="flot.jsp">Flot Charts</a>
                                            </li>
                                            <li>
                                                <a href="morris.jsp">Morris.js Charts</a>
                                            </li>
                                        </ul>
                                        <!-- /.nav-second-level -->
                                    </li>
                                    <li>
                                        <a href="tables.jsp"><i class="fa fa-table fa-fw"></i> Tables</a>
                                    </li>
                                    <li>
                                        <a href="forms.jsp"><i class="fa fa-edit fa-fw"></i> Forms</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                                        <ul class="nav nav-second-level">
                                            <li>
                                                <a href="panels-wells.jsp">Panels and Wells</a>
                                            </li>
                                            <li>
                                                <a href="typography.jsp">Typography</a>
                                            </li>
                                            <li>
                                                <a href="icons.jsp"> Icons</a>
                                            </li>
                                            <li>
                                                <a href="grid.jsp">Grid</a>
                                            </li>
                                        </ul>
                                        <!-- /.nav-second-level -->
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                                        <ul class="nav nav-second-level">
                                            <li>
                                                <a href="#">Second Level Item</a>
                                            </li>
                                            <li>
                                                <a href="#">Second Level Item</a>
                                            </li>
                                            <li>
                                                <a href="#">Third Level <span class="fa arrow"></span></a>
                                                <ul class="nav nav-third-level">
                                                    <li>
                                                        <a href="#">Third Level Item</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Third Level Item</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Third Level Item</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Third Level Item</a>
                                                    </li>
                                                </ul>
                                                <!-- /.nav-third-level -->
                                            </li>
                                        </ul>
                                        <!-- /.nav-second-level -->
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                                        <ul class="nav nav-second-level">
                                            <li>
                                                <a href="blank.jsp">Blank Page</a>
                                            </li>
                                            <li>
                                                <a href="login.jsp">Login Page</a>
                                            </li>
                                        </ul>
                                        <!-- /.nav-second-level -->
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="../js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../js/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../js/script-app.js"></script>

    </body>
</jsp>
