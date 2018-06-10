
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <script src="../dist/js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../dist/js/notify.min.js" type="text/javascript"></script>
        <script src="../dist/js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../dist/js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../dist/js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $("#nova").validate({
                    rules: {
                        email: {
                            required: true
                        },
                        novasenha: {
                            required: true,
                            minlenght: 8
                        },
                        novasenhaa: {
                            required: true,
                            minlenght: 8
                        }
                    },

                    submitHandler: function () {
                        $.notify("Senha Alterada com Sucesso!", "success");
                    }
                });
            });
        </script>
    </head>

    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-collapse">Mercadinho Santa Izabel</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" id="nova">

                                <label class="form-group">
                                    <input class="form-control" placeholder="E-mail" id="email" name="email" type="email" >
                                </label>
                                <label class="form-group">
                                    <input class="form-control" placeholder="Nova Senha" id="novasenha" name="password" type="password">
                                </label>
                                <label class="form-group">
                                    <input class="form-control" placeholder="Digite Novamente a Senha" id="novasenhaa" name="password" type="password" >
                                </label>
                                <div class="checkbox">

                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="login.html" class="btn btn-lg btn-success btn-block">Atualizar</a>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../dist/js/sb-admin-2.js"></script>

    </body>

</html>
