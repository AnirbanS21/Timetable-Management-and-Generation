<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <form class="box" action="timing_entries.jsp" method="post">
    <h1>Shift I start time</h1>
    <select name="subject">
      <option id="time" name="time" value="1">8:30 AM</option>
      <option id="time" name="time" value="2">8:45 AM</option>
      <option id="time" name="time" value="3">9:00 AM</option>
      <option id="time" name="time" value="4">9:15 AM</option>
      <option id="time" name="time" value="5">9:30 AM</option>
      <%/*<option value="1">10:00 AM</option>
      <option value="2">10:30 AM</option>
      <option value="2">11:30 AM</option>
      <option value="1">12:00 PM</option>
      <option value="2">12:30 PM</option>
      <option value="2">1:00 PM</option>
      <option value="1">1:30 PM</option>
      <option value="2">2:00 PM</option>
    </select>

    <h1>Shift II start time</h1>
    <select name="subject">
      <option value="1">8:00 AM</option>
      <option value="2">8:30 AM</option>
      <option value="1">9:00 AM</option>
      <option value="2">9:30 AM</option>
      <option value="1">10:00 AM</option>
      <option value="2">10:30 AM</option>
      <option value="2">11:30 AM</option>
      <option value="1">12:00 PM</option>
      <option value="2">12:30 PM</option>
      <option value="2">1:00 PM</option>
      <option value="1">1:30 PM</option>
      <option value="2">2:00 PM</option>*/%>
    </select>
      <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/timetable","root","root");
            Statement st = con.createStatement();
            ResultSet set  = st.executeQuery("select * from day_date");
      %>
    <div><input type="submit" class="submit" value="NEXT" name="add" onclick="adRowsTable()"/></a></div>
    </form>
    
    <script>
    function adRowsTable(){
       
        <% 
            st.executeUpdate("delete from subjects where subcode='null'");
            //String t= request.getParameter("time");
             String t="3";     
            String time1[]={"8:30","9:30","10:45","11:45","1:30","2:30","3:45","4:45"};
            String time2[]={"8:45","9:45","11:00","12:00","1:45","2:45","4:00","5:00"};
            String time3[]={"9:00","10:00","11:15","12:15","2:00","3:00","4:15","5:15"};
            String time4[]={"9:15","10:15","11:30","12:30","2:15","3:15","4:30","5:30"};
            String time5[]={"9:30","10:30","11:45","12:45","2:30","3:30","4:45","5:45"};
                
            int m=0;
                /*if(t==null)
                    t="0";*/
                
            String day[]={"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
            String shift[]={"1","1.5","2"};
            int ddid=1;
            
            int i,j;
            for(i=0;i<6;i++)
            for(j=0;j<8;j++)
            {
                if(j==0||j==1)
                    m=0;
                else if(j==6||j==7)
                    m=2;
                else
                    m=1;
                        
                        
                if(t==null){
                    break;
                }
                        else if(t.equals("1"))
                            st.executeUpdate("Insert into day_date(ddid,day,time,shift) values('"+ddid+"','"+day[i]+"','"+time1[j]+"','"+shift[m]+"')");
                        else if(t.equals("2"))
                            st.executeUpdate("Insert into day_date(ddid,day,time,shift) values('"+ddid+"','"+day[i]+"','"+time2[j]+"','"+shift[m]+"')");
                        else if(t.equals("3"))
                            st.executeUpdate("Insert into day_date(ddid,day,time,shift) values('"+ddid+"','"+day[i]+"','"+time3[j]+"','"+shift[m]+"')");
                        else if(t.equals("4"))
                            st.executeUpdate("Insert into day_date(ddid,day,time,shift) values('"+ddid+"','"+day[i]+"','"+time4[j]+"','"+shift[m]+"')");
                        else if(t.equals("5"))
                            st.executeUpdate("Insert into day_date(ddid,day,time,shift) values('"+ddid+"','"+day[i]+"','"+time5[j]+"','"+shift[m]+"')");
                        
                        
                        
                        ddid++;
                       
                    }

        %>
   /*   var table = document.getElementById(id);
      var me = this;
      if(document.getElementById(id)){
        var row1 = table.rows[1].outerHTML;

        //adds index-id in cols with class .tbl_id
        function setIds(){
            var tbl_id = document.querySelectorAll('#'+ id +' .tbl_id');
            for(var i=0; i<tbl_id.length; i++) tbl_id[i].innerHTML = i+1;
        }   
    }*/ 
    }
//var ob = new adRowsTable();
    
    </script>
  </body>
</html>

<style type="text/css">
body{
  font-size: 1.4rem;
  background: #34495e;
  font-family: 'Roboto', sans-serif;
}
table{
  border-collapse: collapse;
  font-size: 1.4rem;
  box-shadow: inset 222 22px 0 #CCC;
}

th{
    background: #007FFF;
    font-size: 1.4rem;
    padding: 0;
    width: 200px; 
    
}
tr{
    display: table-row;
    background: #e3e3e3;

}
tr:nth-child(even){
    display: table-row;
    background: #f6f6f6;
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
.submit{
    font-size: 1.6rem;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 14px 10px;
    width: 150px;
    outline: none;
    color: black;
    border-radius: 50px;
    transition: 0.25s;
    background: #3edc81;
  }
.submit:hover{
    background: #00A572;
    cursor: pointer;
  }
.button{
    line-height: 1;
    display: inline-block;
    font-size: 1.6rem;
    text-decoration: none;
    border-radius: 50px;
    color: #000;
    padding: 8px;
    background-color: #87ceeb;
  }
.button:hover{
    background: #007FFF;
    cursor: pointer;
    border: 2px solid #007FFF;
  }
</style>