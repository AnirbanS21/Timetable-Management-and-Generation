<\%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String sub_id=request.getParameter("sub_id");
out.println(sub_id);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable", "root", "root");
out.println("kkk");
Statement st=conn.createStatement();
ResultSet del=st.executeQuery("select * from subjects where sub_id='"+sub_id+"'");
String subcode="";
while(del.next())
{
    subcode=del.getString("subcode");
    break;
}
Statement st2=conn.createStatement();
PreparedStatement p = conn.prepareStatement("DELETE FROM subjects WHERE subcode='"+subcode+"'");
PreparedStatement p2 = conn.prepareStatement("DELETE FROM teach WHERE subcode='"+subcode+"'");
int k=st2.executeUpdate("delete from subjects where subcode='null'");
st2.executeUpdate("delete from subjects where subcode=''");
int i=p2.executeUpdate();
int i2=p.executeUpdate();

out.println(i2);
if(i2 == 0) {
    out.println("fail");
    if((subcode.compareTo("lab")>0)||(subcode.compareTo("Lab")>0))
                    response.sendRedirect("practical.jsp");
                
    response.sendRedirect("subjects.jsp");
}else {
    
out.println("Data Deleted Successfully!");
if((subcode.compareTo("lab")>0)||(subcode.compareTo("Lab")>0))
                    response.sendRedirect("practical.jsp");
                
response.sendRedirect("subjects.jsp");
}
%>
<a href="subjects.jsp">continue</a>

<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
