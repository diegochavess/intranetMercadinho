<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="../../img/favicon.ico" />
        <title>Mercadinho Santa Izabel</title>

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
        <script src="../../dist/js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../../dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../dist/js/notify.min.js" type="text/javascript"></script>
        <script src="../../dist/js/jquery.maskMoney.js" type="text/javascript"></script>
        <script src="../../dist/js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/cpfBR.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#telefone").mask("(00)0000-0000")
                $("#celular").mask("(00)00000-0000")
                $("#cpf").mask("000.000.000-00")
                $("#renda").maskMoney({prefix: 'R$ ', thousands: '.', decimal: ',', affixesStay: true});
                $("#limite").maskMoney({prefix: 'R$ ', thousands: '.', decimal: ',', affixesStay: true});
                $("#formCliente").validate({
                    rules: {
                        nome: {
                            required: true,
                            minlength: 8,
                            maxlength: 100
                        },
                        sexo: {
                            required: true
                        },
                        ecivil: {
                            required: true
                        },
                        endereco: {
                            required: true
                        },
                        numero: {
                            required: true,
                            number: true
                        },
                        cidade: {
                            required: true
                        },
                        uf: {
                            required: true
                        },
                        telefone: {
                            required: true,
                            minlength: 13,
                        },
                        celular: {
                            required: true,
                            minlength: 14,
                        },
                        cpf: {
                            required: true,
                            cpfBR: true
                        },
                        email: {
                            required: true,
                            validaEmail: true
                        },
                        profissao: {
                            required: true
                        },
                        renda: {
                            required: true
                        },
                        limite: {
                            required: true
                        }
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
                            <li><a href="../login.html"><i class="fa fa-sign-out fa-fw"></i> Sair</a>
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
                                        <a href="../compras.html"><i class="fa fa-shopping-cart fa-fw"></i>Compras</a>
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
                        <h1 class="page-header">CLIENTES</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="pill" href="#cadastro">CADASTRO</a></li>
                        <li><a data-toggle="pill" href="#todos">TODOS</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="cadastro" class="tab-pane fade in active">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3>NOVO CADASTRO</h3>
                                        </div>
                                        <!-- /.panel-heading -->
                                        <div class="panel-body">
                                            <form name="formCliente" id="formCliente" method="post" action="incluir.jsp">
                                                <div class="row">
                                                    <div class="col-md-8">
                                                        <div class="form-group">
                                                            <label>Nome Completo:</label>
                                                            <input name="nome" type="text" class="form-control" id="nome">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Sexo:</label>
                                                            <select name="sexo" class="form-control" id="sexo">
                                                                <option value=""></option>
                                                                <option value="masculino">Masculino</option>
                                                                <option value="feminino">Feminino</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Estado Civil:</label>
                                                            <select name="ecivil" class="form-control" id="ecivil">
                                                                <option value=""></option>
                                                                <option value="solteiro">Solteiro(a)</option>
                                                                <option value="casado">Casado(a)</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Endereço:</label>
                                                            <input name="endereco" type="text" class="form-control" id="endereco">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Número:</label>
                                                            <input name="numero" type="text" class="form-control" id="numero">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Cidade:</label>
                                                            <input name="cidade" type="text" class="form-control" id="cidade">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>UF:</label>
                                                        <select name="uf" class="form-control" id="uf">
                                                            <option value=""></option>
                                                            <option value="ac">AC</option>
                                                            <option value="al">AL</option>
                                                            <option value="am">AM</option>
                                                            <option value="ap">AP</option>
                                                            <option value="ba">BA</option>
                                                            <option value="ce">CE</option>
                                                            <option value="df">DF</option>
                                                            <option value="es">ES</option>
                                                            <option value="go">GO</option>
                                                            <option value="ma">MA</option>
                                                            <option value="mg">MG</option>
                                                            <option value="ms">MS</option>
                                                            <option value="mt">MT</option>
                                                            <option value="pa">PA</option>
                                                            <option value="pb">PB</option>
                                                            <option value="pe">PE</option>
                                                            <option value="pi">PI</option>
                                                            <option value="pr">PR</option>
                                                            <option value="rj">RJ</option>
                                                            <option value="rn">RN</option>
                                                            <option value="ro">RO</option>
                                                            <option value="rr">RR</option>
                                                            <option value="rs">RS</option>
                                                            <option value="sc">SC</option>
                                                            <option value="se">SE</option>
                                                            <option value="sp">SP</option>
                                                            <option value="to">TO</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>CPF:</label>
                                                            <input name="cpf" type="text" class="form-control" id="cpf">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Telefone:</label>
                                                            <input name="telefone" type="text" class="form-control" id="telefone">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Celular:</label>
                                                            <input name="celular" type="text" class="form-control" id="celular">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <div class="form-group">
                                                            <label>E-mail:</label>
                                                            <input name="email" type="text" class="form-control" id="email">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Profissão:</label>
                                                            <input name="profissao" type="text" class="form-control" id="profissao">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Renda Mensal:</label>
                                                            <input name="renda" type="text" class="form-control" id="renda">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Limite de Compra:</label>
                                                            <input name="limite" type="text" class="form-control" id="limite">
                                                        </div>
                                                    </div>
                                                </div> <br /> 
                                                <div class="row">
                                                    <input type="submit" name="salvar" value="Salvar" class="btn btn-primary" />
                                                </div>
                                            </form>  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="todos" class="tab-pane fade">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3>TODOS OS CLIENTES</h3>
                                        </div>
                                        <!-- /.panel-heading -->
                                        <div class="panel-body">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                <thead>
                                                    <tr>
                                                        <th>Nome Completo</th>
                                                        <th>Limite Disponível</th>
                                                        <th>Saldo Devedor</th>
                                                        <th></th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="odd gradeX">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td>Win 95+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 5.0</td>
                                                        <td>Win 95+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="odd gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 5.5</td>
                                                        <td>Win 95+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="even gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 6</td>
                                                        <td>Win 98+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="odd gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 7</td>
                                                        <td>Win XP SP2+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="even gradeA">
                                                        <td>Trident</td>
                                                        <td>AOL browser (AOL desktop)</td>
                                                        <td>Win XP</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Firefox 1.0</td>
                                                        <td>Win 98+ / OSX.2+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Firefox 1.5</td>
                                                        <td>Win 98+ / OSX.2+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Firefox 2.0</td>
                                                        <td>Win 98+ / OSX.2+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Firefox 3.0</td>
                                                        <td>Win 2k+ / OSX.3+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Camino 1.0</td>
                                                        <td>OSX.2+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Camino 1.5</td>
                                                        <td>OSX.3+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Netscape 7.2</td>
                                                        <td>Win 95+ / Mac OS 8.6-9.2</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Netscape Browser 8</td>
                                                        <td>Win 98SE+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Netscape Navigator 9</td>
                                                        <td>Win 98+ / OSX.2+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.0</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.1</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center"><a href="" class="btn btn-primary">Atualizar</a></td>
                                                        <td class="center"><a href="" class="btn btn-danger">Remover</a></td>>
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
        <!-- /#wrapper -->

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../../vendor/metisMenu/metisMenu.min.js" type="text/javascript"></script>

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
    </body>
</html>
