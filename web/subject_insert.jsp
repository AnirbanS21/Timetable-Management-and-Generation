<%@ page import="java.sql.*"%>
<%
    
    String subcode=request.getParameter("sb1[]");
    String subname=request.getParameter("tm1[]");
    String year=request.getParameter("y1");
    int lec_limit=Integer.parseInt(request.getParameter("lec_limit"));
    
    
    
    try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
            Statement st = con.createStatement();
            //st.executeUpdate("insert into room (room_no,category) values('"+room_no+"','"+category+"')") ;
            if(lec_limit<1)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Limit should be more than 1!!!');");
                out.println("location='subjects.jsp'");
                out.println("</script>");
            }
            else
            {
                PreparedStatement p5=con.prepareStatement("call subject_insert('"+subcode+"','"+subname+"','"+year+"',"+lec_limit+")");
                p5.executeUpdate();
                if((subcode.compareTo("lab")>0)||(subcode.compareTo("Lab")>0))
                    response.sendRedirect("practical.jsp");
                response.sendRedirect("subjects.jsp");
            }
        } 
        catch(Exception e)
        {
            out.println(e);
        }
    
  
%>