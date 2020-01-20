<%-- 
    Document   : process2
    Created on : 20-ene-2020, 15:55:17
    Author     : Ayesa1
--%>

<%@page import="ModeloDAO.CityDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name =(String)session.getAttribute("name");
String countryCode =(String)session.getAttribute("countryCode");

String district = request.getParameter("district");
String population = request.getParameter("population");

try
{
CityDAO dao = new CityDAO();

//out.print("Truki2: "+ name +"|"+ countryCode+"|"+district+"|"+population);

dao.insertar(name, countryCode, district, population);
request.getRequestDispatcher("Paises.jsp").forward(request, response);
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}finally{
    request.getSession().setAttribute("name", "");
    request.getSession().setAttribute("countryCode", "");
}
%>
