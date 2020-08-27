<%@page import="java.sql.*,java.util.*"%>

<script>

            var x=confirm("Are you sure you want to delete?");
             <% Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable", "root", "root");
Statement st=conn.createStatement();
                String tid=request.getParameter("tid");
                String class_div="";
                ResultSet set=st.executeQuery("select * from teach where tid='"+tid+"'");
                while(set.next())
                {
                    class_div=set.getString("class_div");
                    break;
                }
        %> 
        if(x===true)
        {
        <%    
            st.execute("delete from teach where tid='"+tid+"'");
            if(class_div!=null)
            {
                if(class_div.contains("SE"))
                    response.sendRedirect("teach.jsp");
                else if(class_div.contains("TE"))
                    response.sendRedirect("teachTE.jsp");
                else if(class_div.contains("BE"))
                    response.sendRedirect("teachBE.jsp");
            }
        %>   
        }            
 </script>
