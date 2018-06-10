

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script src="../dist/js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../dist/js/notify.min.js" type="text/javascript"></script>
        <script src="../dist/js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../dist/js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../dist/js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#loginForm").validate({
                    rules: {
                        email: {
                            required: true
                        },
                        senha: {
                            required: true
                        },
                    },
                      submitHandler: function (form) {
                          
                    }
                });
            });
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

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-collapse">Mercadinho Santa Izabel</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" id="loginForm">
                                
                                    <label class="form-group">
                                        <input class="form-control" placeholder="E-mail" name="email" id="email" type="email" >
                                    </label>
                                    <label class="form-group">
                                        <input class="form-control" placeholder="*******" id="senha" name="senha" type="password"> 
                                    </label>
                                    
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Lembre de mim!
                                        </label>
                                        <a href="Recuperacao_de_senha.html">Nova Senha</a>
                                    
                                    <!-- Change this to a button or input when using this as a form -->
                                    <a href="index.html" class="btn btn-lg btn-success btn-block">Entrar</a>
                             
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script type="text/javascript">
            $(document).ready(function () {
                $("#loginForm").validate({
                    rules: {
                        email: {
                            required: true
                        },
                        senha: {
                            required: true,
                            minlenght: 8
                        }
                    }
                });
            });
        </script>
    </body>

</html>

