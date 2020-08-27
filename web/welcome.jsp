<%-- 
    Document   : welcome
    Created on : Oct 13, 2019, 10:31:00 AM
    Author     : Reshma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="/css/master.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
}
.w3_button {
    width:150px;
    height: 50px;
    transition-duration: 0.4s;
    background-color: lightgrey;
    border-color: none;
}
.w3_button:hover {
    width:150px;
    background-color: maroon;
    color: white;
    position: fixed;

}

/* Header/Blog Title */
.header {
  /*padding: 30px;*/
  text-align: center;
  background: #ddd;
  color: maroon;
  
}

.header h3 {
  font-size: 20px;
}
/*navbar*/
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: maroon;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: black;
}
/* Responsive navigation menu (for mobile devices) */
@media screen and (max-width: 600px) {
  .topnav a, .topnav-right {
    float: none;
    display: block;
  }
  
  .topnav-centered a {
    position: relative;
    top: 0;
    left: 0;
    transform: none;
  }
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 100%;
}

.mySlides {display:none;}
.fa {
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.top{
    width: 100px;
    height: 50px;
        transition-duration: 0.4s;

}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
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

.fa-facebook-f {
  background: #3B5998;
  color: white;
}
.fa-wikipedia-w {
  background: #2c4762;
  color: white;
}
.fa-globe {
  background: #45bbff;
  color: white;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn {   
    width: 100%;
    padding: 0;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}
</style>
<style type="text/css">
html{
  scroll-behavior: smooth;
}
section{
  width: 100%;
  /*height: 300vh;*/
  background: url(bg.jpg) no-repeat;
  background-size:cover;
}
.gotopbtn{
  position: fixed;
  width: 50px;
  height:50px;
  background: #27ae60;
  bottom:40px;
  right: 50px;

  text-decoration: none;
  text-align: center;
  line-height:50px;
  color: white;
  font-size: 22px;
}
</style>
<title>Welcome</title>
</head>
<body>

<div class="header">
   <img src="mcoe.png" alt="logo" width="70" height="70" align="center">
   <div>
                     <h4>Progressive Education Society's</h4>
                     <h3>Modern College of Engineering</h3> 
                     <h5>Approved by AICTE New Delhi, Recognized by Govt. of Maharashtra,
                        <div class="breakclass"></div>
                        Affiliated to Savitribai Phule Pune University.
                       </h5>

  </div>
</div>
    <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#about">About</a></li>
</ul>
    <h1><center  style="color:maroon;">WELCOME TO </center></h1>
    <h1><center style="color:maroon;">DEPARTMENT OF INFORMATION TECHNOLOGY </center></h1>

<div class="w3-content w3-section" style="max-width:1300px">
  <img class="mySlides" src="slidenew001.jpg" width="1290" height="290">
  <img class="mySlides" src="AboutUs-banner.jpg" width="1290" height="290">
  <img class="mySlides" src="abc.jpg" width="1290" height="290">
  <img class="mySlides" src="xyz.jpg" width="1290" height="290">
  <img class="mySlides" src="swapnamam.jpg" width="1290" height="290">
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000); // Change image every 2 seconds
}
mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};
</script>
    
    <h1><center style="color:maroon;">TIME-TABLE GENERATOR</center></h1>
     <h2><left style="color:maroon;">ABOUT</left></h2>
     <p><center style="color:black;">The main purpose of this system is to develop an intelligent system to generate
and maintain timetables. A website and proper UI will be provided to creator and
faculty to log in with their credentials and do the respective duties.
Scope of the system includes:<br>
<li> 1. Generate timetables</li><br>
<li> 2. Access the available timetables</li><br>
<li> 3.Modify/delete existing timetables</li><br>
<li> 4.Add/modify faculty details of the department</li><br>
<li> 5.Add/modify time scheduling and period allocation process.</li></center></p>

<footer class="w3-container w3-padding-32 w3-light-grey w3-center">
    <div ><a href="menu.jsp"><input type="submit" class="submit" value="Get Started"/></a></div>
    <h4><center style="color:maroon;">FIND MORE</center></h4>
<div class="box">
<a href="https://www.facebook.com/PesModernCollegeOfEngineeringPune/" class="fa fa-facebook-f"></a>
<a href="https://moderncoe.edu.in/index.php" class="fa fa-globe"></a>
<a href="https://en.wikipedia.org/wiki/PES_Modern_College_of_Engineering,_Pune" class="fa fa-wikipedia-w"></a>
</div>
</footer>
    <section></section>
    <a class="gotopbtn"href="#"><i class="fas fa-arrow-up"></i></a>
</body>
</html>