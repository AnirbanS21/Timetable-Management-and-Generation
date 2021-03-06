<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
        body {
          font-family: "Lato", sans-serif;
        }

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

    <title></title>
     
  </head>
  <body>
      
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
   
      
      
      <%
    
//Class.forName("com.mysql.jdbc.Driver").newInstance();
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
        Statement st = con.createStatement();
        
        
%>





    <table style="width:100%" class="tab">
  <tr>
    <tr>
    <th></th>
    <th>11:15-12:15</th>
    <th>12:15-1:15</th>
    <th>1:15-2:00</th>
    <th>2:00-3:00</th>
    <th>3:00-4:00</th>
    <th>4:00-4:15</th>
    <th>4:15-5:15</th>
    <th>5:15-6:15</th>
      </tr>
  <tr>
    <th>Monday</th>
    <th>
        <% ResultSet mon1=st.executeQuery("select * from timetable where ddid=3 and divi='SEB'");
            while(mon1.next())
            {
                    %>
                    
                    <br><%out.print(mon1.getString("subcode"));%>
                    <br><%out.print(mon1.getString("tag"));%>
                    <br><%out.print(mon1.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet mon2=st.executeQuery("select * from timetable where ddid=4 and divi='SEB'");
            while(mon2.next())
            {
                    %>
                    
                    <br><%out.print(mon2.getString("subcode"));%>
                    <br><%out.print(mon2.getString("tag"));%>
                    <br><%out.print(mon2.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>R</h2>
    </th>
    <th>
        <% ResultSet mon3=st.executeQuery("select * from timetable where ddid=5 and divi='SEB'");
            while(mon3.next())
            {
                    %>
                    
                    <br><%out.print(mon3.getString("subcode"));%>
                    <br><%out.print(mon3.getString("tag"));%>
                    <br><%out.print(mon3.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet mon4=st.executeQuery("select * from timetable where ddid=6 and divi='SEB'");
            while(mon4.next())
            {
                    %>
                   
                    <br><%out.print(mon4.getString("subcode"));%>
                    <br><%out.print(mon4.getString("tag"));%>
                    <br><%out.print(mon4.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>R</h2>
    </th>
    <th>
        <% ResultSet mon5=st.executeQuery("select * from timetable where ddid=7 and divi='SEB'");
            while(mon5.next())
            {
                    %>
                    
                    <br><%out.print(mon5.getString("subcode"));%>
                    <br><%out.print(mon5.getString("tag"));%>
                    <br><%out.print(mon5.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet mon6=st.executeQuery("select * from timetable where ddid=8 and divi='SEB'");
            while(mon6.next())
            {
                    %>
                    
                    <br><%out.print(mon6.getString("subcode"));%>
                    <br><%out.print(mon6.getString("tag"));%>
                    <br><%out.print(mon6.getString("room_no"));%>
            <% }
            %>
    </th>
  </tr>
  <tr>
    <th>Tuesday</th>
    <th>
        <% ResultSet tue1=st.executeQuery("select * from timetable where ddid=11 and divi='SEB'");
            while(tue1.next())
            {
                    %>
                    
                    <br><%out.print(tue1.getString("subcode"));%>
                    <br><%out.print(tue1.getString("tag"));%>
                    <br><%out.print(tue1.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet tue2=st.executeQuery("select * from timetable where ddid=12 and divi='SEB'");
            while(tue2.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=tue2.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(tue2.getString("subcode"));%>
                    <br><%out.print(tue2.getString("tag"));%>
                    <br><%out.print(tue2.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>E</h2>
    </th>
    <th>
        <% ResultSet tue3=st.executeQuery("select * from timetable where ddid=13 and divi='SEB'");
            while(tue3.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=tue3.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(tue3.getString("subcode"));%>
                    <br><%out.print(tue3.getString("tag"));%>
                    <br><%out.print(tue3.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet tue4=st.executeQuery("select * from timetable where ddid=14 and divi='SEB'");
            while(tue4.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=tue4.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(tue4.getString("subcode"));%>
                    <br><%out.print(tue4.getString("tag"));%>
                    <br><%out.print(tue4.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>E</h2>
    </th>
    <th>
        <% ResultSet tue5=st.executeQuery("select * from timetable where ddid=15 and divi='SEB'");
            while(tue5.next())
            {
                    %>
                    
                    <br><%out.print(tue5.getString("tag"));%>/a>
                    <br><%out.print(tue5.getString("subcode"));%>
                    <br><%out.print(tue5.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet tue6=st.executeQuery("select * from timetable where ddid=16 and divi='SEB'");
            while(tue6.next())
            {
                    %>
                    
                    <br><%out.print(tue6.getString("subcode"));%>
                    <br><%out.print(tue6.getString("tag"));%>
                    <br><%out.print(tue6.getString("room_no"));%>
            <% }
            %>
    </th>
    </tr>
  <tr>
    <th>Wednesday</th>
    <th>
        <% ResultSet wed1=st.executeQuery("select * from timetable where ddid=19 and divi='SEB'");
            while(wed1.next())
            {
                    %>
                    
                    <br><%out.print(wed1.getString("subcode"));%>
                    <br><%out.print(wed1.getString("tag"));%>
                    <br><%out.print(wed1.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet wed2=st.executeQuery("select * from timetable where ddid=20 and divi='SEB'");
            while(wed2.next())
            {
                    %>
                    
                    <br><%out.print(wed2.getString("subcode"));%>
                    <br><%out.print(wed2.getString("tag"));%>
                    <br><%out.print(wed2.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>C</h2>
    </th>
    <th>
        <% ResultSet wed3=st.executeQuery("select * from timetable where ddid=21 and divi='SEB'");
            while(wed3.next())
            {
                    %>
                    
                    <br><%out.print(wed3.getString("subcode"));%>
                    <br><%out.print(wed3.getString("tag"));%>
                    <br><%out.print(wed3.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet wed4=st.executeQuery("select * from timetable where ddid=22 and divi='SEB'");
            while(wed4.next())
            {
                    %>
                   
                    <br><%out.print(wed4.getString("subcode"));%>
                    <br><%out.print(wed4.getString("tag"));%>
                    <br><%out.print(wed4.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>C</h2>
    </th>
    <th>
        <% ResultSet wed5=st.executeQuery("select * from timetable where ddid=23 and divi='SEB'");
            while(wed5.next())
            {
                    %>
                    
                    <br><%out.print(wed5.getString("subcode"));%>
                    <br><%out.print(wed5.getString("tag"));%>
                    <br><%out.print(wed5.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet wed6=st.executeQuery("select * from timetable where ddid=24 and divi='SEB'");
            while(wed6.next())
            {
                    %>
                    
                    <br><%out.print(wed6.getString("subcode"));%>
                    <br><%out.print(wed6.getString("tag"));%>
                    <br><%out.print(wed6.getString("room_no"));%>
            <% }
            %>
    </th>
    </tr>
  <tr>
    <th>Thursday</th>
    <th>
        <% ResultSet thu1=st.executeQuery("select * from timetable where ddid=27 and divi='SEB'");
            while(thu1.next())
            {
                    %>
                   
                    <br><%out.print(thu1.getString("subcode"));%>
                    <br><%out.print(thu1.getString("tag"));%>
                    <br><%out.print(thu1.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet thu2=st.executeQuery("select * from timetable where ddid=28 and divi='SEB'");
            while(thu2.next())
            {
                    %>
                    
                    <br><%out.print(thu2.getString("subcode"));%>
                    <br><%out.print(thu2.getString("tag"));%>
                    <br><%out.print(thu2.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>E</h2>
    </th>
    <th>
        <% ResultSet thu3=st.executeQuery("select * from timetable where ddid=29 and divi='SEB'");
            while(thu3.next())
            {
                    %>
                    
                    <br><%out.print(thu3.getString("subcode"));%>
                    <br><%out.print(thu3.getString("tag"));%>
                    <br><%out.print(thu3.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet thu4=st.executeQuery("select * from timetable where ddid=30 and divi='SEB'");
            while(thu4.next())
            {
                    %>
                    
                    <br><%out.print(thu4.getString("subcode"));%>
                    <br><%out.print(thu4.getString("tag"));%>
                    <br><%out.print(thu4.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>E</h2>
    </th>
    <th>
        <% ResultSet thu5=st.executeQuery("select * from timetable where ddid=31 and divi='SEB'");
            while(thu5.next())
            {
                    %>
                    <br><%out.print(thu5.getString("subcode"));%>
                    <br><%out.print(thu5.getString("tag"));%>
                    <br><%out.print(thu5.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet thu6=st.executeQuery("select * from timetable where ddid=32 and divi='SEB'");
            while(thu6.next())
            {
                    %>
                    <br><%out.print(thu6.getString("subcode"));%>
                    <br><%out.print(thu6.getString("tag"));%>
                    <br><%out.print(thu6.getString("room_no"));%>
            <% }
            %>
    </th>
    </tr>
  <tr>
    <th>Friday</th>
    <th>
        <% ResultSet fri1=st.executeQuery("select * from timetable where ddid=35 and divi='SEB'");
            while(fri1.next())
            {
                    %>
                  
                    <br><%out.print(fri1.getString("subcode"));%>
                    <br><%out.print(fri1.getString("tag"));%>
                    <br><%out.print(fri1.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet fri2=st.executeQuery("select * from timetable where ddid=36 and divi='SEB'");
            while(fri2.next())
            {
                    %>
                    
                    <br><%out.print(fri2.getString("subcode"));%>
                    <br><%out.print(fri2.getString("tag"));%>
                    <br><%out.print(fri2.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>S</h2>
    </th>
    <th>
        <% ResultSet fri3=st.executeQuery("select * from timetable where ddid=37 and divi='SEB'");
            while(fri3.next())
            {
                    %>
                    
                    <br><%out.print(fri3.getString("subcode"));%>
                    <br><%out.print(fri3.getString("tag"));%>
                    <br><%out.print(fri3.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet fri4=st.executeQuery("select * from timetable where ddid=38 and divi='SEB'");
            while(fri4.next())
            {
               %>
                    <br><%out.print(fri4.getString("subcode"));%>
                    <br><%out.print(fri4.getString("tag"));%>
                    <br><%out.print(fri4.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>S</h2>
    </th>
    <th>
        <% ResultSet fri5=st.executeQuery("select * from timetable where ddid=39 and divi='SEB'");
            while(fri5.next())
            {
                    %>
                    
                    <br><%out.print(fri5.getString("subcode"));%>
                    <br><%out.print(fri5.getString("tag"));%>
                    <br><%out.print(fri5.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet fri6=st.executeQuery("select * from timetable where ddid=40 and divi='SEB'");
            while(fri6.next())
            {
                    %>
                    
                    <br><%out.print(fri6.getString("subcode"));%>
                    <br><%out.print(fri6.getString("tag"));%>
                    <br><%out.print(fri6.getString("room_no"));%>
            <% }
            %>
    </th>
    </tr>
  <tr>
    <th>Saturday</th>
    <th>
        <% ResultSet sat1=st.executeQuery("select * from timetable where ddid=43 and divi='SEB'");
            while(sat1.next())
            {
                    %>
                    
                    <br><%out.print(sat1.getString("subcode"));%>
                    <br><%out.print(sat1.getString("tag"));%>
                    <br><%out.print(sat1.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet sat2=st.executeQuery("select * from timetable where ddid=44 and divi='SEB'");
            while(sat2.next())
            {
                    %>
                    
                    <br><%out.print(sat2.getString("subcode"));%>
                    <br><%out.print(sat2.getString("tag"));%>
                    <br><%out.print(sat2.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>S</h2>
    </th>
    <th>
        <% ResultSet sat3=st.executeQuery("select * from timetable where ddid=45 and divi='SEB'");
            while(sat3.next())
            {
                    %>
                    
                    <br><%out.print(sat3.getString("subcode"));%>
                    <br><%out.print(sat3.getString("tag"));%>
                    <br><%out.print(sat3.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet sat4=st.executeQuery("select * from timetable where ddid=46 and divi='SEB'");
            while(sat4.next())
            {
                    %>
                    
                    <br><%out.print(sat4.getString("subcode"));%>
                    <br><%out.print(sat4.getString("tag"));%>
                    <br><%out.print(sat4.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
      <h2>S</h2>
    </th>
    <th>
        <% ResultSet sat5=st.executeQuery("select * from timetable where ddid=47 and divi='SEB'");
            while(sat5.next())
            {
                    %>
                    
                    <br><%out.print(sat5.getString("subcode"));%>
                    <br><%out.print(sat5.getString("tag"));%>
                    <br><%out.print(sat5.getString("room_no"));%>
            <% }
            %>
    </th>
    <th>
        <% ResultSet sat6=st.executeQuery("select * from timetable where ddid=48 and divi='SEB'");
            while(sat6.next())
            {
                    %>
                    
                    <br><%out.print(sat6.getString("subcode"));%>
                    <br><%out.print(sat6.getString("tag"));%>
                    <br><%out.print(sat6.getString("room_no"));%>
            <% }
            %>
    </th>
    </tr>
  <%
//**Should I input the codes here?**
        
      /*  catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
*/%>

</table>



    <div><a href="home.jsp"><input class="home" type="button" value="Return to Home" name="submit"></a></div>



  </body>
  
</html>

<script type="text/javascript">

$(document).ready(function() {
    $('.team1').change(function() {
      var allteam = $('.team1').val();
      item2(allteam);
    });

    function item2(all1) {
      $name = all1;
      $(".team2 option").each(function() {
       if(this.value == $name){
         $(this).hide();
       }
      });
    }

  });
</script>

<style type="text/css">
    body{
        padding-bottom: 100px;
        height: 1000px;
    }
.tab {
  border: 1px solid black;
  /*border-collapse: collapse;*/
  vertical-align: bottom;
}
th, td {
  padding: 15px;
  text-align: left;
  height: 50px;
  vertical-align: bottom;
  border: 1px solid black;

}
tr:nth-child(even) {background-color: #f2f2f2;}

.box{
    
  width: 500px;
  padding: 40px;
  position: absolute;
  top: 45%;
  left: 65%;
  transform: translate(-50%,-50%);
  background: #F5F5F5;
  text-align: center;
}


.box2{
    
  width: 00px;
  padding: 40px;
  position: absolute;
  top: 45%;
  left: -35%;
  transform: translate(-50%,-50%);
  background: #F5F5F5;
  text-align: center;
}
.home{
  position: fixed;
  width: 150px;
  height:50px;
  background: #27ae60;
  bottom:40px;
  right: 50px;

  text-decoration: none;
  text-align: center;
  line-height:50px;
  color: white;
  font-size: 15px;
  transition-duration: 0.4s;
}
.home:hover{
    cursor: pointer;
    background-color: #4bdf53;
}
</style>