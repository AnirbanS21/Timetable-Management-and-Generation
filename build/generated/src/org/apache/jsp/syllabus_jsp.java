package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class syllabus_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <title>Syllabus</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\"background\">\r\n");
      out.write("      \r\n");
      out.write("      <h1 align=\"center\">SE</h1>\r\n");
      out.write("      <h2 align=\"center\">Semester-1</h2>\r\n");
      out.write("      <img src=\"SEsem1.jpg\" align=\"center\">\r\n");
      out.write("      <h2 align=\"center\">Semester-2</h2>\r\n");
      out.write("      <img src=\"SEsem2.jpg\" align=\"center\">\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      <h1 align=\"center\">TE</h1>\r\n");
      out.write("      <h2 align=\"center\">Semester-1</h2>\r\n");
      out.write("      <img src=\"TEsem I.jpg\" align=\"center\">\r\n");
      out.write("      <h2 align=\"center\">Semester-2</h2>\r\n");
      out.write("      <img src=\"TEsem2.jpg\" align=\"center\">\r\n");
      out.write("      \r\n");
      out.write("      <h1 align=\"center\">BE</h1>\r\n");
      out.write("      <h2 align=\"center\">Semester-1</h2>\r\n");
      out.write("      <img align=\"center\" src=\"BEsem1.jpg\" >\r\n");
      out.write("      <h2 align=\"center\">Semester-2</h2>\r\n");
      out.write("      <img align=\"center\" src=\"BEsem2.jpg\" >\r\n");
      out.write("      \r\n");
      out.write("  </body>\r\n");
      out.write("</html>");
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
