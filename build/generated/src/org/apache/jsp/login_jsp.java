package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("  <a class=\"navbar-brand\" href=\"#\">abc</a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"/\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"#\">Link</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link disabled\" href=\"#\" tabindex=\"-1\" aria-disabled=\"true\">Disabled</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("      \n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("          \n");
      out.write("      \n");
      out.write("      ");
 if(session.getAttribute("username")!=null) 
      {
      
      out.write("\n");
      out.write("      <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write(" \n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Action</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Another action</a>\n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Something else here</a>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      ");

          }
          else{ 
      out.write("\n");
      out.write("          \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"/login.jsp\">Login</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"/signup.jsp\">Signup</a>\n");
      out.write("      </li>\n");
      out.write("          ");

          }
          
      out.write("\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<form class=\"box\" action=\"trial.jsp\" method=\"post\">\n");
      out.write("  <img src=\"D:\\Documents\\NetBeansProjects\\Timetable1\\web\\mcoe.png\" width=\"177\" height=\"223\" class=\"center\">\n");
      out.write("  <h1>Login</h1>\n");
      out.write("  <input type=\"text\" name=\"username\" placeholder=\"Username\">\n");
      out.write("  <input type=\"password\" name=\"password\" placeholder=\"Password\">\n");
      out.write("  <div class=\"action_btn\">\n");
      out.write("    <input type=\"submit\" class=\"submit\" name=\"action\" value=\"Login\"/>\n");
      out.write("  </div>\n");
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
