<%-- 
    Document   : DisplaySelector
    Created on : 28 Oct, 2019, 1:39:03 PM
    Author     : anirb
--%>
<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>selector</title>
    </head>
    <body>
       
        <h1>Error!!!</h1>
    </body>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable", "root", "root");
        Statement st = con.createStatement();

        String tag=request.getParameter("faculty");
        String shift="";
        ResultSet get=st.executeQuery("select * from faculty where tag='"+tag+"'");
        while(get.next()){
            shift=get.getString("shift");
        }
        session.setAttribute("tag", tag);
        if(shift.equals("I")){
            response.sendRedirect("DisplayFac1.jsp");
        }
        else if(shift.equals("II")){
            response.sendRedirect("DisplayFac2.jsp");
        }
        else{
            out.print("Please go back and select faculty again!!!");
        }
    %>
</html>
