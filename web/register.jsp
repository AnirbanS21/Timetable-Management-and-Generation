<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>?MCOE IT Timetable</title>
    <link rel="stylesheet" href="style.css">
    <script type="text/javascript">
        function validate(){
            var pass = document.forms["loginform"]["password"].value;
            var cpass = document.forms["loginform"]["rpassword"].value;
            
            if(pass != cpass){
                alert("Passwords do not match");
                return false;
            }
            else{
                return true;
            }
        }
    </script>

  </head>
  <body>

    <form class="box" name="loginform"  action="create.jsp" onsubmit="return validate()" method="post">
      USERNAME
      <br><input required type="text" name="username" placeholder="Enter username here:-">
      <br>
      <br>PASSWORD
      <br><input required type="password" name="password" placeholder="Enter password here:-">
      <br>
      <br>CONFIRM PASSWORD
      <br><input required type="password" name="rpassword" placeholder="Please confirm password:-">
      <br>
      <div><a href="home.jsp"><input type="submit" class="submit" name='Create' value='Create'></a></div>
    
    </form>
  </body>
</html>
<style type="text/css">
body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: #191919;
}
.box{
  width: 900px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: #FFFFFF;
  text-align: center;
}
.box h1{
  color: black;
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
  color: black;
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