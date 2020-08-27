<!DOCTYPE html>
<html>
<head>
    <link href="home.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>
</head>
<style>
    .box{
    
  width: 450px;
  height: 400px;
  padding: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  margin: auto;
  border-radius: 5px;
  background: rgba(245,245,245,0.6);
  font-size: 18px;
  text-align: center;
}
</style>
<body class="background">
<div class="box">
  <h2>View Timetable for Class</h2>
  <div id="myDIV" class="hidden">
    <a href="seav.jsp" class="button">SE A</a>
    <a href="sebv.jsp" class="button">SE B</a>
    <br><a href="teav.jsp" class="button">TE A</a>
    <a href="tebv.jsp" class="button">TE B</a>
    <br><a href="beav.jsp" class="button">BE A</a>
    <a href="bebv.jsp" class="button">BE B</a>
  </div>
<a href="searchfacv.jsp" class=" button2">View Timetable for Particular Faculty</a>
</div>
</body>
</html>