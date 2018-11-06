<%-- 
    Document   : pedirEmprestimo
    Created on : 25/out/2018, 23:41:54
    Author     : Miguel Angelo Nyusi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">

    <head>
        <title>Formulário de Pedido - User</title>
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

        <script src="js/validar.js"></script>
        
          <script>
            function Remover() {
                if (confirm("Deseja confirmar o emprestimo?")) {
                    return true;

                } else {
                    return false;
                }

            }

        </script>
    </head>

    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-form-title" style="background-image: url(images/emprestimo.jpg);">
                        <span class="login100-form-title-1">
                            Formulário de Pedido de Empréstimos
                        </span>
                    </div>

                    <form class="login100-form validate-form" action="" name="formulario" method="POST"  style="color: black;">

                        <input type="hidden" name="idemprestimo" value="">


                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Valor de Empréstimos é Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="valor">Valor de Empréstimos </label>
                            </span>
                            <input class="input100" type="number" value="" id="valor" name="valor" placeholder="Insira o Valor de pedido Empréstimos (MZN)" autocomplete="off">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Data de Chegada é Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="data">Data de Chegada</label>
                            </span>
                            <input class="input100" type="date" id="data" name="datachegada" value="">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input m-b-26" data-validate="O Campo Horas de Chegada é Obrigatório, Insira!">
                            <span class="label-input100">
                                <label for="hora">Horas de Chegada</label>
                            </span>
                            <input class="input100" type="time" id="hora" name="horachegada" value="">
                            <span class="focus-input100"></span>
                        </div>


                        <div class="wrap-input100 validate-input m-b-18" data-validate="O Campo Modo de Pagamento é Obrigatório, Insira!">
                            <span class="label-input100" style="height: 50px;">
                                <label for="modo">Modo de Pagamento</label>
                            </span>
                            <select class="input100" name="pagamento" id="modo" style="border-radius: 10px;height: 40px;">

                                <option value="">

                                </option>

                            </select>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" type="submit" style="width:50px;" onClick="return Remover()">

                                Confirmar Emprestimo
                                <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                            </button>&nbsp;&nbsp;

                            <button class="login100-form-btn" style="background-color: darkred;" type="reset">
                                Limpar
                            </button>

                            <div style="margin-top: 20px;font-size: 14px;">
                                Deseja Voltar a Página Inicial?
                                <a href="interfaceUser.jsp" class="txt2">
                                    Página Inicial.
                                </a>
                            </div>
                        </div>
                        <!-- <div style="margin-top: 20px;font-size: 12px;">
                             Ja possui Conta?
                             <a href="login.html" class="txt2">
                                 Iniciar Sessão!
                             </a>
                         </div>-->
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
        <!--===============================================================================================-->
        <script src="js/validar.js"></script>



    </body>

</html>
