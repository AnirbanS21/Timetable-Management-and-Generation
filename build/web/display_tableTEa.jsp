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
          position: fixed;
         
         
          background-color: #111;
          overflow-x: hidden;
          transition: 0.5s;
          padding-top: 60px;
             
            width: 0px;
            padding: 40px;
            top: 200px;
            left: -160%;
            transform: translate(0%,-13.5%);
            text-align: right;
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
          top: 0%;
          right: 50px;
          font-size: 36px;
          margin-left: 50px;
        }

        #main {
          transition: margin-left .5s;
          padding: 16px;
          width: 10px;
          height: 100px;
          position: absolute;
           top: 10%;
           left: -140%;
        }

        @media screen and (max-height: 450px) {
          .sidenav {padding-top: 15px;}
          .sidenav a {font-size: 18px;}
        }
</style>

    <title></title>
     <link href="display_table.css" rel="stylesheet" type="text/css">
  </head>
  <body class="box">
      
      
      
   
      
      
      <%
    
//Class.forName("com.mysql.jdbc.Driver").newInstance();
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
        Statement st = con.createStatement();
        
        
%>





    <table style="width:100%" class="tab">
  <tr>
    <th></th>
    <th>9:00-10:00</th>
    <th>10:00-11:00</th>
    <th>11:00-11:15</th>
    <th>11:15-12:15</th>
    <th>12:15-1:15</th>
    <th>1:15-2:00</th>
    <th>2:00-3:00</th>
    <th>3:00-4:00</th>
  </tr>
  <tr>
    <th>Monday</th>
    <th>
        <% ResultSet mon1=st.executeQuery("select * from timetable where ddid=1 and divi='TEA'");
            while(mon1.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=mon1.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(mon1.getString("subcode"));%>
                    <br><%out.print(mon1.getString("tag"));%>
                    <br><%out.print(mon1.getString("room_no"));%>
                    
                    
                    
            <% }
            %>
    </th>
    <th>
        <% ResultSet mon2=st.executeQuery("select * from timetable where ddid=2 and divi='TEA'");
            while(mon2.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=mon2.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
        <% ResultSet mon3=st.executeQuery("select * from timetable where ddid=3 and divi='TEA'");
            while(mon3.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=mon3.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(mon3.getString("subcode"));%>
                    <br><%out.print(mon3.getString("tag"));%>
                    <br><%out.print(mon3.getString("room_no"));%>
                    
            <% }
            %>

     </th>
    <th>
    <% ResultSet mon4=st.executeQuery("select * from timetable where ddid=4 and divi='TEA'");
            while(mon4.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=mon4.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet mon5=st.executeQuery("select * from timetable where ddid=5 and divi='TEA'");
            while(mon5.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=mon5.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(mon5.getString("subcode"));%>
                    <br><%out.print(mon5.getString("tag"));%>
                    <br><%out.print(mon5.getString("room_no"));%>
                    
            <% }
            %>
     
    </th>
    <th>
    <% ResultSet mon6=st.executeQuery("select * from timetable where ddid=6  and divi='TEA'");
            while(mon6.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=mon6.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet tue1=st.executeQuery("select * from timetable where ddid=9  and divi='TEA'");
            while(tue1.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=tue1.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(tue1.getString("subcode"));%>
                    <br><%out.print(tue1.getString("tag"));%>
                    <br><%out.print(tue1.getString("room_no"));%>
                    
            <% }
            %>
    </th>
    <th>
    <% ResultSet tue2=st.executeQuery("select * from timetable where ddid=10 and divi='TEA' ");
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
    <% ResultSet tue3=st.executeQuery("select * from timetable where ddid=11  and divi='TEA'");
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
    <% ResultSet tue4=st.executeQuery("select * from timetable where ddid=12  and divi='TEA'");
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
    <% ResultSet tue5=st.executeQuery("select * from timetable where ddid=13  and divi='TEA'");
            while(tue5.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=tue5.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(tue5.getString("subcode"));%>
                    <br><%out.print(tue5.getString("tag"));%>
                    <br><%out.print(tue5.getString("room_no"));%>
                    
            <% }
            %>

    </th>
    <th>
    <% ResultSet tue6=st.executeQuery("select * from timetable where ddid=14  and divi='TEA'");
            while(tue6.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=tue6.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet wed1=st.executeQuery("select * from timetable where ddid=17  and divi='TEA'");
            while(wed1.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=wed1.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(wed1.getString("subcode"));%>
                    <br><%out.print(wed1.getString("tag"));%>
                    <br><%out.print(wed1.getString("room_no"));%>
                    
            <% }
            %>
    </th>
    <th>
    <% ResultSet wed2=st.executeQuery("select * from timetable where ddid=18  and divi='TEA'");
            while(wed2.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=wed2.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet wed3=st.executeQuery("select * from timetable where ddid=19  and divi='TEA'");
            while(wed3.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=wed3.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(wed3.getString("subcode"));%>
                    <br><%out.print(wed3.getString("tag"));%>
                    <br><%out.print(wed3.getString("room_no"));%>
                    
            <% }
            %>

    </th>
    <th>
    <% ResultSet wed4=st.executeQuery("select * from timetable where ddid=20  and divi='TEA'");
            while(wed4.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=wed4.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet wed5=st.executeQuery("select * from timetable where ddid=21  and divi='TEA'");
            while(wed5.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=wed5.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(wed5.getString("subcode"));%>
                    <br><%out.print(wed5.getString("tag"));%>
                    <br><%out.print(wed5.getString("room_no"));%>
                    
            <% }
            %>

    </th>
    <th>
    <% ResultSet wed6=st.executeQuery("select * from timetable where ddid=22 and divi='TEA' ");
            while(wed6.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=wed6.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet thu1=st.executeQuery("select * from timetable where ddid=25  and divi='TEA'");
            while(thu1.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=thu1.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(thu1.getString("subcode"));%>
                    <br><%out.print(thu1.getString("tag"));%>
                    <br><%out.print(thu1.getString("room_no"));%>
                    
            <% }
            %>

    </th>
    <th>
    <% ResultSet thu2=st.executeQuery("select * from timetable where ddid=26  and divi='TEA'");
            while(thu2.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=thu2.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet thu3=st.executeQuery("select * from timetable where ddid=27  and divi='TEA'");
            while(thu3.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=thu3.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(thu3.getString("subcode"));%>
                    <br><%out.print(thu3.getString("tag"));%>
                    <br><%out.print(thu3.getString("room_no"));%>
                    
            <% }
            %>


    </th>
    <th>
    <% ResultSet thu4=st.executeQuery("select * from timetable where ddid=28  and divi='TEA'");
            while(thu4.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=thu4.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet thu5=st.executeQuery("select * from timetable where ddid=29  and divi='TEA'");
            while(thu5.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=thu5.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(thu5.getString("subcode"));%>
                    <br><%out.print(thu5.getString("tag"));%>
                    <br><%out.print(thu5.getString("room_no"));%>
                    
            <% }
            %>


    </th>
    <th>
    <% ResultSet thu6=st.executeQuery("select * from timetable where ddid=30  and divi='TEA'");
            while(thu6.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=thu6.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet fri1=st.executeQuery("select * from timetable where ddid=33  and divi='TEA'");
            while(fri1.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=fri1.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(fri1.getString("subcode"));%>
                    <br><%out.print(fri1.getString("tag"));%>
                    <br><%out.print(fri1.getString("room_no"));%>
                    
            <% }
            %>

    </th>
    <th>
    <% ResultSet fri2=st.executeQuery("select * from timetable where ddid=34  and divi='TEA'");
            while(fri2.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=fri2.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet fri3=st.executeQuery("select * from timetable where ddid=35  and divi='TEA'");
            while(fri3.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=fri3.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(fri3.getString("subcode"));%>
                    <br><%out.print(fri3.getString("tag"));%>
                    <br><%out.print(fri3.getString("room_no"));%>
                    
            <% }
            %>

    </th>
    <th>
    <% ResultSet fri4=st.executeQuery("select * from timetable where ddid=36  and divi='TEA'");
            while(fri4.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=fri4.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet fri5=st.executeQuery("select * from timetable where ddid=37  and divi='TEA'");
            while(fri5.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=fri5.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(fri5.getString("subcode"));%>
                    <br><%out.print(fri5.getString("tag"));%>
                    <br><%out.print(fri5.getString("room_no"));%>
                    
            <% }
            %>
    </th>
    <th>
    <% ResultSet fri6=st.executeQuery("select * from timetable where ddid=38  and divi='TEA'");
            while(fri6.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=fri6.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet sat1=st.executeQuery("select * from timetable where ddid=41  and divi='TEA'");
            while(sat1.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=sat1.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(sat1.getString("subcode"));%>
                    <br><%out.print(sat1.getString("tag"));%>
                    <br><%out.print(sat1.getString("room_no"));%>
                    
            <% }
            %>


    </th>
    <th>
    <% ResultSet sat2=st.executeQuery("select * from timetable where ddid=42  and divi='TEA'");
            while(sat2.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=sat2.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet sat3=st.executeQuery("select * from timetable where ddid=43  and divi='TEA'");
            while(sat3.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=sat3.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(sat3.getString("subcode"));%>
                    <br><%out.print(sat3.getString("tag"));%>
                    <br><%out.print(sat3.getString("room_no"));%>
                    
            <% }
            %>

    </th>
    <th>
    <% ResultSet sat4=st.executeQuery("select * from timetable where ddid=44  and divi='TEA'");
            while(sat4.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=sat4.getString("id")%>"><i class="fa fa-trash"></i> </a>
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
    <% ResultSet sat5=st.executeQuery("select * from timetable where ddid=45  and divi='TEA'");
            while(sat5.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=sat5.getString("id")%>"><i class="fa fa-trash"></i> </a>
                    <br><%out.print(sat5.getString("subcode"));%>
                    <br><%out.print(sat5.getString("tag"));%>
                    <br><%out.print(sat5.getString("room_no"));%>
                    
            <% }
            %>


    </th>
    <th>
    <% ResultSet sat6=st.executeQuery("select * from timetable where ddid=46  and divi='TEA'");
            while(sat6.next())
            {
                    %>
                    <br><a href="delete_table_entry.jsp?id=<%=sat6.getString("id")%>"><i class="fa fa-trash"></i> </a>
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



  </body>
  <form class="box2" action="collisionTEA.jsp">
        SUBJECT:
              <select class="dropdown" name="subname">
                      <%
                          ResultSet subject= st.executeQuery("select * from subjects where year='TE'");
                           while(subject.next()){   
        %>
            <option value="<%=subject.getString("subcode")%>"><%=subject.getString("subname")%></option>
        <% } %>
                  </select>
            ROOM:
                      <select class="dropdown" name="room"/>
                      <%
                          ResultSet room= st.executeQuery("select * from room");
                           while(room.next()){   
        %>
            <option value="<%=room.getString("room_no")%>"><%=room.getString("room_no")%></option>
        <% } %>
                  </select>
             DAY:         <select class="dropdown" name="day">
                          <option value="Monday">Monday</option>
                          <option value="Tuesday">Tuesday</option>
                          <option value="Wednesday">Wednesday</option>
                          <option value="Thursday">Thursday</option>
                          <option value="Friday">Friday</option>
                          <option value="Saturday">Saturday</option>
                      </select>
                  
              TIME:            <select class="dropdown" name="time">
                                <option value="9:00">9:00-10:00</option>
                                <option value="10:00">10:00-11:00</option>
                                <option value="11:15">11:15-12:15</option>
                                <option value="12:15">12:15-1:15</option>
                                <option value="2:00">2:00-3:00</option>
                                <option value="3:00">3:00-4:00</option>
                          </select>
              
              <div><input type="submit" class="submit" name="action" value="ADD" /></div>
              
  </form> 
                  <div><a href="home.jsp"><input class="home" type="button" value="Return to Home" name="submit"></a></div>

                  
                  
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
  document.getElementById("main").style.marginLeft = "150px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
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

