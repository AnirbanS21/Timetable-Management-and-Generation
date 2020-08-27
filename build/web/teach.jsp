<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
      <%Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
    Statement st = con.createStatement();%>
    
    <form class="box" action="teachback.jsp" method="post" >
    <h1>SE</h1>
    <table id="table1">

        <tr><th>Srno</th><th>Faculty tag</th><th>Subcode</th><th>division</th></tr>
    <tr>
        <td></td><td><select name="faculty">
            <%
    ResultSet s=st.executeQuery("select * from faculty where year>=100");
    while(s.next())
    {
        %>
            
        <option value="<%=s.getString("tag")%>"><%=s.getString("name")%></option>
        <%
    }
%>
        </select>
  
    </td><td><select name="subject">

<%
    ResultSet rs=st.executeQuery("select * from subjects where year='SE'");
    while(rs.next())
    {
        %>
            
        <option value="<%=rs.getString("subcode")%>"><%=rs.getString("subname")%></option>
        <%
    }
%>
        </select>
    
    </td>
<td><select name="division">
<option value="A">A</option>
<option value="B">B</option>
</select></td>
    <td><input type="submit" class="button" value="Add Row" /></td>
    </tr>
    <%     
       int i=1;
        ResultSet set  = st.executeQuery("select * from teach where class_div='SEA' or class_div='SEB'");
        while(set.next())
                {
                 %>
                  <tr>
                        <td><%out.print(i++);%></td>
                        <td><%=set.getString("tag")%></td>
                        <td><%=set.getString("subcode")%></td>
                        <td><%=set.getString("class_div")%></td>
                        <td><div class="input-icons"><i class="fa fa-trash icon" onclick="deleteme(<%=set.getString("tid")%>)"></i></div></td>
 
                        <script language="javascript">
                            function deleteme(delid)
                            {
                                if(confirm("Do you really want to delete this entry?"))
                                {
                                    window.location.href="delteach.jsp?tid="+delid+"";
                                    return true;
                                }
                            }
                        </script>
                </tr>
             <% }
                %>
                 
    </table>
        <table>
        <td>
    <div><a href="teachTE.jsp"><input type="button" class="submit" name="action" value="Add for TE" /></a></div>
        </td>
        <td>
    <div><a href="home.jsp"><input type="button" class="submit" name="action" value="SUBMIT" /></a></div>
        </td>
        <td>
    <div><a href="teachBE.jsp"><input type="button" class="submit" name="action" value="Add for BE" /></a></div>
        </td>
    </table>
    </form>
    
  </body>
</html>

<style type="text/css">
body{
  font-size: 1.4rem;
  background: #34495e;
  font-family: 'Roboto', sans-serif;
}
<%--table{
  border-collapse: collapse;
  font-size: 1.4rem;
  box-shadow: inset 222 22px 0 #CCC;
}--%>
h1{
   color:#fff;
    
}
th{
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
    width: 620px;
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
body{
    background-image: url("biblioteka-polki-knigi.jpg"); 
    background-size: cover; 
    background-repeat: no-repeat, repeat; 
    background-color: #cccccc; 
}
</style>