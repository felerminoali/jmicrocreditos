<%-- 
    Document   : modals
    Created on : Dec 17, 2018, 12:44:51 AM
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
    <title>Forget Password</title>

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
            <div class="container col-xl-12">
                
                <div class="login-wrap col-12">
                    <div class="login-content col-12">
                        
                        <div class="login-logo">
                            <a href="#">
                                <img src="images/icon/logo.png" alt="CoolAdmin">
                            </a>
                        </div>
       
        
            <!-- modal medium -->
            
                      
                        <div class="" style="">

                            <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
                                <span class="badge badge-pill badge-success">Success</span>
                                Registo criado com sucesso
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



                        <div class="modal-footer--">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary">Confirm</button>
                        </div>
                

            <!-- end modal medium -->
        
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