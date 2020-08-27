package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class delteach_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("            var x=confirm(\"Are you sure you want to delete?\");\n");
      out.write("            ");
 Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable", "root", "root");
Statement st=conn.createStatement();
                String tid=request.getParameter("tid");
                ResultSet yr= st.executeQuery("select * from teach where tid='"+tid+"'");
                String year=null;
                while(yr.next())
                    year=yr.getString("class_div");
        
         
      out.write("\n");
      out.write("        if(x)\n");
      out.write("        {\n");
      out.write("    ");
          
        st.execute("delete from teach where tid='"+tid+"'");


      out.write("\n");
      out.write("        if(year.equals(\"SEA\")|| year.equals(\"SEB\"))\n");
      out.write("        </script> \n");
      out.write("        response.sendRedirect(teach.jsp);  \n");
      out.write("        <script>\n");
      out.write("        if(year.equals(\"TEA\")|| year.equals(\"TEB\"))\n");
      out.write("        </script> \n");
      out.write("        send.Redirect(teachte.jsp);\n");
      out.write("        <script>\n");
      out.write("        if(year.equals(\"BEA\")|| year.equals(\"BEB\"))\n");
      out.write("        </script>\n");
      out.write("            send.Redirect(teachbe.jsp);\n");
      out.write("            <script>   \n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("        <script>\n");
      out.write("        else\n");
      out.write("        {\n");
      out.write("            \n");
      out.write("            if(year.equals(\"SEA\")|| year.equals(\"SEB\"))\n");
      out.write("            </script> \n");
      out.write("            response.sendRedirect(teach.jsp);  \n");
      out.write("            <script>\n");
      out.write("            if(year.equals(\"TEA\")|| year.equals(\"TEB\"))\n");
      out.write("            </script> \n");
      out.write("            send.Redirect(teachte.jsp);\n");
      out.write("            <script>\n");
      out.write("            if(year.equals(\"BEA\")|| year.equals(\"BEB\"))\n");
      out.write("            </script>\n");
      out.write("                send.Redirect(teachbe.jsp);\n");
      out.write("             <script>   \n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("         }   \n");
      out.write("        \n");
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
