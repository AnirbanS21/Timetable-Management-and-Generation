<%@ page import="java.sql.*"%>
<%
   String action=request.getParameter("action");   
    
    try
    {
        
            response.sendRedirect("faculty.jsp");
    } 
    catch(Exception e)
    {
        out.println(e);
    }
  
%>
