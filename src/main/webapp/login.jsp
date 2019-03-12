<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="./css/styles.css">
        <title>Login</title>
    </head>
    <body>

        <div class="wrapper fadeInDown">
            <div id="formContent">

                <div class="container">
                    <h3>Welcome back</h3>
                    <form action="login" method="POST">
                        <input type="text" id="login" class="fadeIn second" name="email" placeholder="Email">
                        <input type="text" id="password" class="fadeIn third" name="password" placeholder="Password">
                        <input type="submit" class="fadeIn fourth" value="Log In">
                    </form>
                </div> 
            </div> 
        </div> 
    </body>
</html>
