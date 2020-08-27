<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>?MCOE IT Timetable</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body class="background">

<form class="box" action="trial.jsp" method="post">
  <img src="mcoe.png" width="177" height="223" class="center">
  <h1></h1>
  
  
    <div><a href="login.jsp"><input type="button" class="submit" name="Login" value="Login"/></div>
    
    <div><a href="home2.jsp"><input type="button" class="submit" name="View" value="View"/></div>
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
  width: 300px;
  padding: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  background: rgba(245,245,245,0.6);
  text-align: center;
  border-radius: 10px;
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
