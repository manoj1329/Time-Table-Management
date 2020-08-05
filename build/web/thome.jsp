<%-- 
    Document   : home
    Created on : Nov 3, 2018, 3:31:48 PM
    Author     : manoj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home</title>
    
    <link rel="Stylesheet" type="text/css" href="home.css">
    <script>
        function myfun() {
            alert("Logout sucessfull");
        }
    </script>
</head>
<header style="border-radius: 0px 0px 156px 156px;">
         <h1 style="margin: 0px 0px 0px 250px">TIME TABLE MANAGEMENT</h1>
 </header>
    <div class="img1">
    </div>
   
    <form method="post">

        <ul>

            <li><a class="btnacc" href="#">Home</a></li><br>
            <li><a class="btnacc" href="sselect.html">Marks</a></li><br>
            <li><a class="btnacc" href="timetable.html">Time Table</a></li><br>
            <li><a class="btnacc" href="sclass.jsp">Special Classes</a></li><br>
            <li><a class="btnacc" href="tdelete.jsp">Delete Account</a></li><br><br>
            <li><a class="btnacc" href="taccount.jsp">My Account</a></li><br><br>
            <li><a class="btnacc" href="tlogin.html" onclick="myfun()"><b>Logout</b></a></li><br>
        </ul>
    </form>
<form class="wel">
    <%
        String name=(String)session.getAttribute("uname");
        session.setAttribute("name",name);
        String uid=(String)session.getAttribute("id");
        session.setAttribute("uid",uid);
        %>
        <center>
            <p style="margin: 36px 0px 0px -198px">Welcome Professor <%out.println(name);%></p>
        </center>
</form>

</body>

        
   
</html>
