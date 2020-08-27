<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title></title>
  </head>
  <body>
      <%Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
    Statement st = con.createStatement();%>
    
    <form class="box" action="teachteback.jsp" method="post" >
    <h1>TE</h1>
    <table id="table1">

        <tr><th>Srno</th><th>Faculty tag</th><th>Subcode</th><th>Division</th></tr>
    <tr>
    <td></td><td><select name="faculty">
            <%
    ResultSet s=st.executeQuery("select * from faculty where year>=10 and (year!=100 or year!=101)");
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
    ResultSet rs=st.executeQuery("select * from subjects where year='TE'");
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
       /* st.executeUpdate("delete from teach where tid='null'");
        st.executeUpdate("delete from teach where tid=''");
        */
       int i=1;
        ResultSet set  = st.executeQuery("select * from teach where class_div='TEA' or class_div='TEB' order by class_div");
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
    <div><a href="teach.jsp"><input type="button" class="submit" name="action" value="Add for SE" /></a></div>
        </td>
        <td>
    <div><a href="home.jsp"><input type="button" class="submit" name="action" value="SUBMIT" /></a></div>
        </td>
        <td>
    <div><a href="teachBE.jsp"><input type="button" class="submit" name="action" value="Add for BE" /></a></div>
        </td>
    </table>
    </form>
    <script>
    //JS class to add/delete rows in html table - https://coursesweb.net/javascript/
    //receives table id 
    
   \

        //adds index-id in cols with class .tbl_id
        function setIds(){
            var tbl_id = document.querySelectorAll('#'+ id +' .tbl_id');
            for(var i=0; i<tbl_id.length; i++) tbl_id[i].innerHTML = i+1;
        }

        //add row after clicked row; receives clicked button in row
     

        //delete clicked row; receives clicked button in row
        me.delRow = function(btn){
          btn.parentNode.parentNode.outerHTML ='';
          setIds();
        }
      }
    }
    function adRowsTable2(id){
      var table = document.getElementById(id);
      var me = this;
      if(document.getElementById(id)){
        var row1 = table.rows[1].outerHTML;

        //adds index-id in cols with class .tbl_id
        function setIds(){
            var tbl_id = document.querySelectorAll('#'+ id +' .tbl_id');
            for(var i=0; i<tbl_id.length; i++) tbl_id[i].innerHTML = i+1;
        }

        //add row after clicked row; receives clicked button in row
        me.addRow = function(btn){
          if(id="table2"){
            btn ? btn.parentNode.parentNode.insertAdjacentHTML('afterend', row1): table.insertAdjacentHTML('beforeend',row1);
            setIds();
          }

        }
    var ob_adRows1 = new adRowsTable1('table1');
    var ob_adRows2 = new adRowsTable2('table2');
    var ob_adRows3 = new adRowsTable3('table3');

    </script>
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