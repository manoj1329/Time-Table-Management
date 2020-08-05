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
        <h1 style="margin: 0px 0px 0px -378px">My Account </h1>
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
            String Query="select * from student where stdid=?";
            PreparedStatement psm=conn.prepareStatement(Query);
            psm.setString(1,sid);
            ResultSet rs=psm.executeQuery();
            if(rs.next())
            {
             String id=rs.getString(1);
             session.setAttribute("id",id);
             String name=rs.getString(2);
             String dept=rs.getString(3);
             String sem=rs.getString(4);
             String sec=rs.getString(5);
             String pwd=rs.getString(6);
             session.setAttribute("pwd",pwd);
             String email=rs.getString(7);
                 %> 
                <div>
    <center>
        <label>
            <b>Student ID</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;padding: 3px 0px 7px 18px;" value="<%out.println(id);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Semester</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;    padding: 3px 0px 7px 18px;" value="<%out.println(sem);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Password</b>
        </label>
    </center>
    <center>
        <input type="text" name="text" style="border-radius: 23px;    padding: 3px 0px 7px 18px;" value="<%out.println(pwd);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Department</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;    padding: 3px 0px 7px 18px;" value="<%out.println(dept);%>" readonly/>
    </center>
    <br>
        <center>
        <label>
            <b>Semester</b>
        </label>
    </center>
    <center>
        <input type="text" name="text" style="border-radius: 23px"value="<%out.println(sem);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Section</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;    padding: 3px 0px 7px 18px;" value="<%out.println(sec);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Email</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;    padding: 3px 0px 7px 18px;" value="<%out.println(email);%>" readonly/>
    </center>
    <br>
    <center>
        <span class="" ><a href="scpass.jsp"><b>Change Password !</b></a></span>
        </center>
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
