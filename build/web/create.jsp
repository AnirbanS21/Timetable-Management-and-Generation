<%@ page import="java.sql.*"%>

<%
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
          Statement st = con.createStatement();
          String user=request.getParameter("username");
          String pass= request.getParameter("password");
          String s1=null;
          int i=0;
          ResultSet s=st.executeQuery("select * from creator where username='"+user+"'");
          while(s.next()){
            s1=s.getString("username");
        }
        if(s1!=null){
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Username already exists');");
            out.println("location='register.jsp'");
            out.println("</script>");
        }
        else{
            out.println("<script type=\"text/javascript\">");
            out.println("alert('New User Added');");
            out.println("location='home.jsp'");
            out.println("</script>");
            st.executeUpdate("insert into creator values('"+user+"','"+pass+"')");
        }
%>