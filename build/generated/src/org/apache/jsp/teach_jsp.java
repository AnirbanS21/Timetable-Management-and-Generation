package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class teach_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title></title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("      ");
Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
    Statement st = con.createStatement();
      out.write("\n");
      out.write("    \n");
      out.write("    <form class=\"box\" action=\"teachback.jsp\" method=\"post\" >\n");
      out.write("    <h1>SE</h1>\n");
      out.write("    <table id=\"table1\" border=\"1\">\n");
      out.write("\n");
      out.write("        <tr><th>Srno</th><th  >ID</th><th>Faculty tag</th><th>Subcode</th><th>division</th></tr>\n");
      out.write("    <tr>\n");
      out.write("    <td class=\"tbl_id\">1</td><td><input type=\"text\" name=\"ID\"/></td><td><select name=\"faculty\">\n");
      out.write("            ");

    ResultSet s=st.executeQuery("select * from faculty where year>=100");
    while(s.next())
    {
        
      out.write("\n");
      out.write("            \n");
      out.write("        <option value=\"");
      out.print(s.getString("tag"));
      out.write('"');
      out.write('>');
      out.print(s.getString("name"));
      out.write("</option>\n");
      out.write("        ");

    }

      out.write("\n");
      out.write("        </select>\n");
      out.write("    \n");
      out.write("                \n");
      out.write("    \n");
      out.write("    </td><td><select name=\"subject\">\n");
      out.write("\n");

    ResultSet rs=st.executeQuery("select * from subjects where year='SE'");
    while(rs.next())
    {
        
      out.write("\n");
      out.write("            \n");
      out.write("        <option value=\"");
      out.print(rs.getString("subcode"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("subname"));
      out.write("</option>\n");
      out.write("        ");

    }

      out.write("\n");
      out.write("        </select>\n");
      out.write("    \n");
      out.write("    </td>\n");
      out.write("<td><select name=\"division\">\n");
      out.write("<option value=\"A\">A</option>\n");
      out.write("<option value=\"B\">B</option>\n");
      out.write("</select></td>\n");
      out.write("    <td><input type=\"button\" class=\"button\" value=\"Delete\" onclick=\"ob_adRows1.delRow(this)\"/></td>\n");
      out.write("    <td><input type=\"submit\" class=\"button\" value=\"Add Row\" /></td>\n");
      out.write("    </tr>\n");
      out.write("    ");
     
        st.executeUpdate("delete from teach where tid='null'");
        st.executeUpdate("delete from teach where tid=''");
        
        ResultSet set  = st.executeQuery("select * from teach where class_div='SEA' or class_div='SEB'");
        while(set.next())
                {
                 
      out.write("\n");
      out.write("                  <tr>\n");
      out.write("                        <td class=\"tbl_id\" id=\"count\">1</td>\n");
      out.write("                        <td>");
      out.print(set.getString("tid"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(set.getString("tag"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(set.getString("subcode"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(set.getString("class_div"));
      out.write("</td>\n");
      out.write("                        <td><a href=\"delteach.jsp?tid=");
      out.print(set.getString("tid"));
      out.write("\"><input type=\"button\" class=\"button\" value=\"delete\" /></a></td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("             ");
 }
                
      out.write("\n");
      out.write("                 \n");
      out.write("    </table>\n");
      out.write("        <div><input type=\"button\" class=\"submit\" value=\"NEXT\" onclick=\"window.location.href='file:///C:/Users/anirb/Desktop/b.html'\"/></div>\n");
      out.write("    </form>\n");
      out.write("    <script>\n");
      out.write("    //JS class to add/delete rows in html table - https://coursesweb.net/javascript/\n");
      out.write("    //receives table id \n");
      out.write("    \n");
      out.write("   \\\n");
      out.write("\n");
      out.write("        //adds index-id in cols with class .tbl_id\n");
      out.write("        function setIds(){\n");
      out.write("            var tbl_id = document.querySelectorAll('#'+ id +' .tbl_id');\n");
      out.write("            for(var i=0; i<tbl_id.length; i++) tbl_id[i].innerHTML = i+1;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        //add row after clicked row; receives clicked button in row\n");
      out.write("     \n");
      out.write("\n");
      out.write("        //delete clicked row; receives clicked button in row\n");
      out.write("        me.delRow = function(btn){\n");
      out.write("          btn.parentNode.parentNode.outerHTML ='';\n");
      out.write("          setIds();\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("    function adRowsTable2(id){\n");
      out.write("      var table = document.getElementById(id);\n");
      out.write("      var me = this;\n");
      out.write("      if(document.getElementById(id)){\n");
      out.write("        var row1 = table.rows[1].outerHTML;\n");
      out.write("\n");
      out.write("        //adds index-id in cols with class .tbl_id\n");
      out.write("        function setIds(){\n");
      out.write("            var tbl_id = document.querySelectorAll('#'+ id +' .tbl_id');\n");
      out.write("            for(var i=0; i<tbl_id.length; i++) tbl_id[i].innerHTML = i+1;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        //add row after clicked row; receives clicked button in row\n");
      out.write("        me.addRow = function(btn){\n");
      out.write("          if(id=\"table2\"){\n");
      out.write("            btn ? btn.parentNode.parentNode.insertAdjacentHTML('afterend', row1): table.insertAdjacentHTML('beforeend',row1);\n");
      out.write("            setIds();\n");
      out.write("          }\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("\n");
      out.write("        //delete clicked row; receives clicked button in row\n");
      out.write("      \n");
      out.write("    //create object of adRowsTable(), pass the table id\n");
      out.write("    var ob_adRows1 = new adRowsTable1('table1');\n");
      out.write("    var ob_adRows2 = new adRowsTable2('table2');\n");
      out.write("    var ob_adRows3 = new adRowsTable3('table3');\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("body{\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  font-family: sans-serif;\n");
      out.write("  background: #34495e;\n");
      out.write("}\n");
      out.write(".box{\n");
      out.write("  width: 620px;\n");
      out.write("  padding: 40px;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translate(-50%,-50%);\n");
      out.write("  background: #e6e6e6;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("  .submit{\n");
      out.write("    border:0;\n");
      out.write("    background: none;\n");
      out.write("    display: block;\n");
      out.write("    margin: 20px auto;\n");
      out.write("    text-align: center;\n");
      out.write("    border: 2px solid #2ecc71;\n");
      out.write("    padding: 14px 10px;\n");
      out.write("    width: 200px;\n");
      out.write("    outline: none;\n");
      out.write("    color: black;\n");
      out.write("    border-radius: 24px;\n");
      out.write("    transition: 0.25s;\n");
      out.write("  }\n");
      out.write("  .submit:hover{\n");
      out.write("    background: #2ecc71;\n");
      out.write("    cursor: pointer;\n");
      out.write("  }\n");
      out.write("  .button{\n");
      out.write("    color: black;\n");
      out.write("    background: #2ecc71;\n");
      out.write("    border: 2px solid #2ecc71;\n");
      out.write("    transition: 0.25s\n");
      out.write("  }\n");
      out.write("  .button:hover{\n");
      out.write("    background: #3edc81;\n");
      out.write("    cursor: pointer;\n");
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
