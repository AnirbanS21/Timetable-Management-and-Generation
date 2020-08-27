<\%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String room_id=request.getParameter("room_id");
out.println(room_id);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable", "root", "root");

Statement st2=conn.createStatement();
PreparedStatement p = conn.prepareStatement("DELETE FROM room WHERE room_id="+room_id+"");
out.println(room_id);
//PreparedStatement p2 = conn.prepareStatement("DELETE FROM teach WHERE tag='"+tag+"'");
int k=st2.executeUpdate("delete from room where room_no='null'");
st2.executeUpdate("delete from room where room_no=''");
//int i=p2.executeUpdate();
int i2=p.executeUpdate();

out.println(i2);
if(i2 == 0) {
    out.println("fail");
  response.sendRedirect("rooms.jsp");
}else {
    
out.println("Data Deleted Successfully!");
response.sendRedirect("rooms.jsp");
}
%>
response.sendRedirect("rooms.jsp");

<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
