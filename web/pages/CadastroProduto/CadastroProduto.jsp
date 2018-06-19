<%@page import="persistencia.CadastroProdutoBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.CadastroProduto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="../../img/favicon.ico" />
        <title>Mercadinho Santa Izabel</title>
        <!-- DataTables CSS -->
        <link href="../../vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="../../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

        <!-- Bootstrap Core CSS -->
        <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- MetisMenu CSS -->
        <link href="../../vendor/metisMenu/metisMenu.min.css" rel="stylesheet" type="text/css"/>

        <!-- Custom CSS -->
        <link href="../../dist/css/sb-admin-2.css" rel="stylesheet" type="text/css"/>

        <!-- Custom Fonts -->
        <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Validate Form -->
        <script src="../../vendor/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../../dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../dist/js/notify.min.js" type="text/javascript"></script>
        <script src="../../dist/js/jquery.maskMoney.js" type="text/javascript"></script>
        <script src="../../dist/js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/cpfBR.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {

                $("#txtpreco").maskMoney({prefix: 'R$ ', thousands: '.', decimal: ',', affixesStay: true});

                $("#formProduto").validate({
                    rules: {
                        codigoProduto: {
                            required: true,

                            maxlength: 12
                        },

                        produto: {
                            required: true
                        },
                        grupo: {
                            required: true
                        },
                       unidade: {
                            required: true
                        },
                        preco: {
                            required: true,
                            
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
        <style type="text/css">
            label.error{
                color: red;
            }
            input.error{
                border: 1px solid red;
            }
            .error{
                font-size: 12px;
            }
        </style>
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
                    <a class="navbar-brand" href="../index.html">Página Inicial</a>
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
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Configurações</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="../login/login.jsp"><i class="fa fa-sign-out fa-fw"></i> Sair</a>
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
                                <a href="../fornecedores.html"><i class="fa fa-bar-chart-o fa-fw"></i> FORNECEDORES</a>
                            </li>
                            <li>
                                <a href="../relatorios.html"><i class="fa fa-table fa-fw"></i> RELATÓRIOS</a>
                            </li>
                            <li>
                                <a href="../estoque.html"><i class="fa fa-edit fa-fw"></i> ESTOQUE <span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="../cadastrodeprodutos.html"><i class="fa fa-cubes fa-fw"></i>Cadastro de produtos</a>
                                    </li>
                                    <li>
                                        <a href="../compras/compras.jsp"><i class="fa fa-shopping-cart fa-fw"></i>Compras</a>
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
                PÁGINA -->
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">CADASTRO DE PRODUTOS</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <form name="formProduto" id="formProduto" method="post" action="incluir.jsp">
                        <fieldset>

                            <!-- Form Name -->
                            <legend>Cadastro de Produtos</legend>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="txtcodigo_produto_id">Cód. Produto : </label>  
                                <div class="col-md-2">
                                    <input id="txtcodigo_produto_id" name="codigoProduto" type="text" placeholder="" class="form-control input-md">

                                </div>
                            </div>
                            <br/><br/><br/>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="txtproduto">Produto : </label>  
                                <div class="col-md-6">
                                    <input id="txtproduto" name="produto" type="text" placeholder="Descrição do Produto" class="form-control input-md" required="">

                                </div>
                            </div>
                            <br/><br/>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="txtgrupo">Grupo : </label>
                                <div class="col-md-4">
                                    <select id="txtgrupo" name="grupo" class="form-control">
                                        <option value=""selected="selected">Selecione</option>
                                        <option value="1">Higiêne</option>
                                        <option value="2">Consumo</option>
                                        <option value="3">Limpesa</option>
                                        <option value="4">Material de Escritório</option>
                                    </select>
                                </div>
                            </div>
                            <br/><br/><br/>

                            <!-- Select Basic -->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="txtcodigo_unidade_id">Unidade : </label>
                                <div class="col-md-6">
                                    <select id="txtcodigo_unidade_id" name="unidade" class="form-control">
                                         <option value=""selected="selected">Selecione</option>
                                        <option value="UND">Unidade</option>
                                        <option value="CX">Caixa</option>
                                        <option value="PC">Pacote</option>
                                        <option value="FAR">Fardo</option>
                                        <option value="kg">Kg</option>
                                    </select>
                                </div>
                            </div>
                            <br/><br/><br/>
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="txtpreco">Preço : </label>  
                                <div class="col-md-6">
                                    <input id="txtpreco" name="preco" type="text" placeholder="Preço do Produto" class="form-control input-md" required="">

                                </div>
                            </div>
                            <br/><br/><br/>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="txtestoque_minimo">Estoque Mínimo : </label>  
                                <div class="col-md-6">
                                    <input id="txtestoque_minimo" name="estoqueMinimo" type="text" placeholder="" class="form-control input-md" required="">

                                </div>
                            </div>
                            <br/><br/>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="txtestoque_atual">Estoque Atual : </label>  
                                <div class="col-md-6">
                                    <input id="txtestoque_atual" name="estoqueAtual" type="text" placeholder="" class="form-control input-md">

                                </div>
                            </div>
                            <br/><br/><br/><br/>
                            <!-- Button (Double) -->
                            <div class="form-group">
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

        <!-- jQuery -->
        <script src="../vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../dist/js/sb-admin-2.js"></script>

    </body>

</html>

