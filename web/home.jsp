<!DOCTYPE html>
<html>
<head>
        <link href="home.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Alegreya Sans SC' rel='stylesheet'>

</head>
<body class="background">
   <% String username = (String)session.getAttribute("username");
        
        if(username==null){
            response.sendRedirect("menu.jsp");
        }
%>
<div class="box">
<a href="syllabus.jsp" class="button2">About</a>
<br><a href="subjects.jsp" class=" button2">Add Subject</a>
<a href="practical.jsp" class=" button2">Add Practical</a>
<br><a href="faculty.jsp" class=" button2">Add Faculty</a>
<a href="rooms.jsp" class=" button2">Add Rooms</a>
<div>

    <h2>Asign Faculty to Subject for</h2>
<a href="teach.jsp" class=" button">SE</a>
<a href="teachTE.jsp" class=" button">TE</a>
<a href="teachBE.jsp" class=" button">BE</a>
</div>
<div>
  <h2>Create Timetable for</h2>
    <a href="display_tableSEa.jsp" class="button">SE A</a>
    <a href="display_tableSEb.jsp" class="button">SE B</a>
    <a href="display_tableTEa.jsp" class="button">TE A</a>
    <a href="display_tableTEb.jsp" class="button">TE B</a>
    <a href="display_tableBEa.jsp" class="button">BE A</a>
    <a href="display_tableBEb.jsp" class="button">BE B</a>
    
  </div>

<!--<a href="" class=" button">Create Timetable</a> -->
<div>
    <h2>View Timetable</h2>
    <a href="sea.jsp" class="button">SE A</a>
    <a href="seb.jsp" class="button">SE B</a>
    <a href="tea.jsp" class="button">TE A</a>
    <a href="teb.jsp" class="button">TE B</a>
    <a href="bea.jsp" class="button">BE A</a>
    <a href="beb.jsp" class="button">BE B</a>

</div>
<a href="searchfac.jsp" class=" button2">View Timetable for Particular Faculty</a>
<br><a href="logout.jsp" class=" button3">Log out</a>
<a href="register.jsp" class=" button3">Register</a>
</div>
</body>
</html>
