<%-- 
    Document   : cityAdd2
    Created on : 20-ene-2020, 13:03:50
    Author     : Ayesa1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body class="bg-secondary">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- Brand/logo -->
            <a class="navbar-brand" href="cityAdd1.jsp">Citys</a>
        </nav>
        <hr>

        <div class="container">
            <form method="post" action="process2.jsp">
                <p class="text-light">Distrito:</p>
                <input class="form-control" type="text" name="district">
                <br>
                <p class="text-light">Población:</p>
                <input class="form-control" type="text" name="population"><br>


                <div class="btn btn-dark">
                    <a class="text-light" href="cityAdd1.jsp">Atrás</a>
                </div>
                <input class="btn btn-dark" type="submit" value="Grabar datos">
                
            </form>

        </div>

    </body>
</html>
