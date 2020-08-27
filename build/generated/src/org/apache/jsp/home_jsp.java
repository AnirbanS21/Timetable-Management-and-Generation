package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<style>\n");
      out.write(".button {\n");
      out.write("  display: block;\n");
      out.write("  padding: 15px 25px;\n");
      out.write("  font-size: 24px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: none;\n");
      out.write("  outline: none;\n");
      out.write("  color: #fff;\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 15px;\n");
      out.write("  box-shadow: 0 9px #999;\n");
      out.write("  padding: 14px 10px;\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write(" \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".button:hover {background-color: #3e8e41}\n");
      out.write("\n");
      out.write(".button:active {\n");
      out.write("  background-color: #3e8e41;\n");
      out.write("  box-shadow: 0 5px #666;\n");
      out.write("  transform: translateY(4px);\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".dropbtn {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("  padding: 16px;\n");
      out.write("  font-size: 16px;\n");
      out.write("  border: none;\n");
      out.write("  width: 100%;\n");
      out.write("  align-self: center;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown {\n");
      out.write("  position: relative;\n");
      out.write("  display: block;\n");
      out.write("  border-radius: 15px;\n");
      out.write("  /*width: 1700px;*/\n");
      out.write("  align-self: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content {\n");
      out.write("  display: none;\n");
      out.write("  position: absolute;\n");
      out.write("  background-color: #f1f1f1;\n");
      out.write("  min-width: 160px;\n");
      out.write("  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("  z-index: 1;\n");
      out.write("  width: 1000px;\n");
      out.write("  align-content: center;\n");
      out.write("  align-items: center;\n");
      out.write("  align-self: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a {\n");
      out.write("  color: black;\n");
      out.write("  padding: 12px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: block;\n");
      out.write("    align-content: center;\n");
      out.write("  align-self: center;  \n");
      out.write("  align-items: center;\n");
      out.write("  color:white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a:hover {background-color: #ddd;  align-content: center;\n");
      out.write("  align-items: center;\n");
      out.write("  align-self: center;\n");
      out.write("  color: black;\n");
      out.write("  transition-duration: 0.4s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropdown-content {display: block;align-content: center;\n");
      out.write("  align-items: center;\n");
      out.write("align-self: center;}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropbtn {background-color: #3e8e41;align-content: center;align-self: center;}\n");
      out.write(".background{\n");
      out.write("    background-image: url(\"books-on-wooden-desk-small-1.jpg\"); /* The image used */\n");
      out.write("  \n");
      out.write("  height: 1000px; /* You must set a specified height */\n");
      out.write("  background-position: center; /* Center the image */\n");
      out.write("  background-repeat: no-repeat; /* Do not repeat the image */\n");
      out.write("  background-size: cover;\n");
      out.write("}\n");
      out.write("body{\n");
      out.write("    background-color: #c6c6ff;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("<a href=\"\" class=\"button\">About</a>\n");
      out.write("<a href=\"subjects.jsp\" class=\" button\">Add Subject</a>\n");
      out.write("<a href=\"faculty.jsp\" class=\" button\">Add Faculty</a>\n");
      out.write("<div class=\"dropdown\">\n");
      out.write("\n");
      out.write("    <button class=\"dropbtn\">Asign Faculty to Subject</button>\n");
      out.write("  <div class=\"dropdown-content\" class=\"button\">\n");
      out.write("   \n");
      out.write("<a href=\"teach.jsp\" class=\" button\">SE</a>\n");
      out.write("<a href=\"teachTE.jsp\" class=\" button\">TE</a>\n");
      out.write("<a href=\"teachBE.jsp\" class=\" button\">BE</a>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"dropdown\">\n");
      out.write("  <button class=\"dropbtn\">Create Timetable</button>\n");
      out.write("  <div class=\"dropdown-content\">\n");
      out.write("    <a href=\"display_tableSEa.jsp\" class=\"button\">SE A</a>\n");
      out.write("    <a href=\"display_tableSEb.jsp\" class=\"button\">SE B</a>\n");
      out.write("    <a href=\"display_tableTEa.jsp\" class=\"button\">TE A</a>\n");
      out.write("    <a href=\"display_tableTEb.jsp\" class=\"button\">TE B</a>\n");
      out.write("    <a href=\"display_tableBEa.jsp\" class=\"button\">BE A</a>\n");
      out.write("    <a href=\"display_tableBEb.jsp\" class=\"button\">BE B</a>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!--<a href=\"\" class=\" button\">Create Timetable</a> -->\n");
      out.write("<div class=\"dropdown\">\n");
      out.write("  <button class=\"dropbtn\">View Timetable</button>\n");
      out.write("  <div class=\"dropdown-content\">\n");
      out.write("    <a href=\"sea.jsp\" class=\"button\">SE A</a>\n");
      out.write("    <a href=\"seb.jsp\" class=\"button\">SE B</a>\n");
      out.write("    <a href=\"tea.jsp\" class=\"button\">TE A</a>\n");
      out.write("    <a href=\"teb.jsp\" class=\"button\">TE B</a>\n");
      out.write("    <a href=\"bea.jsp\" class=\"button\">BE A</a>\n");
      out.write("    <a href=\"beb.jsp\" class=\"button\">BE B</a>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<a href=\"searchfac.jsp\" class=\" button\">View Timetable for Particular Faculty</a>\n");
      out.write("<a href=\"login.jsp\" class=\" button\">Log out</a>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
