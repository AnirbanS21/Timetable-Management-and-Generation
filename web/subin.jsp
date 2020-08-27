<%@ page import="java.sql.*"%>
<%
    
    String name=request.getParameter("name");
    String tag=request.getParameter("tag");
    String shift=request.getParameter("shift");
    String se=request.getParameter("SE");
    String te=request.getParameter("TE");
    String be=request.getParameter("BE");
    int se1=0,te1=0,be1=0;
    out.println(se);
    out.println(te);
    out.println(be);
    if(se==null){
        
    }
    else{
        se1= Integer.parseInt(se);
    }
    if(te==null){
        
    }
    else{
        te1= Integer.parseInt(te);
    }
    if(be==null){
        
    }
    else{
        be1= Integer.parseInt(be);
    }
    int year=se1+te1+be1;
    if(year==0){
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Please select atleast one class(SE,TE,BE)');");
        out.println("location='faculty.jsp'");
        out.println("</script>");
    }
    else
    {   
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
            Statement st = con.createStatement();
            st.executeUpdate("insert into faculty (tag,name,shift,year) values('"+tag+"','"+name+"','"+shift+"','"+year+"')") ;
            response.sendRedirect("faculty.jsp");
        } 
        catch(Exception e)
        {
            out.println(e);
        }
    }
  
%>
