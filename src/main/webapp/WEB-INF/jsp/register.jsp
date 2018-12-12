<%@ page import="com.jmicrocreditos.model.*" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="pt">

    <head>
        <title>Clients</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link rel="icon" type="/image/png" href="/images/icons/favicon.ico" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/css/util.css">
        <link rel="stylesheet" type="text/css" href="/css/main.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="/custms_css/custms_style.css">

        <script>
            function validarCadastro{

                if (document.formulario.cSenha.value !== document.formulario.senha.value) {
                    alert("Senhas diferentes, Tente novamente");
                    document.formulario.confSenha.focus();
                            return false;
                }

            }
        </script>

    </head>

    <body>

        <div class="limiter" >
            <div class="container-login100">
                <div class="wrap-login100">

                    <div class="login100-form-title" style="background-image: url(/images/cadastro.jpg);">
                        <span class="login100-form-title-1">
                            Formulário de Pré-Cadastro

                        </span>
                     </div>

                    <form class="login100-form validate-form"
                          name="formulario"
                          method="POST" action="/user/save" modelAttribute="cliente"
                          onSubmit="return validarCadastro()" style="color: black;font-weight;">

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Apelido e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="nome">Nome </label>
                            </span>
                            <input class="input100" type="text" id="nome" value=""  name="nome" placeholder="Insira o Apelido " autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>


                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Apelido e Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="apelido">Apelido </label>
                            </span>
                            <input class="input100" type="text" id="apelido" value=""  name="apelido" placeholder="Insira o Apelido " autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Numero de Documento e Obrigatório, Insira!">

                            <span class="label-input100">
                                <label for="nrBi">Nº. Doc. </label>
                            </span>
                            <input class="input100" type="text" value="" id="nrBi" name="nrBi" placeholder="Insira o Numero de Documento " autocomplete="off">
                            <span class="focus-input100"></span>

                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Contacto e Obrigatório, Insira!">

                            <span class="label-input100">
                                <label for="contacto">Contacto </label>
                            </span>

                            <input class="input100" type="number" value="" id="contacto" name="contacto" placeholder="Insira o Contacto " autocomplete="off">
                            <span class="focus-input100"></span>

                        </div>


                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Sexo e Obrigatório!">

                            <span class="label-input100" style="height: 50px;">
                                <label for="sexo">Sexo</label>
                            </span>

							<select class="input100 select_box" name="tipo_sexo" id="sexo">
                                <c:forEach items="${sexo}" var="s">
                                    <option value="${s.idsexo}">${s.descricao}</option>
                                </c:forEach>
                            </select>
                            <span class="focus-input100"></span>

                        </div>
						
						<div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Estado Civil e Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="idestadocivil">Estado Civil:</label>
                            </span>
							<select class="input100" name="idestadocivil" id="idestadocivil" style="border-radius: 10px;height: 40px;">
                                <c:forEach items="${estadocivil}" var="ec">
                                    <option value="${ec.idestadocivil}">${ec.descricao}</option>
                                </c:forEach>
                            </select>
                            <span class="focus-input100"></span>
                        </div>
						
						<div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Provincia e Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="provincia">Provincia</label>
                            </span>
                            <select class="input100 select_box" name="provincia" id="provincia">
                                <c:forEach items="${provincia}" var="prov">
                                    <option value="${prov.idprovincia}">${prov.descricao}</option>
                                </c:forEach>
                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Distrito e Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="iddistrito">Distrito</label>
                            </span>
                            <select class="input100 select_box" name="iddistrito" id="iddistrito">
                                <c:forEach items="${distrito}" var="distrito">
                                    <option value="${distrito.ididstrito}">${distrito.descricao}</option>
                                </c:forEach>
                            </select>

                            <span class="focus-input100"></span>

                        </div>


                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Numero de Documento e Obrigatório, Insira!">

                            <span class="label-input100">
                                <label for="linhaendereco1">Endereço 1. </label>
                            </span>
                            <input class="input100" type="text" value="" id="linhaendereco1" name="linhaendereco1" placeholder="Insira o enderçeo " autocomplete="off">
                            <span class="focus-input100"></span>

                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Numero de Documento e Obrigatório, Insira!">

                            <span class="label-input100">
                                <label for="linhaendereco2">Endereço 2. </label>
                            </span>
                            <input class="input100" type="text" value="" id="linhaendereco2" name="linhaendereco2" placeholder="Insira o enderçeo " autocomplete="off">
                            <span class="focus-input100"></span>

                        </div>

                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Endereço Obrigatório!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="tipocredito">O que deseja ?</label>
                            </span>
                            <select class="input100 select_box" name="tipocredito" id="tipocredito">

                                <c:forEach items="${tipocredito}" var="tipocredito">
                                    <option value="${tipocredito.idcrecredito}">${tipocredito.descricao}</option>
                                </c:forEach>

                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit" onclick="return validarCadastro()">

                               Submeter
                                <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                            </button>&nbsp;&nbsp;

                            <button class="login100-form-btn" style="background-color: darkred;" type="reset">
                                Limpar
                            </button>
                        </div>

                        <div style="margin-top: 20px;font-size: 14px;">
                            Deseja Voltar a Página Inicial?
                            <a href="/" class="txt2">
                                Página Inicial.
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--===============================================================================================-->
        <script src="/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="/vendor/bootstrap/js/popper.js"></script>
        <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="/vendor/daterangepicker/moment.min.js"></script>
        <script src="/vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="/vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="/js/main1.js"></script>

    </body>

</html>
