<%@ page import="java.sql.*"%>
<%
    String tag= request.getParameter("faculty");
    String subject= request.getParameter("subject");
    String div= request.getParameter("division");

    try
    {  
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
        Statement st = con.createStatement();
          
        div="TE"+div;
        int id;
        String i=null;
        ResultSet find=st.executeQuery("select count(*) from teach where subcode='"+subject+"' and class_div='"+div+"'");
        find.next();
        String j=find.getString("count(*)");
        
        if(!j.equals("0"))
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Faculty already assigned!!!');");
            out.println("location='teachTE.jsp'");
            out.println("</script>");
        }
        else
        {
            ResultSet get=st.executeQuery("select * from teach order by tid desc");        
            while(get.next())
            {
                i=get.getString("tid");
                break;
            }
            if(i!=null)
            {
                id=Integer.parseInt(i);
                id=id+1;
            }  
            else
                id=1;
            st.executeUpdate("Insert into teach(tid,tag,subcode,class_div) values('"+id+"','"+tag+"','"+subject+"','"+div+"')");
            response.sendRedirect("teachTE.jsp");
        }
    } 
    catch(Exception e)
    {
        out.print("na munna na");
        out.println(e);
    }
%>