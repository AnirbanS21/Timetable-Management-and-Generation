package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>?MCOE IT Timetable</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("  </head>\n");
      out.write("  <body class=\"background\">\n");
      out.write("\n");
      out.write("<form class=\"box\" action=\"trial.jsp\" method=\"post\">\n");
      out.write("  <img src=\"D:\\Documents\\NetBeansProjects\\Timetable1\\web\\mcoe.png\" width=\"177\" height=\"223\" class=\"center\">\n");
      out.write("  <h1></h1>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("    <div><a href=\"login.jsp\"><input type=\"button\" class=\"submit\" name=\"Login\" value=\"Login\"/></div>\n");
      out.write("    \n");
      out.write("    <div><a href=\"display_tableSEa.jsp\"><input type=\"button\" class=\"submit\" name=\"View\" value=\"View\"/></div>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("body{\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  font-family: sans-serif;\n");
      out.write("  background: #34495e;\n");
      out.write("}\n");
      out.write(".background{\n");
      out.write("    background-image: url(\"slidenew001.jpg\"); /* The image used */\n");
      out.write("  \n");
      out.write("  height: 1000px; /* You must set a specified height */\n");
      out.write("  background-position: center; /* Center the image */\n");
      out.write("  background-repeat: no-repeat; /* Do not repeat the image */\n");
      out.write("  background-size: cover;\n");
      out.write("}\n");
      out.write(".box{\n");
      out.write("  width: 300px;\n");
      out.write("  padding: 40px;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translate(-50%,-50%);\n");
      out.write("  background: #F5F5F5;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write(".box h1{\n");
      out.write("  color: #000080;\n");
      out.write("  text-transform: uppercase;\n");
      out.write("  font-weight: 500;\n");
      out.write("}\n");
      out.write(".box input[type = \"text\"],.box input[type = \"password\"]{\n");
      out.write("  border:0;\n");
      out.write("  background: none;\n");
      out.write("  display: block;\n");
      out.write("  margin: 20px auto;\n");
      out.write("  text-align: center;\n");
      out.write("  border: 2px solid #3498db;\n");
      out.write("  padding: 14px 10px;\n");
      out.write("  width: 200px;\n");
      out.write("  outline: none;\n");
      out.write("  color:#000000;\n");
      out.write("  border-radius: 24px;\n");
      out.write("  transition: 0.5s;\n");
      out.write("}\n");
      out.write(".box input[type = \"text\"]:focus,.box input[type = \"password\"]:focus{\n");
      out.write("  width: 280px;\n");
      out.write("  border-color: #2ecc71;\n");
      out.write("}\n");
      out.write(".submit{\n");
      out.write("  border:0;\n");
      out.write("  background: none;\n");
      out.write("  display: block;\n");
      out.write("  margin: 20px auto;\n");
      out.write("  text-align: center;\n");
      out.write("  border: 2px solid #2ecc71;\n");
      out.write("  padding: 14px 10px;\n");
      out.write("  width: 200px;\n");
      out.write("  outline: none;\n");
      out.write("  color: black;\n");
      out.write("  border-radius: 24px;\n");
      out.write("  transition: 0.25s;\n");
      out.write("}\n");
      out.write(".submit:hover{\n");
      out.write("  background: #2ecc71;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write(".button{\n");
      out.write("  color: black;\n");
      out.write("  background: #2ecc71;\n");
      out.write("  border: 2px solid #2ecc71;\n");
      out.write("  transition: 0.25s\n");
      out.write("}\n");
      out.write(".button:hover{\n");
      out.write("  background: #3edc81;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
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
