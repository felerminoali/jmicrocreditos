<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Register</title>

    <!-- Fontfaces CSS-->


</head>

<body class="animsition">

<jsp:include page="header.jsp"></jsp:include>
<div class="page-wrapper">
    <div class="page-content--bgf7">
        <div class="container">
            <div class="login-wrap">
                <div class="login-content">

                    <div class="login-logo">
                        <a href="#" class="alert-heading">
                            <img src="/images/icon/logo.png" alt="CoolAdmin">
                        </a>

                        <%--<div class="sufee-alert alert with-close alert-success alert-dismissible fade show">--%>
                            <%--<span class="badge badge-pill badge-success">Success</span>--%>
                            <%--You successfully inserted--%>
                            <%--<button type="button" class="close" data-dismiss="alert" aria-label="Close">--%>
                                <%--<span aria-hidden="true">&times;</span>--%>
                            <%--</button>--%>
                        <%--</div>--%>

                    </div>

                    <div class="login-form">
                        <form action="" method="post" novalidate="novalidate">

                            <div class="row">
                                <div class="col-6">
                                    <label for="nome" class="control-label mb-1">Primeiro nome: </label>
                                    <input id="nome" name="nome" type="text" class="form-control" aria-required="true"
                                           aria-invalid="false" value="">
                                </div>
                                <div class="col-6">
                                    <label for="apelido" class="control-label mb-1">Apelido</label>
                                    <input id="apelido" name="apelido" type="text" class="form-control apelido valid"
                                           data-val="true"
                                           data-val-required="Please enter the name on card"
                                           autocomplete="apelido" aria-required="true" aria-invalid="false"
                                           aria-describedby="apelido-error">
                                    <span class="help-block field-validation-valid" data-valmsg-for="apelido"
                                          data-valmsg-replace="true"></span>
                                </div>

                            </div>


                            <div class="form-group">

                                <label for="email" class="control-label mb-1">Nr. Documento:</label>
                                <div class="input-group">
                                    <input id="nr_documento" name="nr_documento" type="text" class="form-control cc-cvc"
                                           value=""
                                           data-val="true" data-val-required="Please enter the security code"
                                           data-val-cc-cvc="Please enter a valid security code" autocomplete="off">
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-6">
                                    <label for="sexo" class="control-label mb-1">Sexo:</label>

                                    <select name="sexo" id="sexo" class="form-control">
                                        <c:forEach items="${sexo}" var="s">
                                            <option value="${s.idsexo}">${s.descricao}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="idestadocivil" class="control-label mb-1">Estado Civil</label>
                                        <select name="idestadocivil" id="idestadocivil" class="form-control">
                                            <c:forEach items="${estadocivil}" var="ec">
                                                <option value="${ec.idestadocivil}">${ec.descricao}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>


                            <div class="row">

                                <div class="col-6">
                                    <label for="contacto1" class="control-label mb-1">Provincia:</label>

                                    <select name="provincia" id="provincia" class="form-control">
                                        <c:forEach items="${provincia}" var="prov">
                                            <option value="${prov.idprovincia}">${prov.descricao}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="contacto2" class="control-label mb-1">Distrito</label>
                                        <select name="iddistrito" id="iddistrito" class="form-control">
                                            <c:forEach items="${distrito}" var="distrito">
                                                <option value="${distrito.ididstrito}">${distrito.descricao}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">

                                <label for="endereco1" class="control-label mb-1">Endereco 1:</label>
                                <input id="endereco1" name="endereco1" type="txt"
                                       class="form-control endereco1 identified visa" value="" data-val="false"
                                       data-val-required="Insira o endereço" autocomplete="endereco1">
                                <span class="help-block" data-valmsg-for="endereco1" data-valmsg-replace="true"></span>

                            </div>

                            <div class="form-group">
                                <div class="form-group">
                                    <label for="endereco2" class="control-label mb-1">Endereco 2:</label>
                                    <input id="endereco2" name="endereco2" type="txt"
                                           class="form-control endereco2 identified visa" value="" data-val="false"
                                           data-val-required="Insira o endereço" autocomplete="endereco2">
                                    <span class="help-block" data-valmsg-for="endereco1"
                                          data-valmsg-replace="true"></span>
                                </div>
                            </div>


                            <div class="row">

                                <div class="col-6">

                                    <label for="contacto1" class="control-label mb-1">Contacto 1:</label>
                                    <input id="contacto1" name="contacto1" type="text"
                                           class="form-control contacto1 identified visa" value="" data-val="false"
                                           data-val-required="Insira o seu contacto"
                                           data-val-username="Please enter a valid contacto"
                                           autocomplete="contacto1">
                                    <span class="help-block" data-valmsg-for="contacto1"
                                          data-valmsg-replace="true"></span>

                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="contacto2" class="control-label mb-1">Contacto 2:</label>
                                        <input id="contacto2" name="contacto2" type="text"
                                               class="form-control contacto1 identified visa" value="" data-val="false"
                                               data-val-required="Insira o seu contacto"
                                               data-val-username="Please enter a valid contacto"
                                               autocomplete="contacto2">
                                        <span class="help-block" data-valmsg-for="contacto1"
                                              data-valmsg-replace="true"></span>
                                    </div>
                                </div>

                            </div>

                            <div class="form-group">

                                <label for="email" class="control-label mb-1">Email:</label>
                                <div class="input-group">
                                    <input id="email" name="email" type="email" class="form-control" value=""
                                           data-val="true"
                                           data-val-required="Inserira o email"
                                           data-val-cc-cvc="Insira email" autocomplete="off">

                                </div>
                            </div>

                            <div class="row">

                                <div class="col-6">

                                    <label for="password" class="control-label mb-1">Password:</label>
                                    <input id="password" name="password" type="password"
                                           class="form-control password identified visa" value="" data-val="false"
                                           data-val-required="Insira o seu passord"
                                           data-val-username="Please enter a valid password"
                                           autocomplete="password">
                                    <span class="help-block" data-valmsg-for="username"
                                          data-valmsg-replace="true"></span>

                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="password1" class="control-label mb-1">Confirmar Password:</label>
                                        <input id="password1" name="password1" type="password"
                                               class="form-control password" value="" data-val="true"
                                               data-val-required="Please enter the card expiration"
                                               data-val-password="Please enter a valid month and year" placeholder=""
                                               autocomplete="password1">
                                        <span class="help-block" data-valmsg-for="password"
                                              data-valmsg-replace="true"></span>
                                    </div>
                                </div>

                            </div>

                            <div class="form-group">

                                <label for="tipocredito" class="control-label mb-1">Qual é o crétido que procura
                                    ?</label>
                                <div class="input-group">

                                    <select name="tipocredito" id="tipocredito" class="form-control">
                                        <c:forEach items="${tipocredito}" var="tipocredito">
                                            <option value="${tipocredito.idcrecredito}">${tipocredito.descricao}</option>
                                        </c:forEach>

                                    </select>

                                </div>
                            </div>

                            <div>

                                <button id="btn_register" type="submit" class="btn btn-lg btn-info btn-block">
                                    <%--<i class="fa fa-send fa-lg"></i>&nbsp;--%>
                                    <span id="btn_register-amount">Registar</span>
                                    <span id="btn_register-sending" style="display:none;">Sending…</span>
                                </button>
                            </div>


                            <div class="register-link">
                                <p>
                                    Já registado?
                                    <a href="/login">Login</a>
                                </p>
                            </div>

                        </form>

                    </div>


                </div>
            </div>
        </div>
    </div>

</div>


<jsp:include page="footer_libs.jsp"></jsp:include>

</body>

</html>
<!-- end document-->