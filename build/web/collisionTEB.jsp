<%@ page import="java.sql.*"%>
<%
    String subcode=request.getParameter("subname");
    String room=request.getParameter("room");
    String day=request.getParameter("day");
    String time=request.getParameter("time");
    String div="TEb";
     Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
                            Statement st = con.createStatement();
      ResultSet fac= st.executeQuery("select * from teach where subcode='"+subcode+"' and class_div='TEB'");
      String tag=null;
      while(fac.next())
      {
          tag=fac.getString("tag");
      }
      out.println(tag);
      ResultSet id= st.executeQuery("select * from day_date where day='"+day+"' and time='"+time+"'");
      String dd=null;
      int ddid=0;
      while(id.next())
      {
          dd=id.getString("ddid");
          ddid=Integer.parseInt(dd);
      }
      out.println(ddid);
      ResultSet cl=st.executeQuery("Select * from room where room_no='"+room+"'");
      String cat=null;
            String t=null,r=null,d="";

      while(cl.next())
      {
          cat=cl.getString("category");
      }
      if(cat.equals("class"))
      { 
        ResultSet insert= st.executeQuery("select * from timetable where ddid='"+ddid+"' and (divi='TEb' or room_no='"+room+"' or tag='"+tag+"')");
        while(insert.next())
      {
        t=insert.getString("tag");
        r=insert.getString("room_no");
        d=insert.getString("divi");
        out.println(t);
        out.println(r);
//int        
      }
        if(d.equals("TEb") )
      {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('A lecture has already been placed in this time slot');");
            out.println("location='display_tableTEb.jsp'");
            out.println("</script>");
            
      }
      }
      else
      { 
        if(ddid%2==0)
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('cannot place practical in this timeslot');");
            out.println("location='display_tableTEb.jsp'");
            out.println("</script>");
            
        }
        
        else
        {
        ResultSet insert= st.executeQuery("select * from timetable where ddid='"+ddid+"' and (room_no='"+room+"' or tag='"+tag+"')");
        while(insert.next())
      {
        t=insert.getString("tag");
        r=insert.getString("room_no");
//int        
      }
      }
      }
        //out.println(maximum);
      //int id1=maximum;
      
     
      if(r!=null && t!=null)
        {   
               out.println("<script type=\"text/javascript\">");
            out.println("alert('Both faculty and room are unavailable ');");
            out.println("location='display_tableTEb.jsp'");
            out.println("</script>");
        }
        else if(r!=null)
        {   
               out.println("<script type=\"text/javascript\">");
            out.println("alert(' room is unavailable ');");
            out.println("location='display_tableTEb.jsp'");
            out.println("</script>");
        }
        else if(t!=null)
        {   
               out.println("<script type=\"text/javascript\">");
            out.println("alert(' faculty is unavailable ');");
            out.println("location='display_tableTEb.jsp'");
            out.println("</script>");
        }
        else
        {
            
            ResultSet maximum= st.executeQuery("select * from timetable order by id desc");
            String max=null;
            while(maximum.next())
            {
                max=maximum.getString("id");
                break;
            }
            int max1;
            if(max!=null)
            {
            max1=Integer.parseInt(max); 
            max1=max1+1;
            }
            else
            {
                max1=1;
            }
            int cnt=0;
            int limit=0;
            ResultSet lim=st.executeQuery("select * from subjects where subcode='"+subcode+"'");
            while(lim.next())
                limit= lim.getInt("lec_limit");
            ResultSet c=st.executeQuery("select count(*) from timetable where divi='TEb' and subcode='"+subcode+"' ");
            while(c.next())
                cnt=Integer.parseInt(c.getObject(1).toString());
            if(cnt==limit)
            {
                out.println("<script type=\"text/javascript\">");
            out.println("alert('Lecture limit reached');");
            out.println("location='display_tableTEb.jsp'");
            out.println("</script>");
            }
            else
            {
                if(cat.equals("class"))
                    
                    st.executeUpdate("insert into timetable(id,tag,subcode,room_no,ddid,divi) values('"+max1+"','"+tag+"','"+subcode+"','"+room+"','"+ddid+"','"+div+"')");
                else
                {
                    st.executeUpdate("insert into timetable(id,tag,subcode,room_no,ddid,divi) values('"+max1+"','"+tag+"','"+subcode+"','"+room+"','"+ddid+"','"+div+"')");
                    max1=max1+1;
                    ddid=ddid+1;
                    st.executeUpdate("insert into timetable(id,tag,subcode,room_no,ddid,divi) values('"+max1+"','"+tag+"','"+subcode+"','"+room+"','"+ddid+"','"+div+"')");
                }        
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Data entered ');");
               out.println("location='display_tableTEb.jsp'");
               out.println("</script>");
            }
        }
    
%>