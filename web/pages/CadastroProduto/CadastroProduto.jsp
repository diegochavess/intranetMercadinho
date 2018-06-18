<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../img/favicon.ico" />

        <title>Mercadinho Santa Izabel</title>

        <!-- Bootstrap Core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <script src="../../vendor/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../../dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../dist/js/notify.min.js" type="text/javascript"></script>
        <script src="../../dist/js/jquery.maskMoney.js" type="text/javascript"></script>
        <script src="../../dist/js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/cpfBR.js" type="text/javascript"></script>

        <script 
            type="text/javascript">
                $(document).ready(function () {

                    $("#preco").maskMoney({prefix: 'R$ ', thousands: '.', decimal: ',', affixesStay: true});

                    $("#form-grupo").validate({
                        rules: {
                            codigoProduto: {
                                required: true,
                                minlength: 8

                            },
                            Produto: {
                                required: true
                            },
                            grupo: {
                                required: true
                            },
                            unidade: {
                                required: true
                            },

                            estoqueMinimo: {
                                required: true
                            },
                            estoqueAtual: {
                                required: true
                            },

                        }
                    })
                })
        </script>
    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">P�gina Inicial</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> Perfil</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Configura��es</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Sair</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Pesquisar...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="fornecedores.html"><i class="fa fa-bar-chart-o fa-fw"></i> FORNECEDORES</a>
                            </li>
                            <li>
                                <a href="relatorios.html"><i class="fa fa-table fa-fw"></i> RELAT�RIOS</a>
                            </li>
                            <li>
                                <a href="estoque.html"><i class="fa fa-edit fa-fw"></i> ESTOQUE <span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="cadastrodeprodutos.html"><i class="fa fa-cubes fa-fw"></i>Cadastro de produtos</a>
                                    </li>
                                    <li>
                                        <a href="compras.html"><i class="fa fa-shopping-cart fa-fw"></i>Compras</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="cliente/cadastrarCliente.jsp"><i class="fa fa-users fa-fw"></i> CLIENTES</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>
            <!-- CORPO 
                    DA
                P�GINA -->
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">CADASTRO DE PRODUTOS</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <form name="form-grupo" id="form-grupo">
                        <fieldset>

                            <!-- Form Name -->
                            <legend>Cadastro de Produtos</legend>

                            <!-- Text input-->
                            <div>
                                <label class="col-md-4 control-label">C�d. Produto : </label>  
                                <div class="col-md-2">
                                    <input name="codigoProduto" id="codigoProduto" type="number" placeholder="" class="form-control " required="">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div>
                                <label class="col-md-4 control-label">Produto : </label>  
                                <div class="col-md-6">
                                    <input  name="produto" id="produto" type="text" placeholder="Descri��o do Produto" class="form-control" required="">

                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div>
                                <label class="col-md-4 control-label">Grupo : </label>
                                <div class="col-md-4">
                                    <select  name="grupo" id="grupo" class="form-control">
                                        <option value="1">Higi�ne</option>
                                        <option value="2">Consumo</option>
                                        <option value="3">Limpesa</option>
                                        <option value="4">Material de Escrit�rio</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Select Basic -->
                            <div>
                                <label class="col-md-4 control-label">Unidade : </label>
                                <div class="col-md-4">
                                    <select  name="unidade" id="unidade" class="form-control">
                                        <option value="UND">Unidade</option>
                                        <option value="CX">Caixa</option>
                                        <option value="PC">Pacote</option>
                                        <option value="FAR">Fardo</option>
                                        <option value="kg">Kg</option>
                                    </select>
                                </div>
                            </div>
                            <div>
                                <label class="col-md-4 control-label">Pre�o : </label>  
                                <div class="col-md-6">
                                    <input  name="preco" id="preco" type="text" placeholder="Pre�o do Produto" class="form-control" required="">

                                </div>
                            </div>
                            <!-- Text input-->
                            <div>
                                <label class="col-md-4 control-label">Estoque M�nimo : </label>  
                                <div class="col-md-2">
                                    <input  name="estoqueMinimo" id="estoqueMinimo" type="text" placeholder="" class="form-control" required="">

                                </div>
                            </div>

                            <!-- Text input-->
                            <div>
                                <label class="col-md-4 control-label">Estoque Atual : </label>  
                                <div class="col-md-2">
                                    <input id="estoqueatual" name="estoqueatual" type="text" placeholder="" class="form-control input-md" required="">

                                </div>
                            </div>

                            <!-- Button (Double) -->
                            <div>
                                <label class="col-md-4 control-label" for="btnsalvar"></label>
                                <div class="col-md-8">
                                    <button id="btnsalvar" name="btnsalvar" class="btn btn-primary">Salvar</button>
                                    <button id="btncancelar" name="btncancelar" class="btn btn-danger">Cancelar</button>
                                </div>
                            </div>

                        </fieldset>
                    </form>

                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->



    </body>

</html>

