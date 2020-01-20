<%-- 
    Document   : Paises
    Created on : 20-ene-2020, 9:20:09
    Author     : Ayesa1
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.City"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CityDAO"%>
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
            <a class="navbar-brand" href="#">Citys</a>

        </nav>
        <hr>

        <div class="container">

            <a class="btn btn-dark" href="cityAdd1.jsp">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-dark table-striped">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>                        
                        <th class="text-center">Name</th>
                        <th class="text-center">Country Code</th>
                        <th class="text-center">District</th>
                        <th class="text-center">Population</th>

                    </tr>
                </thead>
                <%
                    CityDAO dao = new CityDAO();
                    List<City> list = dao.listar();
                    Iterator<City> iter = list.iterator();
                    City city = null;
                    while (iter.hasNext()) {
                        city = iter.next();

                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= city.getId()%></td>                        
                        <td class="text-center"><%= city.getName()%></td>
                        <td class="text-center"><%= city.getCountryCode()%></td>
                        <td class="text-center"><%= city.getDistrict()%></td>
                        <td class="text-center"><%= city.getPopulation()%></td>







                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>


    </body>
</html>
