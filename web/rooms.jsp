<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
      <link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
        
body{background-image: url("162410.jpg"); background-size: cover; background-repeat: no-repeat, repeat; background-color: #cccccc; }
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
    <title>Creating Timetable</title>
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
   
    <form class="box" action="roomin.jsp" method="post">
    <table id="table1">
      <h1>Room Details</h1>
    <tr><th>ID</th><th>Room Name</th><th>Category</th>
    <tr>
        <td></td>
        <td><input required type="text" name="room_no" value="" maxlength="3"/></td>
        <td>
            <select name="category">
                <option value="class">Classroom</option>
                <option value="lab">Laboratory</option>
            </select>
        </td>
        <td><input type="submit" class="button" value="Add Room" /></td>
    </tr>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
        Statement st = con.createStatement();
        st.executeUpdate("delete from room where room_no='null'");
        st.executeUpdate("delete from room where room_no=''");
        ResultSet set = st.executeQuery("select * from room");
        int i=1;
        while(set.next())
                {
                 %>
                  <tr>
                        <td class="tbl_id" id="count"><%out.print(i++);%></td>
                        <td><%=set.getString("room_no")%></td>
                        <td><%=set.getString("category")%></td>
                        
                        <!--<td><a href="delete_room.jsp?room_no=<%=set.getString("room_no")%>"><i class="fa fa-trash"></i> </a></td>-->
                        <td><div class="input-icons"><i class="fa fa-trash icon" onclick="deleteme(<%=set.getString("room_id")%>)"></i></div></td>
 
                        <script language="javascript">
                            function deleteme(delid)
                            {
                                if(confirm("Do you really want to delete this entry?"))
                                {
                                    window.location.href="delete_room.jsp?room_id="+delid+"";
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
  </body>
</html>
<style type="text/css">
h1{
    color:white;
    font-family: 'Alegreya Sans SC';
}
th{
    font-family: 'Alegreya Sans SC';
    font-size: 1.4rem;
    padding: 0;
    width: 200px; 
    
}
tr{
    display: table-row;
    color:#FFFFFF;

}
tr:nth-child(even){
    display: table-row;
}
.textbox{
    length:200px;
}
.box{
    width: 820px;
    font-size: 1.4rem;
    padding: 40px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    text-align: center;
}
.background{
    
  height: 1000px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover;
}

.submit{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #2ecc71;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color: #fff;
  border-radius: 24px;
  transition: 0.25s;
}
.submit:hover{
  background: #2ecc71;
  cursor: pointer;
}
.button{
    line-height: 1;
    display: inline-block;
    font-size: 1.6rem;
    text-decoration: none;
    border-radius: 50px;
    color: #FFF;
    padding: 8px;
    background-color: #87ceeb;
    transition: 0.25s;
  }
.button:hover{
    background: #007FFF;
    cursor: pointer;
}
.input-icons i { 
    
}

.input-icons i:hover{ 
    
    cursor: pointer;
    color:lightcoral;
} 
          
.input-icons { 
    width: 100%; 
    margin-bottom: 1px; 
} 
          
.icon { 
    padding: 10px; 
    color: red; 
    
    text-align: center; 
} 
          
.input-field { 
    width: 100%; 
    padding: 10px; 
    text-align: center;
    transition-duration: 0.4s;
}

.input-field:hover{
    cursor: pointer;
}
</style>