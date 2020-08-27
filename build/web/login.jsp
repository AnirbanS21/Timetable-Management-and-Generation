<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>?MCOE IT Timetable</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body class="background">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<br>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<form class="box" action="trial.jsp" method="post" name="myForm">
  <img src="mcoe.png" width="177" height="223" class="center">
  <h1>Login</h1>
  <input required type="text" name="username" placeholder="Username">
  <input required type="password" name="password" placeholder="Password">
  <div class="action_btn">
    <input type="submit" class="submit" name="action" value="Login"/>
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
  width: 400px;
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
  background: transparent;
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
  backface-visibility: transparent;
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
