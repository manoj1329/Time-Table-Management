<%-- 
    Document   : home
    Created on : Nov 3, 2018, 3:31:48 PM
    Author     : manoj
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
<body>
    <% String uid=(String)session.getAttribute("id");
    String name=(String)session.getAttribute("uname");
    session.setAttribute("uid",uid);
    String depat=(String)session.getAttribute("dept");
    session.setAttribute("depat",depat);
    %>
     <header style="border-radius: 0px 0px 156px 156px;">
         <h1 style="margin: 0px 0px 0px 250px">TIME TABLE MANAGEMENT</h1>
 </header>
    <div class="img1">
    </div>
    <form>
     <ul>
            <li><a class="btnacc" href="#">Home</a></li><br>
            <li><a class="btnacc" href="stmarks.jsp">Marks</a></li><br>
            <li><a class="btnacc" href="stimetable.jsp">Time Table</a></li><br>
            <li><a class="btnacc" href="saccount.jsp">My Account</a></li><br>
            <li><a class="btnacc" href="sdelete.jsp">Delete Account</a></li><br>
            <li><a class="btnacc" href="sclasstime.jsp">Special Classes</a></li><br>
            <li><a class="btnacc" href="login.html" onclick="myfun()"><b>Logout</b></a></li><br>
        </ul>
       
    </form>

<form class="wel">
    <center>
      <p style="margin: 36px 0px 0px -198px">
            <%out.println("Welcome\t"+name);%>
        </p>
    </center>
</form>
    
</body>
<h1>
</h1>
</html>
