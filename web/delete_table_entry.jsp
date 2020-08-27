<\%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
String divi="";
out.println(id);
out.println(id);
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable", "root", "root");
    Statement st2=conn.createStatement();
    PreparedStatement p = conn.prepareStatement("DELETE FROM timetable WHERE id='"+id+"'");
    ResultSet set=st2.executeQuery("select * from timetable where id='"+id+"'");
    while(set.next())
    {
        divi=set.getString("divi");
    }
    int i2=p.executeUpdate();

    out.println(i2);
    if(i2 == 0) {
        out.println("fail");
    }
    else {
        out.println("Data Deleted Successfully!");
    }

    if(divi!=null)
    {
        if(divi.equals("SEa"))
            response.sendRedirect("display_tableSEa.jsp");
        else if(divi.equals("SEb"))
            response.sendRedirect("display_tableSEb.jsp");
        else if(divi.equals("TEa"))
            response.sendRedirect("display_tableTEa.jsp");
        else if(divi.equals("TEb"))
            response.sendRedirect("display_tableTEb.jsp");
        else if(divi.equals("BEa"))
            response.sendRedirect("display_tableBEa.jsp");
        else if(divi.equals("BEb"))
            response.sendRedirect("display_tableBEb.jsp");
    }
}
catch(Exception e)
{
    System.out.print(e);
    e.printStackTrace();
}
%>
