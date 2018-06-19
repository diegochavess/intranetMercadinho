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
    <link href="../../dist/css/sb-admin-2.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <script src="../../vendor/jquery/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../../dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../dist/js/notify.min.js" type="text/javascript"></script>
        <script src="../../dist/js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../../dist/js/validation/localization/messages_pt_BR.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#loginForm").validate({
                    rules: {
                        email: {
                            required: true
                        },
                        senha: {
                            required: true
                        }
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
                        <h3 class="panel-title">Mercadinho Santa Izabel</h3>
                    </div>
                    <div class="panel-body">
                        <form id="loginForm">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Senha" name="Senha" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me"/>Lembre de mim!
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type=""  name="Entre" value="Entre" class="btn btn-primary" <a href="../../index.jsp"/>
                             <!---<a href="../../index.jsp" class="btn btn-lg btn-success btn-block">Entre</a>-->
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Metis Menu Plugin JavaScript -->    
    <script src="../../vendor/metisMenu/metisMenu.min.js" type="text/javascript"></script>
    <!-- Custom Theme JavaScript -->
    <script src="../../dist/js/sb-admin-2.min.js" type="text/javascript"></script>
</body>

</html>
