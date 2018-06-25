
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


        <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- MetisMenu CSS -->

        <link href="../../vendor/metisMenu/metisMenu.min.css" rel="stylesheet" type="text/css"/>
        <!-- Custom CSS -->

        <link href="../../dist/css/sb-admin-2.min.css" rel="stylesheet" type="text/css"/>
        <!-- Morris Charts CSS -->

        <link href="../../vendor/morrisjs/morris.css" rel="stylesheet" type="text/css"/>
        <!-- Custom Fonts -->

        <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>


        <script src="../../dist/js/Chart.bundle.min.js" type="text/javascript"></script>
        <script src="../../dist/js/Chart.min.js" type="text/javascript"></script>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

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
                    <a class="navbar-brand" href="../index.jsp">Página Inicial</a>
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
                                <a href="../fornecedores/cadastrarFornecedor.jsp"><i class="fa fa-bar-chart-o fa-fw"></i> FORNECEDORES</a>
                            </li>
                            <li>
                                <a href="relatorios.jsp"><i class="fa fa-table fa-fw"></i> RELATÓRIOS</a>
                            </li>


                            <li>
                                <a href="estoque.html"><i class="fa fa-edit fa-fw"></i> ESTOQUE <span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="../CadastroProduto/CadastroProduto.jsp"><i class="fa fa-cubes fa-fw"></i>Cadastro de produtos</a>
                                    </li>

                                    <li>
                                        <a href="../compras/compras.jsp"><i class="fa fa-shopping-cart fa-fw"></i>Compras</a>
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
                        <h1 class="page-header">RELATÓRIOS</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-12">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Arquivos Externos</button>
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3 class="modal-title" id="exampleModalLabel">PLANILHAS</h3>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">

                                        <a href="#"><img style="max-height: 50px;max-width: 50px" src="../../img/Excel_2013.png" alt="Relatório Mensal - Despesas Mercadinho" />  Relatório Mensal - Despesas Mercadinho</a>
                                        <div class="dropdown-divider"></div>
                                        <a href="#"><img style="max-height: 50px;max-width: 50px" src="../../img/Excel_2013.png" alt="Relatório Mensal - Despesas Pessoais" />  Relatório Mensal - Despesas Pessoais</a>
                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                        <div class="col-lg-3">
                            <canvas id="bar-chart"></canvas>
                            <script>
                                var ctx = document.getElementsByClassName("bar-chart");
                                var bar-chart = new Chart(ctx, {
                                type: 'bar',
                                        data: {
                                        labels: ["janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"],
                                                datasets:[
                                                        label: "Vendas",
                                                        data:[20, 16, 10, 17, 15, 14, 13, 15, 14, 19, 18, 23],
                                                        backgroundColor: [
                                                                'rgba(255, 99, 132, 0.2)',
                                                                'rgba(54, 162, 235, 0.2)',
                                                                'rgba(255, 206, 86, 0.2)',
                                                                'rgba(75, 192, 192, 0.2)',
                                                                'rgba(153, 102, 255, 0.2)',
                                                                'rgba(255, 159, 64, 0.2)'
                                                        ],
                                                        borderColor: [
                                                                'rgba(255,99,132,1)',
                                                                'rgba(54, 162, 235, 1)',
                                                                'rgba(255, 206, 86, 1)',
                                                                'rgba(75, 192, 192, 1)',
                                                                'rgba(153, 102, 255, 1)',
                                                                'rgba(255, 159, 64, 1)'
                                                        ],
                                                        borderWidth: 1
                                                }]
                                        ,
                                        options: {
                                        scales: {
                                        yAxes: [{
                                        ticks: {
                                        beginAtZero:true
                                        }
                                        }]
                                        }
                                        }
                                });




                            </script>
                        </div>
                    

                </div>

            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->

        <script src="../../vendor/jquery/jquery.min.js" type="text/javascript"></script>
        <!-- Bootstrap Core JavaScript -->

        <script src="../../vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Metis Menu Plugin JavaScript -->

        <script src="../../vendor/metisMenu/metisMenu.min.js" type="text/javascript"></script>
        <!-- Morris Charts JavaScript -->

        <script src="../../vendor/raphael/raphael.min.js" type="text/javascript"></script>

        <script src="../../vendor/morrisjs/morris.min.js" type="text/javascript"></script>

        <script src="../../data/morris-data.js" type="text/javascript"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../../dist/js/sb-admin-2.min.js" type="text/javascript"></script>


        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
                                $(document).ready(function () {
                                $('#dataTables-example').DataTable({
                                responsive: true
                                });
                                });
        </script>
    </body>
</html>
