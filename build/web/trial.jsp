<%@ page import="java.sql.*"%>
<%
   String action=request.getParameter("action");   
    String username=request.getParameter("username");
    String pwd=request.getParameter("password");
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
        Statement st = con.createStatement();
        ResultSet login = st.executeQuery("Select * from creator where username='"+username+"'and password='"+pwd +"'");
        if(login.next())
        {
            
            //HttpSession session=request.getSession();
            request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("home.jsp");
            
            
       }
        else
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('username and password do not match');");
            out.println("location='login.jsp'");
            out.println("</script>");
        }
    } 
    catch(Exception e)
    {
        out.println(e);
    }
  
%>
