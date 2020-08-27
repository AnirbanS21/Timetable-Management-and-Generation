package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class display_005ftableBEa_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("          <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
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
      out.write("    <title></title>\n");
      out.write("     \n");
      out.write("  </head>\n");
      out.write("  <body class=\"box\">\n");
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
      out.write("      ");

    
//Class.forName("com.mysql.jdbc.Driver").newInstance();
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
        Statement st = con.createStatement();
        
        

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <table style=\"width:100%\" class=\"tab\">\n");
      out.write("  <tr>\n");
      out.write("    <tr>\n");
      out.write("    <th></th>\n");
      out.write("    <th>11:15-12:15</th>\n");
      out.write("    <th>12:15-1:15</th>\n");
      out.write("    <th>1:15-2:00</th>\n");
      out.write("    <th>2:00-3:00</th>\n");
      out.write("    <th>3:00-4:00</th>\n");
      out.write("    <th>4:00-4:15</th>\n");
      out.write("    <th>4:15-5:15</th>\n");
      out.write("    <th>5:15-6:15</th>\n");
      out.write("      </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>monday</th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet mon1=st.executeQuery("select * from timetable where ddid=3 ");
            while(mon1.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(mon1.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(mon1.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon1.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon1.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet mon2=st.executeQuery("select * from timetable where ddid=4 ");
            while(mon2.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(mon2.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(mon2.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon2.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon2.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>R</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet mon3=st.executeQuery("select * from timetable where ddid=5 ");
            while(mon3.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(mon3.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(mon3.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon3.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon3.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet mon4=st.executeQuery("select * from timetable where ddid=6 ");
            while(mon4.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(mon4.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(mon4.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon4.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon4.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>R</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet mon5=st.executeQuery("select * from timetable where ddid=7 ");
            while(mon5.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(mon5.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(mon5.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon5.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon5.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet mon6=st.executeQuery("select * from timetable where ddid=8 ");
            while(mon6.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(mon6.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(mon6.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon6.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(mon6.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>tuesday</th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet tue1=st.executeQuery("select * from timetable where ddid=11 ");
            while(tue1.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(tue1.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(tue1.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue1.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue1.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet tue2=st.executeQuery("select * from timetable where ddid=12 ");
            while(tue2.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(tue2.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(tue2.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue2.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue2.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>E</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet tue3=st.executeQuery("select * from timetable where ddid=13 ");
            while(tue3.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(tue3.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(tue3.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue3.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue3.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet tue4=st.executeQuery("select * from timetable where ddid=14 ");
            while(tue4.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(tue4.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(tue4.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue4.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue4.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>E</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet tue5=st.executeQuery("select * from timetable where ddid=15 ");
            while(tue5.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(tue5.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(tue5.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue5.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue5.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet tue6=st.executeQuery("select * from timetable where ddid=16 ");
            while(tue6.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(tue6.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(tue6.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue6.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(tue6.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>wednesday</th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet wed1=st.executeQuery("select * from timetable where ddid=19 ");
            while(wed1.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(wed1.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(wed1.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed1.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed1.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet wed2=st.executeQuery("select * from timetable where ddid=20 ");
            while(wed2.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(wed2.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(wed2.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed2.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed2.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>C</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet wed3=st.executeQuery("select * from timetable where ddid=21 ");
            while(wed3.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(wed3.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(wed3.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed3.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed3.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet wed4=st.executeQuery("select * from timetable where ddid=22 ");
            while(wed4.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(wed4.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(wed4.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed4.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed4.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>C</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet wed5=st.executeQuery("select * from timetable where ddid=23 ");
            while(wed5.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(wed5.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(wed5.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed5.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed5.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet wed6=st.executeQuery("select * from timetable where ddid=24 ");
            while(wed6.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(wed6.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(wed6.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed6.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(wed6.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>thursday</th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet thu1=st.executeQuery("select * from timetable where ddid=27 ");
            while(thu1.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(thu1.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(thu1.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu1.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu1.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet thu2=st.executeQuery("select * from timetable where ddid=28 ");
            while(thu2.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(thu2.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(thu2.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu2.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu2.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>E</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet thu3=st.executeQuery("select * from timetable where ddid=29 ");
            while(thu3.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(thu3.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(thu3.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu3.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu3.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet thu4=st.executeQuery("select * from timetable where ddid=30 ");
            while(thu4.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(thu4.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(thu4.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu4.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu4.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>E</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet thu5=st.executeQuery("select * from timetable where ddid=31 ");
            while(thu5.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(thu5.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(thu5.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu5.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu5.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet thu6=st.executeQuery("select * from timetable where ddid=32 ");
            while(thu6.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(thu6.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(thu6.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu6.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(thu6.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>friday</th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet fri1=st.executeQuery("select * from timetable where ddid=35 ");
            while(fri1.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(fri1.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(fri1.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri1.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri1.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet fri2=st.executeQuery("select * from timetable where ddid=36 ");
            while(fri2.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(fri2.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(fri2.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri2.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri2.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>S</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet fri3=st.executeQuery("select * from timetable where ddid=37 ");
            while(fri3.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(fri3.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(fri3.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri3.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri3.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet fri4=st.executeQuery("select * from timetable where ddid=38 ");
            while(fri4.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(fri4.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(fri4.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri4.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri4.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>S</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet fri5=st.executeQuery("select * from timetable where ddid=39 ");
            while(fri5.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(fri5.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(fri5.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri5.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri5.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet fri6=st.executeQuery("select * from timetable where ddid=40 ");
            while(fri6.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(fri6.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(fri6.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri6.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(fri6.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    </tr>\n");
      out.write("  <tr>\n");
      out.write("    <th>saturaday</th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet sat1=st.executeQuery("select * from timetable where ddid=43 ");
            while(sat1.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(sat1.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(sat1.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat1.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat1.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet sat2=st.executeQuery("select * from timetable where ddid=44 ");
            while(sat2.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(sat2.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(sat2.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat2.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat2.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>S</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet sat3=st.executeQuery("select * from timetable where ddid=45 ");
            while(sat3.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(sat3.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(sat3.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat3.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat3.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet sat4=st.executeQuery("select * from timetable where ddid=46 ");
            while(sat4.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(sat4.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(sat4.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat4.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat4.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("      <h2>S</h2>\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet sat5=st.executeQuery("select * from timetable where ddid=47 ");
            while(sat5.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(sat5.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(sat5.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat5.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat5.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    <th>\n");
      out.write("        ");
 ResultSet sat6=st.executeQuery("select * from timetable where ddid=48 ");
            while(sat6.next())
            {
                    
      out.write("\n");
      out.write("                    <br><a href=\"delete_table_entry.jsp?id=");
      out.print(sat6.getString("id"));
      out.write("\"><i class=\"fa fa-trash\"></i> </a>\n");
      out.write("                    <br>");
out.print(sat6.getString("subcode"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat6.getString("tag"));
      out.write("\n");
      out.write("                    <br>");
out.print(sat6.getString("room_no"));
      out.write("\n");
      out.write("            ");
 }
            
      out.write("\n");
      out.write("    </th>\n");
      out.write("    </tr>\n");
      out.write("  ");

//**Should I input the codes here?**
        
      /*  catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
*/
      out.write("\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("  <form class=\"box2\" action=\"collision.jsp\">\n");
      out.write("        SUBJECT:\n");
      out.write("              <select class=\"dropdown\" name=\"subname\">\n");
      out.write("                      ");

                          ResultSet subject= st.executeQuery("select * from subjects where year='SE'");
                           while(subject.next()){   
        
      out.write("\n");
      out.write("            <option value=\"");
      out.print(subject.getString("subcode"));
      out.write('"');
      out.write('>');
      out.print(subject.getString("subname"));
      out.write("</option>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("                  </select>\n");
      out.write("            ROOM:\n");
      out.write("                      <select class=\"dropdown\" name=\"room\"/>\n");
      out.write("                      ");

                          ResultSet room= st.executeQuery("select * from room");
                           while(room.next()){   
        
      out.write("\n");
      out.write("            <option value=\"");
      out.print(room.getString("room_no"));
      out.write('"');
      out.write('>');
      out.print(room.getString("room_no"));
      out.write("</option>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("                  </select>\n");
      out.write("             DAY:         <select class=\"dropdown\" name=\"day\">\n");
      out.write("                          <option value=\"Monday\">Monday</option>\n");
      out.write("                          <option value=\"Tuesday\">Tuesday</option>\n");
      out.write("                          <option value=\"Wednesday\">Wednesday</option>\n");
      out.write("                          <option value=\"Thursday\">Thursday</option>\n");
      out.write("                          <option value=\"Friday\">Friday</option>\n");
      out.write("                          <option value=\"Saturday\">Saturday</option>\n");
      out.write("                      </select>\n");
      out.write("                  \n");
      out.write("              TIME:            <select class=\"dropdown\" name=\"time\">\n");
      out.write("                                <option value=\"11:15\">11:15-12:15</option>\n");
      out.write("                                <option value=\"12:15\">12:15-1:15</option>\n");
      out.write("                                <option value=\"2:00\">2:00-3:00</option>\n");
      out.write("                                <option value=\"3:00\">3:00-4:00</option>\n");
      out.write("                                <option value=\"4:15\">4:15-5:15</option>\n");
      out.write("                                <option value=\"5:15\">5:15-6:15</option>\n");
      out.write("                          </select>\n");
      out.write("              \n");
      out.write("              <div><input type=\"submit\" class=\"submit\" name=\"action\" value=\"ADD\" /></div>\n");
      out.write("  </form>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("$(document).ready(function() {\n");
      out.write("    $('.team1').change(function() {\n");
      out.write("      var allteam = $('.team1').val();\n");
      out.write("      item2(allteam);\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    function item2(all1) {\n");
      out.write("      $name = all1;\n");
      out.write("      $(\".team2 option\").each(function() {\n");
      out.write("       if(this.value == $name){\n");
      out.write("         $(this).hide();\n");
      out.write("       }\n");
      out.write("      });\n");
      out.write("    }\n");
      out.write("\n");
      out.write("  });\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write(".tab {\n");
      out.write("  border: 1px solid black;\n");
      out.write("  /*border-collapse: collapse;*/\n");
      out.write("  vertical-align: bottom;\n");
      out.write("}\n");
      out.write("th, td {\n");
      out.write("  padding: 15px;\n");
      out.write("  text-align: left;\n");
      out.write("  height: 50px;\n");
      out.write("  vertical-align: bottom;\n");
      out.write("  border: 1px solid black;\n");
      out.write("\n");
      out.write("}\n");
      out.write("tr:nth-child(even) {background-color: #f2f2f2;}\n");
      out.write("\n");
      out.write(".box{\n");
      out.write("    \n");
      out.write("  width: 500px;\n");
      out.write("  padding: 40px;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 45%;\n");
      out.write("  left: 65%;\n");
      out.write("  transform: translate(-50%,-50%);\n");
      out.write("  background: #F5F5F5;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".box2{\n");
      out.write("    \n");
      out.write("  width: 00px;\n");
      out.write("  padding: 40px;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 45%;\n");
      out.write("  left: -35%;\n");
      out.write("  transform: translate(-50%,-50%);\n");
      out.write("  background: #F5F5F5;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
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
