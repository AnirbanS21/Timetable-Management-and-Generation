package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class subjects_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("  <head>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <style>\n");
      out.write("        body {\n");
      out.write("          font-family: \"Lato\", sans-serif;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .sidenav {\n");
      out.write("          height: 100%;\n");
      out.write("          width: 0;\n");
      out.write("          position: fixed;\n");
      out.write("          z-index: 1;\n");
      out.write("          top: 0;\n");
      out.write("          left: 0;\n");
      out.write("          background-color: #111;\n");
      out.write("          overflow-x: hidden;\n");
      out.write("          transition: 0.5s;\n");
      out.write("          padding-top: 60px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .sidenav a {\n");
      out.write("          padding: 8px 8px 8px 32px;\n");
      out.write("          text-decoration: none;\n");
      out.write("          font-size: 25px;\n");
      out.write("          color: #818181;\n");
      out.write("          display: block;\n");
      out.write("          transition: 0.3s;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .sidenav a:hover {\n");
      out.write("          color: #f1f1f1;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .sidenav .closebtn {\n");
      out.write("          position: absolute;\n");
      out.write("          top: 0;\n");
      out.write("          right: 25px;\n");
      out.write("          font-size: 36px;\n");
      out.write("          margin-left: 50px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        #main {\n");
      out.write("          transition: margin-left .5s;\n");
      out.write("          padding: 16px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        @media screen and (max-height: 450px) {\n");
      out.write("          .sidenav {padding-top: 15px;}\n");
      out.write("          .sidenav a {font-size: 18px;}\n");
      out.write("        }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title></title>\n");
      out.write("  </head>\n");
      out.write("  <body class=\"background\">\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("  <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\">&times;</a>\n");
      out.write("  <a href=\"#\">About</a>\n");
      out.write("  <a href=\"subjects.jsp\">Add Subjects</a>\n");
      out.write("  <a href=\"faculty.jsp\">Add Faculty</a>\n");
      out.write("  <a href=\"#\">Create Timetable</a>\n");
      out.write("  <a href=\"#\">View Timetable</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"main\">\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <span style=\"font-size:30px;cursor:pointer\" onclick=\"openNav()\">&#9776; </span>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function openNav() {\n");
      out.write("  document.getElementById(\"mySidenav\").style.width = \"250px\";\n");
      out.write("  document.getElementById(\"main\").style.marginLeft = \"250px\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("function closeNav() {\n");
      out.write("  document.getElementById(\"mySidenav\").style.width = \"0\";\n");
      out.write("  document.getElementById(\"main\").style.marginLeft= \"0\";\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("   \n");
      out.write("      \n");
      out.write("      \n");
      out.write("    <form class=\"box\"   method=\"post\">\n");
      out.write("    <h1 style=\"color:white\">ENTER THE SUBJECTS</h1>\n");
      out.write("\n");
      out.write("    <table id=\"table1\">\n");
      out.write("\n");
      out.write("        <tr><th>ID</th><th>SUBCODE</th><th>SUBJECT</th><th>YEAR</th><th></th></tr>\n");
      out.write("    <tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <td>1</td><td><input type=\"text\" class=\"textbox\" name=\"sb1[]\" maxlength=\"5\"/></td><td><input type=\"text\" class=\"textbox\" name=\"tm1[]\" maxlength=\"30\"/></td><td><select name=\"y1\">\n");
      out.write("      <option value=\"SE\">SE</option>\n");
      out.write("      <option value=\"TE\">TE</option>\n");
      out.write("      <option value=\"BE\">BE</option>\n");
      out.write("        </select></td>\n");
      out.write("    \n");
      out.write("     <td><i class=\"fa-plus-square\"></i><input type=\"submit\" class=\"button\" value=\"Add Row\" name=\"add\" onclick=\"ob_adRows1.addRow(this)\"/></td>\n");
      out.write("    </tr>\n");
      out.write("    ");
     Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
    Statement st = con.createStatement();
        st.executeUpdate("delete from subjects where subcode='null'");
        st.executeUpdate("delete from subjects where subcode=''");
        String act= request.getParameter("next");
        ResultSet set  = st.executeQuery("select * from subjects");
        int i=2;
        while(set.next())
                {
                 
      out.write("\n");
      out.write("                  <tr>\n");
      out.write("                        <td class=\"tbl_id\" id=\"count\">");
out.print(i++);
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(set.getString("subcode"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(set.getString("subname"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(set.getString("year"));
      out.write("</td>\n");
      out.write("                        \n");
      out.write("                        <td><a href=\"delete.jsp?subcode=");
      out.print(set.getString("subcode"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a></td>\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                  </tr>\n");
      out.write("             ");
 }
                
      out.write("\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("    <div><a href=\"faculty.jsp\"><input type=\"button\" class=\"submit\" name=\"action\" value=\"NEXT\" /></a></div>\n");
      out.write("    </form>\n");
      out.write("    <script>\n");
      out.write("    //JS class to add/delete rows in html table - https://coursesweb.net/javascript/\n");
      out.write("    //receives table id\n");
      out.write("    function adRowsTable1(id){\n");
      out.write("       \n");
      out.write("    ");
 st.executeUpdate("delete from subjects where subcode='null'");
            String subcode= request.getParameter("sb1[]");
            int subc=0;
            char c;
            if(subcode!=null)
            {
                for (int j = 0; j < subcode.length(); j++) 
                {
			c = subcode.charAt(j);
			if (!(c >= 'A' && c <= 'Z') && !(c >= 'a' && c <= 'z')) 
                        {
				subc=1;
			}
		}
            }
            if(subc==1)
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Enter only alplabets in subcode!!!');");
                //out.println("location='subjects.jsp'");
                out.println("</script>");
            }
            String subject= request.getParameter("tm1[]");
            String year= request.getParameter("y1");
            
            
            
            
            out.println(subcode+" "+subject+" "+year);
      
            //st.executeUpdate("Insert into subjects(subcode,subname,year) values('"+subcode+"','"+subject+"','"+year+"')");
            PreparedStatement p1=con.prepareStatement("call subject_insert('"+subcode+"','"+subject+"','"+year+"')");
            
          /*  p1.setString(1,subcode);
            p1.setString(2,subject);
            p1.setString(3,year);
            */
            
                       st.executeUpdate("delete from subjects where subcode='null'");
                       st.executeUpdate("delete from subjects where subcode=''");
                       if(request.getParameter("sb1[]")!=null)
                       {
                                       p1.executeUpdate();

                           response.sendRedirect("subjects.jsp");
                       }
                           
                    
      out.write("\n");
      out.write("     \n");
      out.write("    </script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("body{\n");
      out.write("  #background: -webkit-linear-gradient(left, #25c481, #25b7c4);\n");
      out.write("  #background: linear-gradient(to right, #25c481, #25b7c4);\n");
      out.write("  font-size: 1.4rem;\n");
      out.write("  background: #34495e;\n");
      out.write("  font-family: 'Roboto', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("th{\n");
      out.write("    #font-weight: 900;\n");
      out.write("    #color: #ffffff;\n");
      out.write("    #background: #007FFF;\n");
      out.write("    font-size: 1.4rem;\n");
      out.write("    padding: 0;\n");
      out.write("    width: 200px; \n");
      out.write("    \n");
      out.write("}\n");
      out.write("tr{\n");
      out.write("    display: table-row;\n");
      out.write("    #background: #e3e3e3;\n");
      out.write("    color:#FFFFFF;\n");
      out.write("\n");
      out.write("}\n");
      out.write("tr:nth-child(even){\n");
      out.write("    display: table-row;\n");
      out.write("    #background: #f6f6f6;\n");
      out.write("}\n");
      out.write(".textbox{\n");
      out.write("    length:200px;\n");
      out.write("}\n");
      out.write(".box{\n");
      out.write("    width: 620px;\n");
      out.write("    font-size: 1.4rem;\n");
      out.write("    padding: 40px;\n");
      out.write("    position: absolute;\n");
      out.write("    top: 50%;\n");
      out.write("    left: 50%;\n");
      out.write("    transform: translate(-50%,-50%);\n");
      out.write("    #background: #e6e6e6;\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write(".background{\n");
      out.write("    background-image: url(\"books-on-wooden-desk-small-1.jpg\"); /* The image used */\n");
      out.write("  \n");
      out.write("  height: 1000px; /* You must set a specified height */\n");
      out.write("  background-position: center; /* Center the image */\n");
      out.write("  background-repeat: no-repeat; /* Do not repeat the image */\n");
      out.write("  background-size: cover;\n");
      out.write("}\n");
      out.write("\n");
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
      out.write("  color: #fff;\n");
      out.write("  border-radius: 24px;\n");
      out.write("  transition: 0.25s;\n");
      out.write("}\n");
      out.write(".submit:hover{\n");
      out.write("  background: #2ecc71;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write(".button{\n");
      out.write("    line-height: 1;\n");
      out.write("    display: inline-block;\n");
      out.write("    font-size: 1.6rem;\n");
      out.write("    text-decoration: none;\n");
      out.write("    border-radius: 50px;\n");
      out.write("    color: #FFF;\n");
      out.write("    padding: 8px;\n");
      out.write("    background-color: #87ceeb;\n");
      out.write("    transition: 0.25s;\n");
      out.write("  }\n");
      out.write(".button:hover{\n");
      out.write("    background: #007FFF;\n");
      out.write("    cursor: pointer;\n");
      out.write("    #border: 2px solid #007FFF;\n");
      out.write("  }\n");
      out.write("</style>");
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
