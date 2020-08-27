<\%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String time=request.getParameter("time");
out.println(time);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable", "root", "root");

Statement st2=conn.createStatement();
PreparedStatement p = conn.prepareStatement("DELETE FROM faculty WHERE tag='"+tag+"'");
PreparedStatement p2 = conn.prepareStatement("DELETE FROM teach WHERE tag='"+tag+"'");
int k=st2.executeUpdate("delete from faculty where tag='null'");
st2.executeUpdate("delete from faculty where tag=''");
int i=p2.executeUpdate();
int i2=p.executeUpdate();

out.println(i);
if(i == 0) {
    out.println("fail");
  response.sendRedirect("faculty.jsp");
}else {
    
out.println("Data Deleted Successfully!");
response.sendRedirect("faculty.jsp");
}
%>
response.sendRedirect("faculty.jsp");


<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
