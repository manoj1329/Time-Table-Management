
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
        String tid=request.getParameter("tid");
        session.setAttribute("tid",tid);
        String tname=request.getParameter("tname");
        String dept=request.getParameter("dept");
        String pwd=request.getParameter("pwd");
        String email=request.getParameter("email");
        if(dept.equals("cse")){
        Class.forName("com.mysql.jdbc.Driver").newInstance();
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
    CallableStatement calstat=con.prepareCall("{call tregister1(?,?,?,?,?)}");
        calstat.setString(1,tid);
        calstat.setString(2,tname);
        calstat.setString(3,dept);
        calstat.setString(4,pwd);
        calstat.setString(5,email);
        ResultSet rs=calstat.executeQuery();
        con.close();
        calstat.close();
        response.sendRedirect("tcse.jsp");
}
            else if(dept.equals("mech"))
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
    CallableStatement calstat=con.prepareCall("{call tregister1(?,?,?,?,?)}");
        calstat.setString(1,tid);
        calstat.setString(2,tname);
        calstat.setString(3,dept);
        calstat.setString(5,pwd);
        calstat.setString(6,email);
        ResultSet rs=calstat.executeQuery();
        con.close();
        calstat.close();
    response.sendRedirect("tmech.jsp");

}

            %>    
    </body>
</html>
