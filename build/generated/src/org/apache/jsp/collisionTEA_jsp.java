package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class collisionTEA_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

    String subcode=request.getParameter("subname");
    String room=request.getParameter("room");
    String day=request.getParameter("day");
    String time=request.getParameter("time");
    String div="TEa";
     Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
                            Statement st = con.createStatement();
      ResultSet fac= st.executeQuery("select * from teach where subcode='"+subcode+"' and class_div='TEA'");
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
      
      ResultSet insert= st.executeQuery("select * from timetable where ddid='"+ddid+"' and (divi='TEa' or room_no='"+room+"' or tag='"+tag+"')");
      //out.println(maximum);
      //int id1=maximum;
      String t=null,r=null,d="";
      while(insert.next())
      {
        t=insert.getString("tag");
        r=insert.getString("room_no");
        d=insert.getString("divi");
        out.println(t);
        out.println(r);
//int        
      }
     if(d.equals("TEa") )
      {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('A lecture has already been placed in this time slot');");
            out.println("location='display_tableTEa.jsp'");
            out.println("</script>");
      }
      else if(r!=null && t!=null)
        {   
               out.println("<script type=\"text/javascript\">");
            out.println("alert('Both faculty and room are unavailable ');");
            out.println("location='display_tableTEa.jsp'");
            out.println("</script>");
        }
        else if(r!=null)
        {   
               out.println("<script type=\"text/javascript\">");
            out.println("alert(' room is unavailable ');");
            out.println("location='display_tableTEa.jsp'");
            out.println("</script>");
        }
        else if(t!=null)
        {   
               out.println("<script type=\"text/javascript\">");
            out.println("alert(' faculty is unavailable ');");
            out.println("location='display_tableTEa.jsp'");
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
            int cnt;
            int limit=0;
            ResultSet lim=st.executeQuery("select * from subjects where subcode='"+subcode+"'");
            while(lim.next())
                limit= lim.getInt("lec_limit");
            ResultSet c=st.executeQuery("select count(*) from timetable where subcode='"+subcode+"'");
            cnt=Integer.parseInt(c.getObject(1).toString());
            if(cnt==limit)
            {
                out.println("<script type=\"text/javascript\">");
            out.println("alert('Lecture limit reached');");
            out.println("location='display_tableTEa.jsp'");
            out.println("</script>");
            }
            else
            {
                st.executeUpdate("insert into timetable(id,tag,subcode,room_no,ddid,divi) values('"+max1+"','"+tag+"','"+subcode+"','"+room+"','"+ddid+"','"+div+"')");

               out.println("<script type=\"text/javascript\">");
               out.println("alert('Data entered ');");
               out.println("location='display_tableTEa.jsp'");
               out.println("</script>");
            }
        }

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
