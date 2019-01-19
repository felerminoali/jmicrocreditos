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
    <title>Login</title>

</head>


<body class="animsition">

    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">

                <div class="login-wrap">
                    <div class="login-content">

                        <div class="login-logo">
                            <a href="#">
                                <img src="images/icon/logo.png" alt="CoolAdmin">
                            </a>
                        </div>

                        <div class="login-form">
                            <form action="" method="post">
                                <div class="form-group">
                                    <label>Correio Electronico</label>
                                    <input class="au-input au-input--full" type="email" name="email" placeholder="Email">

                                    <%--<label>Username</label>--%>
                                    <%--<input class="au-input au-input--full" type="text" name="username" placeholder="Username">--%>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="Password">
                                </div>
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="remember">Lembrar Me
                                    </label>
                                    <label>
                                        <a href="forget-pass.html">Esqueceu Password?</a>
                                    </label>
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">Entrar</button>

                            </form>
                            <div class="register-link">
                                <p>
                                    Nao possui Conta?
                                    <a href="/user/register">Registar - se </a>

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                    <!--  fim login  -->

            </div>
        </div>
    </div>
    <!-- Jquery JS-->
</body>

</html>
<!-- end document-->