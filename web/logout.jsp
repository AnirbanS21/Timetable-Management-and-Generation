<%-- 
    Document   : logout
    Created on : 27 Oct, 2019, 1:34:34 PM
    Author     : anirb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging out...</title>
    </head>
    <body>
        <h1>Log Out</h1>
        <%
           // HttpSession session=request.getSession();
            response.setHeader("Cache-control","no-cache");
            response.setHeader("Cache-control","no-store");
            response.setHeader("Pragma","no-cache");
            response.setDateHeader("Expire",0);
            //response.setDateHeader("Expire",-1);
            String username = (String)session.getAttribute("username");
        
        
            out.print("logged out");
            out.print(username);
            session.invalidate();
            //response.sendRedirect("login.jsp");
            out.print(username);
            out.print("nah u got trolled");
            //session.invalidate();
            response.sendRedirect("home.jsp");
        //}
    %>


    </body>
</html>
