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
        <header style="border-radius: 0px 0px 156px 156px;margin: -8px 0px 0px 0px;">
            <center>
        <h1 style="margin: 0px 0px 0px -378px">Time Table For The Week </h1>
            </center>
    </header>
        <br>
        <br>
        <form>
       <input type="submit" style="border-radius: 23px" formaction="stimetable.jsp" name="" value="Back"></center>
        </form>
        <table style="border-radius: 23px 23px 23px 23px;
    padding: 6px 12px 19px 15px;" align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr>
    <td style="color: red"><b>Day</b></td>
            <td style="color: red">9:00-9-55
            <td style="color: red">9:55-10:50
<td style="color: red">10:50-11:00
<td style="color: red"rowspan="6">B<br>R<br>E<br>A<br>K  </td>
<br>
<td style="color: red">11:55-12:50
<td style="color: red" rowspan="6"align="center"> L<br>A<br>U<br>N<br>C<br>H<br><br>B<br>R<br>E<br>A<br>K</td>
<td style="color: red">1:40-2:30
<td style="color: red">2:00-3:20
<td style="color: red">3:20-4:10
</tr>
        <%
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false", "root", "1329");
            String Query="select * from wtimetable";
            PreparedStatement psm=conn.prepareStatement(Query);
            ResultSet resultSet=psm.executeQuery();
            while(resultSet.next())
            {
                 %> 
                 <tr>
             <td><%=resultSet.getString("_day") %></td>
             <td><%=resultSet.getString("subject1") %></td>
             <td><%=resultSet.getString("subject2") %></td>
             <td><%=resultSet.getString("subject3") %></td>
             <td><%=resultSet.getString("subject4") %></td>
             <td><%=resultSet.getString("subject5") %></td>
             <td><%=resultSet.getString("subject6") %></td>
             <td><%=resultSet.getString("subject7") %></td>
                 </tr>
                <%
            }
            }
            catch(Exception e)
            {
                System.err.println(e);
            }
            %> 
    </body>
</html>
