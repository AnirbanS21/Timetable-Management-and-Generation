package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Form_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String username,fname,lname,email,city;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <head>\n");
      out.write("    <style>\n");
      out.write("        .box\n");
      out.write("        {\n");
      out.write("            position:absolute;\n");
      out.write("            width: 400px;\n");
      out.write("            top:50%;\n");
      out.write("            left:50%;\n");
      out.write("            transform:translate(-40%,-28%);\n");
      out.write("            padding:40px;\n");
      out.write("            background:khaki;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        a\n");
      out.write("        {\n");
      out.write("            font-style: times new roman;\n");
      out.write("            font-size:25;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        img \n");
      out.write("        {\n");
      out.write("            margin-left: 250px;\n");
      out.write("            margin-top: 45px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        body \n");
      out.write("        {\n");
      out.write("            background-color:#5AAA69;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        h1 \n");
      out.write("        {\n");
      out.write("            font-size:45;\n");
      out.write("            color: maroon;\n");
      out.write("            margin-left: 40px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("    <title> Form for adding</title>\n");
      out.write("    ");
      out.write('\n');
 
    if(session.getAttribute("username")!= null)
    {
        username=session.getAttribute("username").toString();
        fname=session.getAttribute("fname").toString();
        lname=session.getAttribute("lname").toString();
        email=session.getAttribute("email").toString();
        city=session.getAttribute("city").toString();
    }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("          ");
      out.print(fname);
      out.write(' ');
      out.print(lname);
      out.write("\n");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h1 style=\"text-align:center;\">Resident Registration Form</h1>\n");
      out.write("\n");
      out.write("        <form action=\"\" class=\"box\" target=\"_blank\" >\n");
      out.write("\n");
      out.write("            First name:<br>\n");
      out.write("            <input type=\"text\" name=\"firstname\"><br><br>\n");
      out.write("            Last name:<br>\n");
      out.write("            <input type=\"text\" name=\"lastname\"><br><br>\n");
      out.write("            Age:<br>\n");
      out.write("            <input type=\"number\" age=\"age\"><br><br>\n");
      out.write("            Phone Number:<br>\n");
      out.write("            <input type=\"number\" phone=\"phone\">\n");
      out.write("            <br><br>\n");
      out.write("            \n");
      out.write("            <input type=\"radio\" name=\"gender\" value=\"male\" checked> Male<br>\n");
      out.write("            <input type=\"radio\" name=\"gender\" value=\"female\"> Female<br>\n");
      out.write("            <input type=\"radio\" name=\"gender\" value=\"other\"> Other<br><br>\n");
      out.write("\n");
      out.write("            <p>Date of birth:</p>\n");
      out.write("\n");
      out.write("            <input type=\"date\" name=\"birthday\">\n");
      out.write("\n");
      out.write("            <br><br>Address:<br>\n");
      out.write("            <input type=\"text\" name=\"address\"><br>\n");
      out.write("            <br>Disease (if any):<br>\n");
      out.write("            <input type=\"text\" name=\"disease\"><br><br>\n");
      out.write("\n");
      out.write("            <input type=\"Submit\" value=\"Submit\">\n");
      out.write("            <a href=\"#\" class=\"w3-btn w3-black\">Link Button</a>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("\n");
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
