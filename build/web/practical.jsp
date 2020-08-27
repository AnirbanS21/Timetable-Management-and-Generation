<%@ page import="java.sql.*"%>
<% String username = (String)session.getAttribute("username");
        
        if(username==null){
            response.setHeader("Cache-control","no-cache");
            response.setHeader("Cache-control","no-store");
            response.setHeader("Pragma","no-cache");
            response.setDateHeader("Expire",0);
            //location.href = document.referrer + '?date=' + new Date().valueOf();
            response.sendRedirect("menu.jsp");
            %>
            <script>
                
                window.onload = function() {
                    window.location.reload();  
                }
     </script>
        <%       
        }
else{
response.setHeader("Cache-control","no-cache");
}
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
        <link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
        

        .sidenav {
          height: 100%;
          width: 0;
          position: fixed;
          z-index: 1;
          top: 0;
          left: 0;
          background-color: #111;
          overflow-x: hidden;
          transition: 0.5s;
          padding-top: 60px;
        }

        .sidenav a {
          padding: 8px 8px 8px 32px;
          text-decoration: none;
          font-size: 25px;
          color: #818181;
          display: block;
          transition: 0.3s;
        }

        .sidenav a:hover {
          color: #f1f1f1;
        }

        .sidenav .closebtn {
          position: absolute;
          top: 0;
          right: 25px;
          font-size: 36px;
          margin-left: 50px;
        }

        #main {
          transition: margin-left .5s;
          padding: 16px;
        }

        @media screen and (max-height: 450px) {
          .sidenav {padding-top: 15px;}
          .sidenav a {font-size: 18px;}
        }
</style>

    <meta charset="utf-8">
    <title>Add Subjects</title>
    <link href="subject.css" rel="stylesheet" type="text/css">
  </head>
  <body class="background">
      
      <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About</a>
  <a href="subjects.jsp">Add Subjects</a>
  <a href="faculty.jsp">Add Faculty</a>
  <a href="#">Create Timetable</a>
  <a href="#">View Timetable</a>
</div>

<div id="main">
  
  
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
   
      
      
<form class="box" method="post" action="subject_insert.jsp"> 
    
        <h1 style="color:white">Enter the Practicals</h1>
        

    <table id="table1">
        <tr><th>ID</th><th>Practical</th><th>Year</th><th>Limit</th></tr>
    <tr>


        <td></td>
        <td><input required type="text" class="textbox" name="sb1[]" maxlength="5"/></td>
        <td><input required type="text" class="textbox" name="tm1[]" maxlength="50"/></td>
 
        <td><select name="y1">
      <option value="SE">SE</option>
      <option value="TE">TE</option>
      <option value="BE">BE</option>
        </select></td>
    <td><input required type="number" class="textbox" name="lec_limit"/>
 <!--    <td><input type="submit" class="button" value="Add Row" name="add" onclick="ob_adRows1.addRow(this)"/></td>-->
             <td><input type="submit" class="button" value="Add Practical" /></td>

    </tr>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
        Statement st = con.createStatement();
        st.executeUpdate("delete from subjects where subcode='null'");
        st.executeUpdate("delete from subjects where subcode=''");
        String act= request.getParameter("next");
        ResultSet set  = st.executeQuery("select * from subjects where subname like '%Lab%' or subname like '%lab%'");
        int i=1;
        while(set.next())
                {
                 %>
                  <tr>
                        <td class="tbl_id" id="count"><%out.print(i++);%></td>
                        <td><%=set.getString("subcode")%></td>
                        <td><%=set.getString("subname")%></td>
                        <td><%=set.getString("year")%></td>
                        <td><%=set.getString("lec_limit")%></td>
                        <td><div class="input-icons"><i class="fa fa-trash icon" onclick="deleteme(<%=set.getString("sub_id")%>)"></i></div></td>
 
                        <script language="javascript">
                            function deleteme(delid)
                            {
                                if(confirm("Do you really want to delete this entry?"))
                                {
                                    window.location.href="delete.jsp?sub_id="+delid+"";
                                    return true;
                                }
                            }
                        </script>
                  </tr>
             <% }
                %>
            </table>

            <div><a href="home.jsp"><input type="button" class="submit" name="action" value="SUBMIT" /></a></div>
        </form>
        <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    </body>
</html>
