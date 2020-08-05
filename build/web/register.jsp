<%-- 
    Document   : register
    Created on : Nov 3, 2018, 4:21:17 PM   
    Author     : manoj
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%
            String stdid=request.getParameter("stdid");
            String stdname=request.getParameter("stdname");
            String dept=request.getParameter("dept");
            String sem=request.getParameter("sem");
            String section=request.getParameter("section");
            String pwd=request.getParameter("pwd");
            String email=request.getParameter("email");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call register(?,?,?,?,?,?,?)}");
            calstat.setString(1,stdid);
            calstat.setString(2,stdname);
            calstat.setString(3,dept);
            calstat.setString(4,sem);
            calstat.setString(5,section);
            calstat.setString(6,pwd);
            calstat.setString(7,email);
            ResultSet rs=calstat.executeQuery();
            con.close();
            calstat.close();
            response.sendRedirect("login.html");
            
            %>    
    </body>
</html>
