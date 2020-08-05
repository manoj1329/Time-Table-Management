<%--   
    Document   : newjsp
    Created on : Nov 19, 2018, 7:53:37 AM
    Author     : manoj
--%>

<%@page import="java.time.DayOfWeek"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
            try{
                %>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="time.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>account</title>
    </head>
    <body>
        <header style="border-radius: 0px 0px 156px 156px;margin: -8px 0px 0px 0px;">
            <center>
        <h1 style="margin: 0px 0px 0px -378px">Today's Time Table </h1>
            </center>
    </header>
        <br>
        <br>
        <form>
       <input type="submit" formaction="stimetable.jsp" style="border-radius: 23px"name="" value="Back"></center>
        </form>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr style="color:#A52A2A">
    <td><b>Day</b></td>
            <td>9:00-9-55
            <td>9:55-10:50
<td>10:50-11:00
<td rowspan="6">B<br>R<br>E<br>A<br>K  </td>
<br>
<td>11:55-12:50
<td rowspan="6"align="center"> L<br>A<br>U<br>N<br>C<br>H<br><br>B<br>R<br>E<br>A<br>K</td>
<td>1:40-2:30
<td>2:00-3:20
<td>3:20-4:10
</tr>
<%
    DayOfWeek[] dayOfWeeks=DayOfWeek.values();
    for(int i=0;i<dayOfWeeks.length;i++){
        DayOfWeek dayOfWeek=dayOfWeeks[i];
        System.out.println("dayOfWeek["+i+"]="+dayOfWeek+";value="+dayOfWeek.getValue());
    }
    String day1=(String)session.getAttribute("day1");
    String day2=(String)session.getAttribute("day2");
    String day3=(String)session.getAttribute("day3");
    String day4=(String)session.getAttribute("day4");
    String day5=(String)session.getAttribute("day5");
    
    
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false", "root", "1329");
           String Query="select * from wtimetable where _day='"+day1+"'";
            PreparedStatement psm=conn.prepareStatement(Query);
            ResultSet rs=psm.executeQuery();
            while(rs.next())
            {
                String day=rs.getString(1);
                String s1=rs.getString(2);
                String s2=rs.getString(3);
                String s3=rs.getString(4);
                String s4=rs.getString(5);
                String s5=rs.getString(6);
                String s6=rs.getString(7);
                String s7=rs.getString(8);
                 %> 
                 <tr>
             <td><%out.println(day);%></td>
             <td><%out.println(s1);%></td>
             <td><%out.println(s2);%></td>
             <td><%out.println(s3);%></td>
             <td><%out.println(s4);%></td>
             <td><%out.println(s5);%></td>
             <td><%out.println(s6);%></td>
             <td><%out.println(s7);%></td>
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
