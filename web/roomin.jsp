<%@ page import="java.sql.*"%>
<%
    
    String room_no=request.getParameter("room_no");
    String category=request.getParameter("category");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
            Statement st = con.createStatement();
            st.executeUpdate("insert into room (room_no,category) values('"+room_no+"','"+category+"')") ;
            response.sendRedirect("rooms.jsp");
        } 
        catch(Exception e)
        {
            out.println(e);
        }
    
  
%>
