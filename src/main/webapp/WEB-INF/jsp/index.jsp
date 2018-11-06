<%-- 
    Document   : index
    Created on : 25/out/2018, 23:26:12
    Author     : Miguel Angelo Nyusi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Pagina Incial</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Owl Carousel -->
        <link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
        <link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

        <!-- Magnific Popup -->
        <link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>

    <body>
        <!-- Header -->
        <header id="home">
            <!-- Background Image -->
            <div class="bg-img" style="background-image: url('./img/bg1.jpg');">
                <div class="overlay"></div>
            </div>
            <!-- /Background Image -->

            <!-- Nav -->
            <nav id="nav" class="navbar nav-transparent">
                <div class="container">

                    <div class="navbar-header">
                        <!-- Logo -->
                        <div class="navbar-brand">
                            <a href="in	dex.html">
                                <!--<h3>Estrangeal Jamal</h3>-->
                            </a>
                        </div>
                        <!-- /Logo -->

                        <!-- Collapse nav button -->
                        <div class="nav-collapse">
                            <span></span>
                        </div>
                        <!-- /Collapse nav button -->
                    </div>

                    <!--  Main navigation  -->
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li>
                            <a href="#home">Pagina Inicial</a>
                        </li>
                        <li>
                            <a href="#about">Acerca do Aplicativo</a>
                        </li>
                        <li>
                            <a href="#service">Serviços</a>
                        </li>
                        
                         <ul class="dropdown">
                                        <li>
                                                <a href="blog-single.html">Pedir Emprestimo</a>
                                        </li>
                                </ul>
                     
                        <li>
                            <a href="#contact">Contacte-nos</a>
                        </li>
                    </ul>
                    <!-- /Main navigation -->

                </div>
            </nav>
            <!-- /Nav -->

            <!-- home wrapper -->
            <div class="home-wrapper">
                <div class="container">
                    <div class="row">

                        <!-- home content -->
                        <div class="col-md-10 col-md-offset-1">
                            <div class="home-content">
                                <h1 class="white-text">Estrangeal Jamal - E.I</h1>
                                <p class="white-text">Sistema de Gestão  de Crédito Desenvolvido para a Empresa Estrangeal Jamal -E.I.
                                </p>
                             
                                <button class="white-btn">
                                    <a href="<spring:url value="/emprestar"/>">SOLICITAR DINHEIRO</a>
                                </button>

                            </div>
                        </div>
                        <!-- /home content -->

                    </div>
                </div>
            </div>
            <!-- /home wrapper -->

        </header>
        <!-- /Header -->

       
        <!-- /About -->

        <!-- Service -->
        <div id="service" class="section md-padding">

            <!-- Container -->
            <div class="container">

                <!-- Row -->
                <div class="row">

                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title">O que nos Oferecemos</h2>
                    </div>
                    <!-- /Section header -->

                    <!-- service -->
                    <div class="col-md-4 col-sm-6" style="width: 50%;">
                        <div class="service">
                            <i class="fa fa-cogs"></i>
                            <h3>Ideias Criativas</h3>
                            <p>Oferecemos algumas lições aos nossos Clientes de como fazer o bom uso das suas Finanças.</p>
                        </div>
                    </div>
                    <!-- /service -->

                    <!-- service -->
                    <div class="col-md-4 col-sm-6" style="width: 50%;">
                        <div class="service">
                            <i class="fa fa-diamond"></i>
                            <h3>Marketing</h3>
                            <p>Oferecemos Serviços de Publicidade, com profissionais altamente qualificados.</p>
                        </div>
                    </div>
                    <!-- /service -->

                    <!-- service -->
                    <div class="col-md-4 col-sm-6" style="width: 50%;">
                        <div class="service">
                            <i class="fa fa-pencil"></i>
                            <h3>Serviços de Suporte</h3>
                            <p>Oferecemos um Serviços Incrivel de suporte aos nossos Clientes, disponivel 24/24.</p>
                        </div>
                    </div>
                    <!-- /service -->

                    <!-- service -->
                    <div class="col-md-4 col-sm-6" style="width: 50%;">
                        <div class="service">
                            <i class="fa fa-flask"></i>
                            <h3>Consultoria Financeira</h3>
                            <p>A Estrangeal Jamal tem também como Serviços, a consultoria financeira, como profissionais especializados na área</p>
                        </div>
                    </div>
                    <!-- /service -->

                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </div>
        <!-- /Service -->


        <!-- Why Choose Us -->
        <div id="features" class="section md-padding bg-grey">

            <!-- Container -->
            <div class="container">

                <!-- Row -->
                <div class="row">

                    <!-- why choose us content -->
                    <div class="col-md-6">
                        <div class="section-header">
                            <h2 class="title">Por que Confiar em Nos</h2>
                        </div>
                        <!--<p>Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas
                                ultricies mi eget mauris. Ultrices sagittis orci a scelerisque purus.</p>-->
                        <div class="feature">
                            <i class="fa fa-check"></i>
                            <p>Segurança & Confiabilidade.</p>
                        </div>
                        <div class="feature">
                            <i class="fa fa-check"></i>
                            <p>Eficiência, eficácia & Simplicidade .</p>
                        </div>
                        <div class="feature">
                            <i class="fa fa-check"></i>
                            <p>Temos como Lema e comprometimento, a Satisfação dos nosso Clientes.</p>
                        </div>
                        <div class="feature">
                            <i class="fa fa-check"></i>
                            <p>Apresentamos um sistema de Suporte aos clientes altamente qualificado.</p>
                        </div>
                    </div>
                    <!-- /why choose us content -->

                    <!-- About slider -->
                    <div class="col-md-6">
                        <div id="about-slider" class="owl-carousel owl-theme">
                            <img class="img-responsive" src="./img/cerca1.jpg" alt="">
                            <img class="img-responsive" src="./img/cerca.jpg" alt="">
                            <img class="img-responsive" src="./img/cerca1.jpg" alt="">
                            <img class="img-responsive" src="./img/cerca.jpg" alt="">
                        </div>
                    </div>
                    <!-- /About slider -->

                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </div>
        <!-- /Why Choose Us -->


        <!-- Numbers -->
        <div id="numbers" class="section sm-padding">

            <!-- Background Image -->
            <div class="bg-img" style="background-image: url('./img/carta.jpg');">
                <div class="overlay"></div>
            </div>
            <!-- /Background Image -->

            <!-- Container -->
            <div class="container">

                <!-- Row -->
                <div class="row">

                    <!-- number -->
                    <div class="col-sm-3 col-xs-6">
                        <div class="number">
                            <i class="fa fa-users"></i>
                            <h3 class="white-text">
                                <span class="counter">+200</span>
                            </h3>
                            <span class="white-text">Clientes Satisfeitos</span>
                        </div>
                    </div>
                    <!-- /number -->

                    <!-- number -->
                    <div class="col-sm-3 col-xs-6">
                        <div class="number">
                            <i class="fa fa-trophy"></i>
                            <h3 class="white-text">
                                <span class="counter">0</span>
                            </h3>
                            <span class="white-text">Prémios Vencidos</span>
                        </div>
                    </div>
                    <!-- /number -->

                    <!-- number -->
                    <div class="col-sm-3 col-xs-6">
                        <div class="number">
                            <i class="fa fa-coffee"></i>
                            <h3 class="white-text">
                                <span class="counter">154</span>
                            </h3>
                            <span class="white-text">Copos de Café :) </span>
                        </div>
                    </div>
                    <!-- /number -->

                    <!-- number -->
                    <div class="col-sm-3 col-xs-6">
                        <div class="number">
                            <i class="fa fa-file"></i>
                            <h3 class="white-text">
                                <span class="counter">+100</span>
                            </h3>
                            <span class="white-text">Projectos e Pedidos Feitos</span>
                        </div>
                    </div>
                    <!-- /number -->

                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </div>
        <!-- /Numbers -->

        <!-- Pricing -->
        <div id="pricing" class="section md-padding">

            <!-- Container -->
            <div class="container">

                <!-- Row -->
                <div class="row">

                    <!-- Section header -->
                    <div class="section-header text-center">
                        <h2 class="title"> Tipos de Empréstimos </h2>
                    </div>
                    <!-- /Section header -->

                    <!-- pricing -->

                    <!-- pricing -->
                    <div class="col-sm-4">
                        <div class="pricing">
                            <div class="price-head">
                                <span class="price-title"> Básico/Mínimo</span>
                                <div class="price">

                                    <h3>MZN 1000
                                        <span class="duration" style="font-size: 6.8pt">/ por empréstimos</span>
                                    </h3>
                                </div>
                            </div>
                            <ul class="price-content">
                                <li>
                                    <p>Só é permitido a clientes</p>
                                </li>
                                <li>
                                    <p>Que não tenha no máximo dois empréstimos pendentes.</p>
                                </li>

                            </ul>
                            <div class="price-btn">
                                <button class="outline-btn" style="background-color:rgba(255, 0,0, 0.4);">Estrangeal jamal</button>

                            </div>
                        </div>
                    </div>
                    <!-- /pricing -->

                    <!-- pricing -->
                    <div class="col-sm-4">
                        <div class="pricing">
                            <div class="price-head">
                                <span class="price-title">Prata/Médio</span>
                                <div class="price">
                                    <h3 style="font-size: 25.8pt">MZN +10.000
                                        <span class="duration" style="font-size: 6.8pt">/ por empréstimos</span>
                                    </h3>
                                </div>
                            </div>
                            <ul class="price-content">
                                <li>
                                    <p>Só é permitido a clientes</p>
                                </li>
                                <li>
                                    <p>Que não tenha nenhum empréstimos pendentes.</p>
                                </li>

                            </ul>
                            <div class="price-btn">
                                <button class="outline-btn" style="background-color:orange;">Estrangeal jamal</button>

                            </div>
                        </div>
                    </div>
                    <!-- /pricing -->

                    <!-- pricing -->
                    <div class="col-sm-4">
                        <div class="pricing">
                            <div class="price-head">
                                <span class="price-title">Ouro/Máximo</span>
                                <div class="price">
                                    <h3 style="font-size: 25.8pt">MZN 100.000
                                        <span class="duration" style="font-size: 6.8pt">/ por empréstimos</span>
                                    </h3>
                                </div>
                            </div>
                            <ul class="price-content">
                                <li>
                                    <p>Só é permitido a clientes</p>
                                </li>
                                <li>
                                    <p>Que não tenha nenhum empréstimos pendentes.</p>
                                </li>

                            </ul>
                            <div class="price-btn">
                                <button class="outline-btn" style="background-color:green;">Estrangeal jamal</button>

                            </div>
                        </div>
                    </div>
                    <!-- /pricing -->

                </div>
                <!-- Row -->

            </div>
            <!-- /Container -->

        </div>

        <!-- Contact -->
        <div id="contact" class="section md-padding">

            <!-- Container -->
            <div class="container">

                <!-- Row -->
                <div class="row">

                    <!-- Section-header -->
                    <div class="section-header text-center">
                        <h2 class="title">Contacte-nos</h2>
                    </div>
                    <!-- /Section-header -->

                    <!-- contact -->
                    <div class="col-sm-4">
                        <div class="contact">
                            <i class="fa fa-phone"></i>
                            <h3>Celular</h3>
                            <p>84-000-0000</p>
                        </div>
                    </div>
                    <!-- /contact -->

                    <!-- contact -->
                    <div class="col-sm-4">
                        <div class="contact">
                            <i class="fa fa-envelope"></i>
                            <h3>Email</h3>
                            <p>estrangealjamal@support.com</p>
                        </div>
                    </div>
                    <!-- /contact -->

                    <!-- contact -->
                    <div class="col-sm-4">
                        <div class="contact">
                            <i class="fa fa-map-marker"></i>
                            <h3>Endereco</h3>
                            <p>Bairro Cimento Av:2711 </p>
                        </div>
                    </div>
                    <!-- /contact -->

                    <!-- contact form -->
                    <div class="col-md-8 col-md-offset-2">
                        <form class="contact-form" style="color: black;font-weight: bolder;">
                            <input type="text" class="input" placeholder="Nome">
                            <input type="email" class="input" placeholder="Seu email">
                            <input type="password" class="input" placeholder="Sua palavra passe">
                            <input type="email" class="input" placeholder="Email do destinatário">
                            <input type="text" class="input" placeholder="Assunto">
                            <textarea class="input" placeholder="Mensagem"></textarea>
                            <button class="main-btn">Enviar Mensagem</button>
                            <br>
                            <button class="main-btn" type="reset" style="background-color: darkred;width: 25%;">Limpar</button>
                        </form>
                    </div>
                    <!-- /contact form -->

                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </div>
        <!-- /Contact -->


        <!-- Footer -->
        <footer id="footer" class="sm-padding bg-dark">

            <!-- Container -->
            <div class="container">

                <!-- Row -->
                <div class="row">

                    <div class="col-md-12">

                        <!-- footer logo -->
                        <div class="footer-logo">
                            <a href="index.jsp">
                                <p style="font-size: 20px;">Estrangeal Jamal</p>
                            </a>
                        </div>
                        <!-- /footer logo -->

                        <!-- footer follow -->
                        <ul class="footer-follow">
                            <li>
                                <a href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-instagram"></i>
                                </a>
                            </li>
                            <!--<li>
                                    <a href="#">
                                            <i class="fa fa-linkedin"></i>
                                    </a>
                            </li>-->
                            <li>
                                <a href="#">
                                    <i class="fa fa-youtube"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /footer follow -->

                        <!-- footer copyright -->
                        <div class="footer-copyright">
                            <p>Copyright © 2017. All Rights Reserved. Designed by
                                <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            </p>
                            <p>Mddificado © 2018 por:
                                <a href="#" target="_blank"> Miguel Anegelo de Rosario Nyusi</a>
                            </p>
                        </div>
                        <!-- /footer copyright -->
                    </div>
                </div>
                <!-- /Row -->

            </div>
            <!-- /Container -->

        </footer>
        <!-- /Footer -->

        <!-- Back to top -->
        <div id="back-to-top"></div>
        <!-- /Back to top -->

        <!-- Preloader -->
        <div id="preloader">
            <div class="preloader">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
        <!-- /Preloader -->

        <!-- jQuery Plugins -->
        <script type="text/javascript" src="/js/jquery.min.js"></script>
        <script type="text/javascript" src="/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="/js/jquery.magnific-popup.js"></script>
        <script type="text/javascript" src="/js/main.js"></script>

    </body>

</html>
