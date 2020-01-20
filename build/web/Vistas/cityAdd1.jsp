<%-- 
    Document   : cityAdd1
    Created on : 20-ene-2020, 12:46:40
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
            <form method="post" action="process.jsp">
                <p class="text-light">Name:</p>
                <input class="form-control" type="text" name="name" value="<%=session.getAttribute("name")%>"><br>
                <p class="text-light">Country Code:</p>
                <input class="form-control" type="text" name="countryCode" value="<%=session.getAttribute("countryCode")%>"><br>

                <!--Para probar
                
                <p class="text-light">Distrito:</p>
                <input class="form-control" type="text" name="district"><br>
                <p class="text-light">Población:</p>
                <input class="form-control" type="number" name="population">
                
                -------------->
                <div class="btn btn-dark">
                    <a class="text-light" href="Paises.jsp">Volver</a>
                </div>
                <input class="btn btn-dark text-light" type="submit" value="Siguiente">
                <!--
                <div class="btn btn-dark">
                    <a class="text-light" href="cityAdd2.jsp">Siguiente</a>
                </div>
                -->


            </form>


        </form>

    </form>
</div>

</body>
</html>
