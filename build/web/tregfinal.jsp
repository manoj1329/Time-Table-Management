<%-- 
    Document   : tcse
    Created on : Nov 10, 2018, 1:41:17 PM
    Author     : manoj
--%>

<%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%          
            String tid=request.getParameter("id");
            String sub1=request.getParameter("sub1");
            String sub2=request.getParameter("sub2");
            String desig=request.getParameter("desig");
            String extra=request.getParameter("extra");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call tregister2(?,?,?,?,?)}");
           calstat.setString(1,tid);
           calstat.setString(2,sub1);
            calstat.setString(3,sub2);
            calstat.setString(4,desig);
            calstat.setString(5,extra);
            ResultSet rs=calstat.executeQuery();
            con.close();
            calstat.close();
            response.sendRedirect("tlogin.html");
            
    %>
