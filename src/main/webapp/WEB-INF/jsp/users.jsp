<%-- 
    Document   : Register
    Created on : Dec 16, 2018, 11:34:05 PM
    Author     : Raimundo Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Register</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
<div class="page-wrapper">
        <div class="page-content--bgf7">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">

                        <div class="login-logo">
                            <a href="#" class="alert-heading">
                                <img src="images/icon/logo.png" alt="CoolAdmin">
                            </a>

                            <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
                                <span class="badge badge-pill badge-success">Success</span>
                                You successfully inserted
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                        </div>

                        <div class="login-form">
                            <form action="" method="post" novalidate="novalidate">

                                <div class="form-group">
                                    <label for="nome" class="control-label mb-1">Nome: </label>
                                    <input id="nome" name="nome" type="text" class="form-control" aria-required="true" aria-invalid="false" value="">
                                </div>
                                <div class="form-group has-success">
                                    <label for="apelido" class="control-label mb-1">Apelido</label>
                                    <input id="apelido" name="apelido" type="text" class="form-control apelido valid" data-val="true"
                                           data-val-required="Please enter the name on card"
                                           autocomplete="apelido" aria-required="true" aria-invalid="false" aria-describedby="apelido-error">
                                    <span class="help-block field-validation-valid" data-valmsg-for="apelido" data-valmsg-replace="true"></span>
                                </div>


                                <div class="form-group">

                                    <label for="email" class="control-label mb-1">Nr. Documento:</label>
                                    <div class="input-group">
                                        <input id="nr_documento" name="email" type="text" class="form-control cc-cvc" value=""
                                               data-val="true" data-val-required="Please enter the security code"
                                               data-val-cc-cvc="Please enter a valid security code" autocomplete="off">
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-6">
                                        <label for="sexo" class="control-label mb-1">Sexo:</label>

                                        <select name="sexo" id="sexo" class="form-control">
                                            <option value="0">Please Select</option>
                                            <option value="1">Masculino</option>
                                            <option value="2">Femenino</option>

                                        </select>
                                    </div>

                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="estado_civil" class="control-label mb-1">Estado Civil</label>
                                            <select name="estado_civil" id="estado_civil" class="form-control">
                                                <option value="0">Please select</option>
                                                <option value="1">Casado</option>
                                                <option value="2">Option #2</option>
                                                <option value="3">Option #3</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <label for="email" class="control-label mb-1">Email:</label>
                                    <div class="input-group">
                                        <input id="email" name="email" type="email" class="form-control" value="" data-val="true"
                                               data-val-required="Inserira o email"
                                               data-val-cc-cvc="Insira email" autocomplete="off">

                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-6">
                                        <label for="contacto1" class="control-label mb-1">Provincia:</label>

                                        <select name="provincia" id="provincia" class="form-control">
                                            <option value="0">Please select</option>
                                            <option value="1">Option #1</option>
                                            <option value="2">Option #2</option>
                                            <option value="3">Option #3</option>
                                        </select>
                                    </div>

                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="contacto2" class="control-label mb-1">Distrito</label>
                                            <select name="distrito" id="distrito" class="form-control">
                                                <option value="0">Please select</option>
                                                <option value="1">Option #1</option>
                                                <option value="2">Option #2</option>
                                                <option value="3">Option #3</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>



                                <div class="row">
                                    <div class="col-6">

                                        <label for="endereco1" class="control-label mb-1">Endereco 1:</label>
                                        <input id="endereco1" name="endereco1" type="tel" class="form-control endereco1 identified visa" value="" data-val="false"
                                               data-val-required="Insira o seu username" data-val-username="Please enter a valid card number"
                                               autocomplete="endereco1">
                                        <span class="help-block" data-valmsg-for="endereco1" data-valmsg-replace="true"></span>

                                    </div>

                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="endereco2" class="control-label mb-1">Endereco 2:</label>
                                            <input id="endereco2" name="endereco2" type="password" class="form-control password" value="" data-val="true"
                                                   data-val-required="Please enter the card expiration"
                                                   data-val-password="Please enter a valid month and year" placeholder=""
                                                   autocomplete="password">
                                            <span class="help-block" data-valmsg-for="endereco2" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>

                                </div>


                                <div class="row">

                                    <div class="col-6">

                                        <label for="contacto1" class="control-label mb-1">Contacto 1:</label>
                                        <input id="contacto1" name="username" type="text" class="form-control contacto1 identified visa" value="" data-val="false"
                                               data-val-required="Insira o seu username" data-val-username="Please enter a valid card number"
                                               autocomplete="contacto1">
                                        <span class="help-block" data-valmsg-for="contacto1" data-valmsg-replace="true"></span>

                                    </div>

                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="contacto2" class="control-label mb-1">Contacto 2:</label>
                                            <input id="contacto2" name="contacto2" type="text" class="form-control password" value="" data-val="true" data-val-required="Please enter the card expiration"
                                                   data-val-password="Please enter a valid month and year" placeholder=""
                                                   autocomplete="contacto2">
                                            <span class="help-block" data-valmsg-for="contacto2" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>

                                </div>

                                <div class="form-group">

                                    <label for="username" class="control-label mb-1">Username:</label>
                                    <div class="input-group">
                                        <input id="username" name="username" type="email" class="form-control cc-cvc" value="" data-val="true" data-val-required="Please enter the security code"
                                               data-val-cc-cvc="Please enter a valid security code" autocomplete="off">
                                    </div>

                                </div>

                                <div class="row">

                                    <div class="col-6">

                                    <label for="username" class="control-label mb-1">Password:</label>
                                    <input id="password" name="password" type="tel" class="form-control password identified visa" value="" data-val="false"
                                           data-val-required="Insira o seu username" data-val-username="Please enter a valid card number"
                                           autocomplete="username">
                                    <span class="help-block" data-valmsg-for="username" data-valmsg-replace="true"></span>

                                    </div>

                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="password1" class="control-label mb-1">Confirmar Password:</label>
                                            <input id="password1" name="password1" type="password" class="form-control password" value="" data-val="true" data-val-required="Please enter the card expiration"
                                                   data-val-password="Please enter a valid month and year" placeholder=""
                                                   autocomplete="password">
                                            <span class="help-block" data-valmsg-for="password" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>

                                </div>

                                <div class="form-group">

                                    <label for="credito" class="control-label mb-1">Qual é o crétido que procura ?</label>
                                    <div class="input-group">

                                        <select name="credito" id="credito" class="form-control">
                                            <option value="0">Please select</option>
                                            <option value="1">Option #1</option>
                                            <option value="2">Option #2</option>
                                            <option value="3">Option #3</option>
                                        </select>

                                    </div>
                                </div>

                                <div>
                                    
                                    <button id="btn_register" type="submit" class="btn btn-lg btn-info btn-block">
                                        <i class="fa fa-send fa-lg"></i>&nbsp;
                                        <span id="btn_register-amount">Enviar Dados</span>
                                        <span id="btn_register-sending" style="display:none;">Sending…</span>
                                    </button>
                               
                            <div class="register-link">
                                <p>
                                    Ja possui conta?
                                    <a href="/login">Entrar</a>
                                </p>
                            </div>

                            </form>

                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>


    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>

</body>

</html>
<!-- end document-->