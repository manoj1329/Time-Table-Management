<%-- 
    Document   : odetails
    Created on : 21 Nov, 2018, 9:01:18 PM
    Author     : Lokeshwari Prakash
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div style="margin: 18px 0px 0px 0px">
            <input type="submit" formaction="thome.jsp" name="" value="HOME">
            </div>
            </form>
            <br>
            <div style="margin: -32px 0px 0px 1453px">
            <form>
            <input type="submit" formaction="tcpass.jsp" name="" value="Change Password">
             </form>
            </div>
             <br><br><br><br>
        <%
            String id=(String)session.getAttribute("uid");
             String uname=(String)session.getAttribute("name");
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root", "1329");
            String Query="select * from teacher,teacher1 where teacher.tid=teacher1.tid and tname=?";
            PreparedStatement psm=conn.prepareStatement(Query);
            psm.setString(1,uname);
            ResultSet rs=psm.executeQuery();
            if(rs.next())
            {
                String tid=rs.getString(1);
                session.setAttribute("tid",tid);
                String tname=rs.getString(2);
                String dept=rs.getString(3);
                String pwd=rs.getString(4);
                session.setAttribute("pwd",pwd);
                String email=rs.getString(5);
                String sub1=rs.getString(7);
                String sub2=rs.getString(8);
                String desig=rs.getString(9);
                String extra=rs.getString(10);
            
            %>
       <div>
    <center>
        <label>
            <b>Teacher ID</b>
        </label>
    </center>
    <center>
        <input type="text" name="text" style="border-radius: 23px;padding: 3px 0px 7px 18px;"value="<%out.println(tid);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Name</b>
        </label>
    </center>
    <center>
        <input type="text" name="text" style="border-radius: 23px;padding: 3px 0px 7px 18px;"value="<%out.println(tname);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Department</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;padding: 3px 0px 7px 18px;" value="<%out.println(dept);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Password</b>
        </label>
    </center>
    <center>
        <input type="text" name="text" style="border-radius: 23px;padding: 3px 0px 7px 18px;"value="<%out.println(pwd);%>" readonly/>
    </center>
    <br>
        <center>
        <label>
            <b>Email</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;padding: 3px 0px 7px 18px;" value="<%out.println(email);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Subject 1</b>
        </label>
    </center>
    <center>
        <input type="text" name="text" style="border-radius: 23px;padding: 3px 0px 7px 18px;"value="<%out.println(sub1);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Subject 2</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;padding: 3px 0px 7px 18px;" value="<%out.println(sub2);%>" readonly/>
    </center>
    <br>
    <center>
        <label>
            <b>Designation</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;padding: 3px 0px 7px 18px;" value="<%out.println(desig);%>" readonly/>
    </center>
    <br>
      <center>
        <label>
            <b>Extra Activities</b>
        </label>
    </center>
    <center>
        <input type="text" name="text"style="border-radius: 23px;padding: 3px 0px 7px 18px;" value="<%out.println(extra);%>" readonly/>
    </center>
    <br>
    <%
        }
else
{
response.sendError(500,"No Orders Found !");
}
}
catch(Exception e)
{
out.println(e);
}
        %>
</html>