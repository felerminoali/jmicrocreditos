<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title> Clientes </title>

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

    <script type="text/javascript">

        $(document).ready(function(){

             function validar_credito(v){

                 if(v == 1){
                     $('.funcionario').show('slow');
                     $('.comerciante').hide();
                     $('.creditoPenhor').hide();
                 }

                 if(v == 2){
                     $('.comerciante').show('slow');
                     $('.funcionario').hide();
                     $('.creditoPenhor').hide();
                 }
                 if (v == 3){
                     $('.creditoPenhor').show('slow');
                     $('.funcionario').hide();
                     $('.comerciante').hide();
                 }
             }

            $('.funcionario').hide();
            $('.comerciante').hide();
            $('.creditoPenhor').hide();

            $('#destino').change(function(){
                validar_credito($(this).val());
            });

        });

    </script>

</head>

    <body class="animsition">
    <div class="page-wrapper">

        <!-- HEADER DESKTOP-->
        <header class="header-mobile-2 d-none d-lg-block" style="background: #004085;">
            <div class="section__content section__content--p35">

                <div class="header3-wrap">
                    <div class="header__logo">

                        <a href="#">
                            <img src="/images/icon/logo-white.png" alt="Jamal Microcreditos" />
                        </a>

                    </div>

                    <div class="header__navbar">
                        <ul class="list-unstyled">

                            <li>
                                <a href="#">
                                    <i class="fas fa-home"></i>
                                    <span class="bot-line"></span>Home</a>
                            </li>

                            <li class="has-sub">
                                <a href="#">
                                    <i class="fas fa-users"></i>Emprestimos
                                    <span class="bot-line"></span>
                                </a>
                                <ul class="header3-sub-list list-unstyled">
                                    <li>
                                        <a href="Admin.html">Lista de Creditos</a>
                                    </li>
                                    <li>
                                        <a href="Admin.html">Pagamentos</a>
                                    </li>
                                    <li>
                                        <a href="Admin.html">Emprestimos</a>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="#">
                                    <i class="fas fa-object-group"></i>
                                    <span class="bot-line"></span>Relatorios</a>
                            </li>
                        </ul>
                    </div>

                    <div class="header__tool">

                        <div class="header-button-item has-noti js-item-menu">
                            <i class="zmdi zmdi-notifications"></i>

                            <div class="notifi-dropdown notifi-dropdown--no-bor js-dropdown">
                                <div class="notifi__title">
                                    <p>You have 3 Notifications</p>
                                </div>

                                <div class="notifi__item">
                                    <div class="bg-c1 img-cir img-40">
                                        <i class="zmdi zmdi-email-open"></i>
                                    </div>
                                    <div class="content">
                                        <p>You got a email notification</p>
                                        <span class="date">April 12, 2018 06:50</span>
                                    </div>
                                </div>

                                <div class="notifi__item">
                                    <div class="bg-c2 img-cir img-40">
                                        <i class="zmdi zmdi-account-box"></i>
                                    </div>
                                    <div class="content">
                                        <p>Your account has been blocked</p>
                                        <span class="date">April 12, 2018 06:50</span>
                                    </div>
                                </div>

                                <div class="notifi__item">
                                    <div class="bg-c3 img-cir img-40">
                                        <i class="zmdi zmdi-file-text"></i>
                                    </div>
                                    <div class="content">
                                        <p>You got a new file</p>
                                        <span class="date">April 12, 2018 06:50</span>
                                    </div>
                                </div>
                                <div class="notifi__footer">
                                    <a href="#">All notifications</a>
                                </div>
                            </div>
                        </div>


                        <div class="account-wrap">
                            <div class="account-item account-item--style2 clearfix js-item-menu">
                                <div class="image">
                                    <img src="/images/icon/avatar-01.jpg" alt="John Doe" />
                                </div>
                                <div class="content">
                                    <a class="js-acc-btn" href="#">john doe</a>
                                </div>
                                <div class="account-dropdown js-dropdown">
                                    <div class="info clearfix">
                                        <div class="image">
                                            <a href="#">
                                                <img src="/images/icon/avatar-01.jpg" alt="John Doe" />
                                            </a>
                                        </div>
                                        <div class="content">
                                            <h5 class="name">
                                                <a href="#">john doe</a>
                                            </h5>
                                            <span class="email">johndoe@example.com</span>
                                        </div>
                                    </div>
                                    <div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-account"></i>Account</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-settings"></i>Setting</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-money-box"></i>Billing</a>
                                        </div>
                                    </div>
                                    <div class="account-dropdown__footer">
                                        <a href="login.html">
                                            <i class="zmdi zmdi-power"></i>Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- END HEADER DESKTOP-->

        <!-- HEADER MOBILE-->
        <header class="header-mobile header-mobile-2 d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="Admin.html">
                            <img src="/images/icon/logo-white.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>


            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>HOME</a>
                        </li>

                        <li>
                            <a href="chart.html">
                                <i class="fas fa-chart-bar"></i>Emprestimos</a>
                        </li>

                        <li>
                            <a href="form.html">
                                <i class="far fa-check-square"></i>Forms</a>
                        </li>

                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>Emprestimos</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="button.html">Pagos</a>
                                </li>
                                <li>
                                    <a href="tab.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="card.html">Cards</a>
                                </li>

                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

        </header>


        <div class="sub-header-mobile-2 d-block d-lg-none">
            <div class="header__tool">

                <div class="header-button-item has-noti js-item-menu">
                    <i class="zmdi zmdi-notifications"></i>
                    <div class="notifi-dropdown notifi-dropdown--no-bor js-dropdown">
                        <div class="notifi__title">
                            <p>You have 3 Notifications</p>
                        </div>
                        <div class="notifi__item">
                            <div class="bg-c1 img-cir img-40">
                                <i class="zmdi zmdi-email-open"></i>
                            </div>
                            <div class="content">
                                <p>You got a email notification</p>
                                <span class="date">April 12, 2018 06:50</span>
                            </div>
                        </div>
                        <div class="notifi__item">
                            <div class="bg-c2 img-cir img-40">
                                <i class="zmdi zmdi-account-box"></i>
                            </div>
                            <div class="content">
                                <p>Your account has been blocked</p>
                                <span class="date">April 12, 2018 06:50</span>
                            </div>
                        </div>
                        <div class="notifi__item">
                            <div class="bg-c3 img-cir img-40">
                                <i class="zmdi zmdi-file-text"></i>
                            </div>
                            <div class="content">
                                <p>You got a new file</p>
                                <span class="date">April 12, 2018 06:50</span>
                            </div>
                        </div>
                        <div class="notifi__footer">
                            <a href="#">All notifications</a>
                        </div>
                    </div>
                </div>


                <div class="header-button-item js-item-menu">
                    <i class="zmdi zmdi-settings"></i>
                    <div class="setting-dropdown js-dropdown">
                        <div class="account-dropdown__body">
                            <div class="account-dropdown__item">
                                <a href="#">
                                    <i class="zmdi zmdi-account"></i>Account</a>
                            </div>
                            <div class="account-dropdown__item">
                                <a href="#">
                                    <i class="zmdi zmdi-settings"></i>Setting</a>
                            </div>

                        </div>

                    </div>
                </div>


                <div class="account-wrap">
                    <div class="account-item account-item--style2 clearfix js-item-menu">
                        <div class="image">
                            <img src="/images/icon/avatar-01.jpg" alt="John Doe" />
                        </div>
                        <div class="content">
                            <a class="js-acc-btn" href="#">john doe</a>
                        </div>
                        <div class="account-dropdown js-dropdown">
                            <div class="info clearfix">
                                <div class="image">
                                    <a href="#">
                                        <img src="/images/icon/avatar-01.jpg" alt="John Doe" />
                                    </a>
                                </div>
                                <div class="content">
                                    <h5 class="name">
                                        <a href="#">john doe</a>
                                    </h5>
                                    <span class="email">johndoe@example.com</span>
                                </div>
                            </div>
                            <div class="account-dropdown__body">
                                <div class="account-dropdown__item">
                                    <a href="register.html">
                                        <i class="zmdi zmdi-account"></i>Account</a>
                                </div>
                                <div class="account-dropdown__item">
                                    <a href="forget-pass.html">
                                        <i class="zmdi zmdi-settings"></i>Setting Password</a>
                                </div>

                            </div>
                            <div class="account-dropdown__footer">
                                <a href="login.html">
                                    <i class="zmdi zmdi-power"></i>Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END HEADER MOBILE -->

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
                           <h3 style="color: #ff182b">Lista de Creditos</h3>
                            <hr class="line-seprate">
                        </div>
                    </div>

                </div>

            <!-- END WELCOME-->


            <!-- STATISTIC-->
            <section class="statistic statistic2">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-4">
                            <div class="au-card m-b-30">
                                <div class="au-card-inner">
                                    <h3 class="title-2 m-b-50">Pagamentos Mensais</h3>
                                    <canvas id="singelBarChart"></canvas>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4">
                            <div class="statistic__item statistic__item--green">
                                <h2 class="number">10,368</h2>
                                <span class="desc">TOTAL EMPRESTIMOS PAGOS</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-account-o"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <div class="statistic__item statistic__item--orange">
                                <h2 class="number">388,688</h2>
                                <span class="desc">PAGAMENTOS PENDENTES</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-shopping-cart"></i>
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

                                    <a href="#" class="au-btn au-btn-icon au-btn--green au-btn--small"
                                       data-toggle="modal" data-target="#mediumModal">
                                        <i class="zmdi zmdi-plus"></i>Pedir Dinheiro</a>

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

                                        <tr class="spacer"></tr>
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


            <!-- modal medium -->
            <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header alert alert-info" role="alert">
                            <h3 class="modal-title" id="mediumModalLabel">Adicionar Credito</h3>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <div class="modal-body" style="padding: 30px 30px">

                            <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
                                <span class="badge badge-pill badge-success">Success</span>
                                You successfully inserted
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <div class="au-breadcrumb-content">

                                <form class="au-form-icon--sm" action="" method="post">
                                    <input class="au-input--w300 au-input--style2" type="text" placeholder="Search for datas &amp; reports...">
                                    <button class="au-btn--submit2" type="submit">
                                        <i class="zmdi zmdi-search"></i>
                                    </button>

                                    <ul class="list-group"> </ul>
                                </form>

                                    </div>
                                   <hr>


                                        <form action="" method="post" novalidate="novalidate">

                                            <div class="row">
                                                <div class="col-6">

                                                    <div class="form-group">

                                                        <label for="montante" class="control-label mb-1">Indique o valor</label>
                                                        <input id="montante" name="montante" type="text" class="form-control" aria-required="true" aria-invalid="false" value="100.00">

                                                    </div>
                                                </div>

                                                <div class="col-6">

                                                    <div class="form-group">

                                                        <label for="datapag" class="control-label mb-1">Data de Pagamento</label>
                                                        <input id="datapag" name="datapag" type="date" class="form-control"
                                                               aria-required="true" aria-invalid="false" value="">

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="row">
                                                <div class="col-6">

                                                    <div class="form-group">

                                                        <label for="nr_pag" class="control-label mb-1">Numero de Prestacoes</label>
                                                        <input id="nr_pag" name="nr_pag" type="text" class="form-control"
                                                               aria-required="true" aria-invalid="false" value="">
                                                    </div>
                                                </div>

                                                <div class="col-6">

                                                    <div class="form-group">

                                                        <label for="datapag" class="control-label mb-1">Finalidade do Credito</label>
                                                        <select name="destino" id="destino" class="form-control">
                                                            <option value="0">Please Select</option>
                                                            <option value="1">Consumo</option>
                                                            <option value="2">Negocio</option>
                                                            <option value="3">Outro</option>
                                                        </select>

                                                    </div>

                                                </div>

                                            </div>


                                            <div class="funcionario">


                                            <div class="alert alert-secondary" role="alert">Dados do Funcionario</div>

                                            <div class="row">
                                                <div class="col-6">

                                                    <label for="instituicao" class="control-label mb-1">Instituicao</label>
                                                    <select name="instituicao" id="instituicao" class="form-control">
                                                        <option value="0">Please Select</option>
                                                        <option value="1">INNATER</option>
                                                        <option value="2">Negocio</option>
                                                        <option value="2">Outro</option>
                                                    </select>
                                                </div>

                                                <div class="col-6">

                                                    <div class="form-group has-success">
                                                        <label for="funcao" class="control-label mb-1">Funcao</label>
                                                        <input id="funcao" name="funcao" type="number" class="form-control datapay valid" data-val="true" data-val-required="Please enter the name on card"
                                                               autocomplete="datapay" aria-required="true" aria-invalid="false" aria-describedby="datapay-error">
                                                        <span class="help-block field-validation-valid" data-valmsg-for="datapay" data-valmsg-replace="true"></span>
                                                    </div>

                                                </div>

                                            </div>

                                            <div class="form-group">

                                                <label for="contactBoss" class="control-label mb-1">Contacto Gestor</label>
                                                <input id="contactBoss" name="contactBoss" type="text" class="form-control"
                                                       aria-required="true" aria-invalid="false" value="">
                                            </div>

                                            <div class="alert alert-secondary" role="alert">Dados Bancarios</div>


                                            <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                <label for="titular">Titular do Conta:</label>
                                                <input class="form-control" type="text" id="titular" name="titular" value="">
                                            </div>


                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="nr_conta">Numero da Conta</label>

                                                            <input class="form-control" type="text" id="nr_conta" name="nr_conta" value="">
                                                        </div>

                                                    </div>
                                                    <div class="col-6">
                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="banco">Nome do Banco</label>
                                                            <input class="form-control" type="text" id="banco" name="banco" value="">
                                                        </div>
                                                    </div>
                                                </div>

                                                <h3>Anexar Documentos</h3>
                                                <hr>

                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="declaracaoServico">Declaração de Serviço</label>
                                                            <input class="form-control" type="file" id="declaracaoServico" name="declaracaoServico" value="">
                                                        </div>
                                                    </div>

                                                    <div class="col-6">
                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="bi">Fotocopia do B.I</label>
                                                            <input class="form-control" type="file" id="bi" name="bi" value="">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="banco">Extrato Bancario</label>
                                                            <input class="form-control" type="file" id="extrato" name="extrato" value="">
                                                        </div>

                                                    </div>
                                                    <div class="col-6">
                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="banco">Outro Documento:</label>
                                                            <input class="form-control" type="file" id="outro" name="outro" value="">
                                                        </div>
                                                    </div>
                                                </div>

                                                </div> <!--  fim div funcionario-->


                                            <div class="comerciante">

                                            <div class="alert alert-secondary" role="alert">Dados do Credito - Negocio</div>


                                                <div class="row">
                                                    <div class="col-6">

                                                        <label for="titular">Testemunha 1:</label>
                                                        <input class="form-control" type="text" id="testemunha1" name="testemunha1" value="">
                                                    </div>
                                                    <div class="col-6">

                                                        <label for="nr_conta">Testemunha 2</label>
                                                        <input class="form-control" type="text" id="testemunha2" name="testemunha2" value="">

                                                    </div>
                                                </div>


                                                <div class="row">
                                                    <div class="col-6">

                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="banco">Bem a Penhorar</label>
                                                            <input class="form-control" type="text" id="bempenhor" name="bempenhor" value="">
                                                        </div>
                                                    </div>
                                                    <div class="col-6">

                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="decbairro">Declarção do Bairro</label>
                                                            <input class="form-control" type="file" id="decbairro" name="declaracaobairro" value="">
                                                        </div>

                                                    </div>
                                                </div>

                                            </div> <!--- fim comerciante -->

                                            <div class="creditoPenhor">

                                                <div class="alert alert-secondary" role="alert">Credito - Pela Penhor</div>
                                                <div class="row">
                                                    <div class="col-6">

                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="banco">Declaração do Imóvel</label>
                                                            <input class="form-control" type="file" id="dec_imovel" name="dec_imovel" value="">
                                                        </div>
                                                    </div>
                                                    <div class="col-6">

                                                        <div class="form-group" data-validate="O Campo Bem por Penhorar é Obrigatório, Insira!">
                                                            <label for="banco">Declarção do Penhor</label>
                                                            <input class="form-control" type="file" id="declaracobairro" name="declaracaobairro" value="">
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </form>
                                    </div>



                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary">Confirm</button>
                        </div>
                </div>
            </div>
                </div>

            <!-- end modal medium -->

            <!-- COPYRIGHT-->
            <section class="p-t-60 p-b-20">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. <a href="https://colorlib.com">Colorlib</a>.</p>
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