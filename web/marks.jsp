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
            String sid=(String)session.getAttribute("sid");
             String id=request.getParameter("id");
             String sname=request.getParameter("sname");
            String _type=request.getParameter("type");
            String assignment=request.getParameter("assignment");
            String ia=request.getParameter("ia");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call marks(?,?,?,?,?,?)}");
            calstat.setString(1,sid);
            calstat.setString(2,id);
            calstat.setString(3,sname);
            calstat.setString(4,_type);
            calstat.setString(5,assignment);
            calstat.setString(6,ia);
            ResultSet rs=calstat.executeQuery();
            con.close();
            calstat.close();
            response.sendRedirect("thome.jsp");
            
            %>    
    </body>
</html>
