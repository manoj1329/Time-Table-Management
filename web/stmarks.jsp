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
        <h1 style="margin: 0px 0px 0px -378px">Marks</h1>
            </center>
    </header>
        <div class="btt">
        <form>
            <input type="submit" style="border-radius: 23px" formaction="home.jsp" name="" value="HOME">
        </form>
             <br><br><br><br>
    </div>
        <%
            String sid=(String)session.getAttribute("uid");
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false", "root", "1329");
            String Query="select * from marks where sid=?";
            PreparedStatement psm=conn.prepareStatement(Query);
            psm.setString(1,sid);
            ResultSet rs=psm.executeQuery();
            if(rs.next())
            {
             String id=rs.getString(1);
             String scode=rs.getString(2);
             String sname=rs.getString(3);
             String type=rs.getString(4);
             String assignment=rs.getString(5);
             String ia=rs.getString(6);
             String total=rs.getString(7);
                 %> 
                <div>
    <table  align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>
            <th style="color: red"><b>IA Type</b></th>
            <th style="color: red"><b>Subject Code</b></th>
            <th style="color: red"><b>Subject</b></th>
            <th style="color: red"><b>Assignment</b></th>
            <th style="color: red"><b>IA</b></th>
            <th style="color: red"><b>Total</b></th>
        </tr>
        <tr>
            <th><%out.println(type);%></th>
            <th><%out.println(scode);%></th>
            <th><%out.println(sname);%></th>
            <th><%out.println(assignment);%></th>
            <th><%out.println(ia);%></th>
            <th><%out.println(total);%></th>
            
                            </tr>
    </table>
                </div>
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
