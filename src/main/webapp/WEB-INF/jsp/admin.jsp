<%-- 
    Document   : Administrator
    Created on : Dec 16, 2018, 11:32:23 PM
    Author     : Raimundo Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Administrator</title>

    <!-- Fontfaces CSS-->
    <link href="/css/font-face.css" rel="stylesheet" media="all">
    <link href="/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/css/theme.css" rel="stylesheet" media="all">
    <script src="/vendor/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="/vendor/jquery-ui.min.js" type="text/javascript"></script>
    <script src="/js/jsfile.js"type="text/javascript"></script>

</head>

    <body class="animsition">

        <jsp:include page="header.jsp"></jsp:include>

        <!-- PAGE CONTENT-->
        <div class="page-content--bgf7">
            <!-- BREADCRUMB-->
            <section class="au-breadcrumb2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">


                            <div class="pull-left">

                             logo image of money

                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->

            <!-- WELCOME-->


                <div class="container">

                    <div class="row">
                        <div class="col-md-12">
                           <h3 style="color: #ff182b">Estatisticas Gerais</h3>
                            <hr class="line-seprate">
                        </div>
                    </div>

                </div>

            <!-- END WELCOME-->

            <!-- STATISTIC-->
            <section class="statistic statistic2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item statistic__item--green">
                                <h2 class="number">10,368</h2>
                                <span class="desc">EMPRESTIMOS PAGOS</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-account-o"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item statistic__item--orange">
                                <h2 class="number">388,688</h2>
                                <span class="desc">PAGAMENTOS PENDENTES</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item statistic__item--blue">
                                <h2 class="number">1,086</h2>
                                <span class="desc">TOTAL CLIENTE</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-calendar-note"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item statistic__item--red">
                                <h2 class="number">$1,060,386</h2>
                                <span class="desc">TOTAL EMPRESTIMOS</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-money"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->




            <!-- STATISTIC CHART-->
            <section class="statistic-chart">
                <div class="container">


                    <div class="row">

                        <div class="col-md-5 col-lg-4">
                            <!-- TOP CAMPAIGN-->
                            <div class="top-campaign">
                              <div style="font-weight: bold">Base de Dados</div>
                                <div class="table-responsive">
                                    <table class="table table-top-campaign">
                                        <tbody>
                                        <tr>
                                            <td>1. Australia</td>
                                            <td>$70,261.65</td>
                                        </tr>
                                        <tr>
                                            <td>2. United Kingdom</td>
                                            <td>$46,399.22</td>
                                        </tr>
                                        <tr>
                                            <td>3. Turkey</td>
                                            <td>$35,364.90</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- END TOP CAMPAIGN-->
                        </div>

                        <div class="col-lg-4">
                            <div class="au-card m-b-30">
                                <div class="au-card-inner">
                                    <h3 class="title-2 m-b-40">Doughut Chart</h3>
                                    <canvas id="doughutChart"></canvas>
                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4">
                            <div class="au-card m-b-30">
                                <div class="au-card-inner">
                                    <h3 class="title-2 m-b-40">Single Bar Chart</h3>
                                    <canvas id="singelBarChart"></canvas>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </section>
            <!-- END STATISTIC CHART-->

            <!-- DATA TABLE-->
            <section class="p-t-20">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title-5 m-b-35">LISTA DE CREDITOS</h3>
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">


                                    <div class="au-breadcrumb-content">

                                        <form class="au-form-icon--sm" action="" method="post">
                                            <input class="au-input--w300 au-input--style2" type="text"
                                                   placeholder="Search for datas &amp; reports...">
                                            <button class="au-btn--submit2" type="submit">
                                                <i class="zmdi zmdi-search"></i>
                                            </button>
                                        </form>
                                    </div>

                                </div>
                                <div class="table-data__tool-right">
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small" data-toggle="modal" data-target="#mediumModal">
                                        <i class="zmdi zmdi-plus"></i>Adicionar Credito</button>
                                    <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                        <select class="js-select2" name="type">
                                            <option selected="selected">Export</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </th>
                                            <th>name</th>
                                            <th>email</th>
                                            <th>description</th>
                                            <th>date</th>
                                            <th>status</th>
                                            <th>price</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span class="block-email">lori@example.com</span>
                                            </td>
                                            <td class="desc">Samsung S8 Black</td>
                                            <td>2018-09-27 02:12</td>
                                            <td>
                                                <span class="status--process">Processed</span>
                                            </td>
                                            <td>$679.00</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span class="block-email">lyn@example.com</span>
                                            </td>
                                            <td class="desc">iPhone X 256Gb Black</td>
                                            <td>2018-09-25 19:03</td>
                                            <td>
                                                <span class="status--denied">Denied</span>
                                            </td>
                                            <td>$1199.00</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span class="block-email">doe@example.com</span>
                                            </td>
                                            <td class="desc">Camera C430W 4k</td>
                                            <td>2018-09-24 19:10</td>
                                            <td>
                                                <span class="status--process">Processed</span>
                                            </td>
                                            <td>$699.00</td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END DATA TABLE-->
            <!-- COPYRIGHT-->
            <section class="p-t-60 p-b-20">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END COPYRIGHT-->
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="/vendor/slick/slick.min.js">
    </script>
    <script src="/vendor/wow/wow.min.js"></script>
    <script src="/vendor/animsition/animsition.min.js"></script>
    <script src="/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="/js/main.js"></script>

</body>

</html>
<!-- end document-->
