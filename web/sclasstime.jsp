<%--   
    Document   : newjsp
    Created on : Nov 19, 2018, 7:53:37 AM
    Author     : manoj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="time.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>account</title>
    </head>
    <body>
        <header style="border-radius: 0px 0px 156px 156px;margin:-8px 0px 0px 0px;">
            <center>
        <h1 style="margin: 0px 0px 0px -378px">Special Classes</h1>
            </center>
         </header>
        <div class="btt">
        <form>
            <input type="submit" style="border-radius: 23px" formaction="home.jsp" name="" value="HOME">
        </form>
             <br><br><br><br>
    </div>
        <br>
        <br>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr style="color:red">
<td><b>Teacher</b></td>
<td><b>Subject ID</b></td>
<td><b>Subject Name</b></td>
<td><b>Time</b></td>
<td><b>Date</b></td>
</tr>
        <%
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false", "root", "1329");
            String Query="select * from specialtimetable s,teacher t where t.tid=s.tid";
            PreparedStatement psm=conn.prepareStatement(Query);
            ResultSet resultSet=psm.executeQuery();
            if(resultSet.next())
            {
                 %> 
                <td><%=resultSet.getString("tname") %></td>
             <td><%=resultSet.getString("sid") %></td>
             <td><%=resultSet.getString("sname") %></td>
             <td><%=resultSet.getString("_time") %></td>
             <td><%=resultSet.getString("_date") %></td>
                <%
            }
            else
            {
                System.err.println("no details");
            }
            }
            catch(Exception e)
            {
                System.err.println(e);
            }
            %> 
    </body>
</html>
