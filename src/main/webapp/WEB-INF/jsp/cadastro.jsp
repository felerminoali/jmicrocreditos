<%-- 
    Document   : cadastro
    Created on : 25/out/2018, 23:31:36
    Author     : Miguel Angelo Nyusi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Formulário de Cadastro - Usuario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->

    </head>

    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-form-title" style="background-image: url(images/cadastro.jpg);">
                        <span class="login100-form-title-1">
                            Formulário de Cadastro ${user.name}
                        </span>

                    </div>

                    <form class="login100-form validate-form" name="formulario" method="POST" action="" style="color: black;font-weight:">
                        <input type="hidden" name="idcliente" value="">
                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Nome  e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="nome">Nome </label>
                            </span>
                            <input class="input100" type="text" name="nome" value=""  id="nome" placeholder="Insira o Nome" autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Apelido e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="apelido">Apelido </label>
                            </span>
                            <input class="input100" type="text" id="apelido" value=""  name="apelido" placeholder="Insira o Apelido " autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Data de Nascimento  e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="data">Data de Nascimento </label>
                            </span>
                            <input class="input100" value="" type="date" id="data" name="datanasc" >
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Palavra Passe e Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="sexo">Sexo</label>
                            </span>
                            <select class="input100" name="tipo_sexo" id="sexo" style="border-radius: 10px;height: 40px;">
                            <option value=""></option>
                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Distrito e Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="distrito">Distrito</label>
                            </span>
                            <select class="input100" name="distrito" id="distrito" style="border-radius: 10px;height: 40px;">

                                <option value=""></option>

                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Tipo de Documento e Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="documento">Tipo de Documento</label>
                            </span>
                            <select class="input100" name="documento" id="documento" style="border-radius: 10px;height: 40px;">

                            <option value=""></option>

                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Numero de Documento e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="ndoc">Numero de Documento </label>
                            </span>
                            <input class="input100" type="text" value="${cliente.ndoc}" id="ndoc" name="ndoc" placeholder="Insira o Numero de Documento " autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Tipo de Banco Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="banco">Tipo de Banco</label>
                            </span>
                            <select class="input100" name="tipo_banco" id="banco" style="border-radius: 10px;height: 40px;">

                            <option value=""></option>

                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Numero de Conta e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="nConta">Numero de Conta </label>
                            </span>
                            <input class="input100" type="number" id="nConta" name="nbanco" value="" placeholder="Insira o Numero de Conta " autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Endereço Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="endereco">Endereço</label>
                            </span>
                            <select class="input100" name="endereco" id="endereco" style="border-radius: 10px;height: 40px;">

                            <option value=""></option>
                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Contacto e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="contacto">Contacto </label>
                            </span>
                            <input class="input100" type="number" value="${cliente.contacto}" id="contacto" name="contacto" placeholder="Insira o Contacto " autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Email e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="email">Email </label>
                            </span>
                            <input class="input100" type="email" value="${cliente.email}" id="email" name="email" placeholder="Insira o Email " autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Nome de Usuário e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="username">Nome de Usuário </label>
                            </span>
                            <input class="input100" type="text" id="username" value="${cliente.nomeuser}" name="username" placeholder="Insira o Nome de Usuário" autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>


                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Palavra Passe e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="senha">Palavra Passe </label>
                            </span>
                            <input class="input100" type="password" value="${cliente.senha}" id="senha" name="senha" placeholder="Insira  Palavra Passe" autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>


                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Confirmar Palavra Passe e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="cSenha">Confirmar Palavra Passe </label>
                            </span>
                            <input class="input100" type="password" id="cSenha" name="cSenha" placeholder="Confirme a Palavra Passe" autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <!--<div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Privilegio e Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="privilegio">Privilegio</label>
                            </span>
                            <select class="input100" name="privilegio" id="privilegio" style="border-radius: 10px;height: 40px;">

                            <option value="">

                            </option>

                            </select>
                            <span class="focus-input100"></span>
                        </div>-->

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit" onclick="">

                                Cadastrar
                                <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                            </button>&nbsp;&nbsp;

                            <button class="login100-form-btn" style="background-color: darkred;" type="reset">
                                Limpar
                            </button>
                        </div>

                        <div style="margin-top: 22px;font-size: 15px;">
                            Ja possui Conta?
                            <a href="/login" class="txt2">
                                Iniciar Sessão!
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main1.js"></script>

    </body>

</html>
