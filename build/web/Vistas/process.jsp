<%@page import="ModeloDAO.CityDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String name = request.getParameter("name");
String countryCode = request.getParameter("countryCode");

try
{
    
session.setAttribute("name",name);
session.setAttribute("countryCode",countryCode);
}


catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}finally{
    request.getRequestDispatcher("cityAdd2.jsp").forward(request, response);
}
%>