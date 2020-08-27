<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Search Faculty Timetable</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body class="background">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
    Statement st = con.createStatement();
    ResultSet set  = st.executeQuery("select * from faculty");
 %>

<form class="box" action="DisplaySelector.jsp" method="post">
  <h1>Select Faculty</h1>
  <select name="faculty">
      <%
          while(set.next())
                {
      %>
                    <option value="<%=set.getString("tag")%>"><%=set.getString("name")%></option>
      <%
                }        
      %>
  </select>
  <div class="action_btn">
    <input type="submit" class="submit" name="action" value="SUBMIT"/>
  </div>
</form>

  </body>
</html>
<style type="text/css">
body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: #34495e;
}
.background{
    background-image: url("slidenew001.jpg"); /* The image used */
  
  height: 1000px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover;
}
.box{
  width: 350px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: #F5F5F5;
  text-align: center;
}
.box h1{
  color: #000080;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "text"],.box input[type = "password"]{
  border:0;
  background: none;
  display: block;
  margin: 20px auto;
  text-align: center;
  border: 2px solid #3498db;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color:#000000;
  border-radius: 24px;
  transition: 0.5s;
}
.box input[type = "text"]:focus,.box input[type = "password"]:focus{
  width: 280px;
  border-color: #2ecc71;
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
  color: black;
  border-radius: 24px;
  transition: 0.25s;
}
.submit:hover{
  background: #2ecc71;
  cursor: pointer;
}
.button{
  color: black;
  background: #2ecc71;
  border: 2px solid #2ecc71;
  transition: 0.25s
}
.button:hover{
  background: #3edc81;
  cursor: pointer;
}

</style>
