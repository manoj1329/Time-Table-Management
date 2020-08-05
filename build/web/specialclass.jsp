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
        <title>sclass</title>
    </head>
    <body>
        
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%
            String tid=(String)session.getAttribute("id");
            String sid=request.getParameter("sid");
            String sname=request.getParameter("subject");
            String time=request.getParameter("time");
            String date=request.getParameter("date");
            String sem=request.getParameter("sem");
            String section=request.getParameter("section");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call sclass(?,?,?,?,?,?,?)}");
            calstat.setString(1,tid);
            calstat.setString(2,sid);
            calstat.setString(3,sname);
            calstat.setString(4,time);
            calstat.setString(5,date);
            calstat.setString(6,sem);
            calstat.setString(7,section);
            ResultSet rs=calstat.executeQuery();
            con.close();
            calstat.close();
            response.sendRedirect("thome.jsp");
            
            %>    
    </body>
</html>
