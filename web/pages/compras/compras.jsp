<%@page import="persistencia.EstoqueBD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dominio.Estoque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="../img/favicon.ico" />
        <title>Mercadinho Santa Izabel</title>
        <!-- DataTables CSS -->

        <link href="../../vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet"/>
        <!-- DataTables Responsive CSS -->

        <link href="../../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet"/>
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
    jQuery.noConflict();
    jQuery(function($){
       $("#datacompra").mask("99/99/9999");
       $("#vencecompra").mask("99/99/9999");
       $("#valorcompra").maskMoney({prefix: 'R$ ', thousands: '.', decimal: ',', affixesStay: true});       
       $("#formCompra").validate({
                    rules:{ empresa: {
                        required: true,
                        minlength: 8,
                        maxlength: 100
                    },
                    ncompra: {
                        required: true,
                            number: true
                    },
                    tipocompra: {
                        required: true
                    },
                    valorcompra: {
                        required: true
                    },
                    datacompra: {
                        required: true
                    },
                    vencecompra: {
                        required: true
                    }
                }
                });
    }); 
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
                            <li><a href="../login/login.html"><i class="fa fa-sign-out fa-fw"></i> Sair</a>
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
                                
                                <a href="../relatorios/relatorios.jsp"><i class="fa fa-table fa-fw"></i> RELATÓRIOS</a>
                            </li>
                            <li>
                                <a href="../estoque.html"><i class="fa fa-edit fa-fw"></i> ESTOQUE <span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="../cadastrodeprodutos.html"><i class="fa fa-cubes fa-fw"></i>Cadastro de produtos</a>
                                    </li>
                                    <li>
                                        <a href="compras/compras.jsp"><i class="fa fa-shopping-cart fa-fw"></i>Compras</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="../cliente/cadastrarCliente.jsp"><i class="fa fa-users fa-fw"></i> CLIENTES</a>
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
                        <h1 class="page-header">COMPRAS</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <%
                            String status = request.getParameter("status");
                            if (status != null) {
                                if (status.equals("OK")) {
                                    out.println("<h4 style='color:green;float:right'>");
                                    out.println("Cliente cadastrado com sucesso!");
                                    out.println("</h4>");
                                }
                            }
                        %>
                        <div class="panel panel-default in">
                            <div class="panel-heading">
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Incluir nova compra</button>
                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h3 class="modal-title" id="exampleModalLabel" >Dados da compra</h3>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <article class="form-row">
                                                    <div class="col-12">
                                                        <form class="form-group" id="formCompra" name="formCompra" method="post" action="incluirCompra.jsp">
                                                            <div class="form-row">
                                                                <label>Empresa - Credor</label>
                                                                <input type="text" class="form-control" id="empresa" name="empresa"/>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-4">
                                                                    <label>Nº da Compra</label>
                                                                    <input type="text" name="ncompra" id="ncompra" class="form-control"/>
                                                                </div>
                                                                <div class="col-lg-5">
                                                                    <label>Tipo de Compra</label>
                                                                    <input type="text" name="tipocompra" 
                                                                           id="tipocompra" class="form-control"/>
                                                                </div>
                                                                <div class="col-lg-3">
                                                                    <label>Valor da compra</label>
                                                                    <input type="text" name="valorcompra" id="valorcompra" class="form-control"/>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <label>Data da compra</label>
                                                                    <input type="text" name="datacompra" id="datacompra" class="form-control"/>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <label>Data do vencimento</label>
                                                                    <input type="text" name="vencecompra" id="vencecompra" class="form-control"/>
                 
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </article>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                                <input type="submit" name="salvar" value="Salvar" class="btn btn-primary"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Impressão
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">Imprimir Lista de Compras a Pagar</a> 

                                    </div>
                                </div>                       
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Filtro
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">Todas as Compras</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Todas Compras Vencidas</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Filtro por Fornecedor</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Filtro entre Datas de Vencimento</a>
                                    </div>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Manuntenção
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">Alterar compra selecionada</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Apagar compra marcada</a>

                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">                           
                                            </div>
                                            <!-- /.panel-heading -->
                                            <div class="panel-body">
                                                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                    <thead>
                                                        <tr>
                                                            <th>Nº da compra</th>
                                                            <th>Fornecedor/Prestador de Serviço</th>
                                                            <th>Valor da Compra</th>
                                                            <th>Data da Emissão</th>
                                                            <th>Data de Vencimento</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="odd gradeX">
                                                            <td>1</td>
                                                            <td>Spani</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="even gradeC">
                                                            <td>2</td>
                                                            <td>Maximo</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="odd gradeA">
                                                            <td>3</td>
                                                            <td>Spani</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="even gradeA">
                                                            <td>4</td>
                                                            <td>Extra</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="odd gradeA">
                                                            <td>5</td>
                                                            <td>Spani</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="even gradeA">
                                                            <td>6</td>
                                                            <td>Extra</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>7</td>
                                                            <td>Extra</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>8</td>
                                                            <td>Spani</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>9</td>
                                                            <td>Extra</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>10</td>
                                                            <td>Spani</td>
                                                            <td>R$200,00</td>
                                                            <td class="center">00/00/00</td>
                                                            <td class="center">00/00/00</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Gecko</td>
                                                            <td>Camino 1.0</td>
                                                            <td>OSX.2+</td>
                                                            <td class="center">1.8</td>
                                                            <td class="center">A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Gecko</td>
                                                            <td>Camino 1.5</td>
                                                            <td>OSX.3+</td>
                                                            <td class="center">1.8</td>
                                                            <td class="center">A</td>
                                                        </tr>
                                                        <tr class="gradeA">
                                                            <td>Gecko</td>
                                                            <td>Netscape 7.2</td>
                                                            <td>Win 95+ / Mac OS 8.6-9.2</td>
                                                            <td class="center">1.7</td>
                                                            <td class="center">A</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#wrapper -->
        <script src="../../vendor/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../../vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- DataTables JavaScript -->

        <script src="../../vendor/datatables/js/jquery.dataTables.min.js" type="text/javascript"></script>

        <script src="../../vendor/datatables-plugins/dataTables.bootstrap.min.js" type="text/javascript"></script>

        <script src="../../vendor/datatables-responsive/dataTables.responsive.js" type="text/javascript"></script>
        <!-- Custom Theme JavaScript -->

        <script src="../../dist/js/sb-admin-2.js" type="text/javascript"></script>
        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function () {
                $('#dataTables-example').DataTable({
                    responsive: true
                });
            });
        </script>
        <!-- Metis Menu Plugin JavaScript -->

        <script src="../../vendor/metisMenu/metisMenu.min.js" type="text/javascript"></script>
        <!-- Custom Theme JavaScript -->

        <script src="../../dist/js/sb-admin-2.js" type="text/javascript"></script>
    </body>
</html>
