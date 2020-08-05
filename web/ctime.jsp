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
            String day1=request.getParameter("day1");
            String day2=request.getParameter("day2");
            String day3=request.getParameter("day3");
            String day4=request.getParameter("day4");
            String day5=request.getParameter("day5");
            if(day1.equals("Monday"))
            {
            String _day="Monday";
            String subject1=request.getParameter("msubject1");
            String subject2=request.getParameter("msubject2");
            String subject3=request.getParameter("msubject3");
            String subject4=request.getParameter("msubject4");
            String subject5=request.getParameter("msubject5");
            String subject6=request.getParameter("msubject6");
            String subject7=request.getParameter("msubject7");
               Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call time(?,?,?,?,?,?,?,?)}");
            calstat.setString(1,_day);
            calstat.setString(2,subject1);
            calstat.setString(3,subject2);
            calstat.setString(4,subject3);
            calstat.setString(5,subject4);
            calstat.setString(6,subject5);
            calstat.setString(7,subject6);
            calstat.setString(8,subject7);
            ResultSet rs=calstat.executeQuery();
            }
            if(day2.equals("Tuesday"))
            {
            String _day="Tuesday";
            String subject1=request.getParameter("tsubject1");
            String subject2=request.getParameter("tsubject2");
            String subject3=request.getParameter("tsubject3");
            String subject4=request.getParameter("tsubject4");
            String subject5=request.getParameter("tsubject5");
            String subject6=request.getParameter("tsubject6");
               Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call time(?,?,?,?,?,?,?,?)}");
            calstat.setString(1,_day);
            calstat.setString(2,subject1);
            calstat.setString(3,subject2);
            calstat.setString(4,subject3);
            calstat.setString(5,subject4);
            calstat.setString(6,subject5);
            calstat.setString(7,subject6);
            calstat.setString(8,subject6);
            ResultSet rs=calstat.executeQuery();
             
            }
            if(day3.equals("Wednesday"))
            {
            String _day="Wednesday";
            String subject1=request.getParameter("wsubject1");
            String subject2=request.getParameter("wsubject2");
            String subject3=request.getParameter("wsubject3");
            String subject4=request.getParameter("wsubject4");
            String subject5=request.getParameter("wsubject5");
            String subject6=request.getParameter("wsubject6");
            String subject7=request.getParameter("wsubject7");
               Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call time(?,?,?,?,?,?,?,?)}");
            calstat.setString(1,_day);
            calstat.setString(2,subject1);
            calstat.setString(3,subject2);
            calstat.setString(4,subject3);
            calstat.setString(5,subject4);
            calstat.setString(6,subject5);
            calstat.setString(7,subject6);
            calstat.setString(8,subject7);
            ResultSet rs=calstat.executeQuery();
             
            }if(day4.equals("Thursday"))
            {
            String _day="Thursday";
            String subject1=request.getParameter("thsubject1");
            String subject2=request.getParameter("thsubject2");
            String subject3=request.getParameter("thsubject3");
            String subject4=request.getParameter("thsubject4");
            String subject5=request.getParameter("thsubject5");
            String subject6=request.getParameter("thsubject6");
               Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call time(?,?,?,?,?,?,?,?)}");
            calstat.setString(1,_day);
            calstat.setString(2,subject1);
            calstat.setString(3,subject2);
            calstat.setString(4,subject3);
            calstat.setString(5,subject4);
            calstat.setString(6,subject5);
            calstat.setString(7,subject6);
            calstat.setString(8,subject6);
            ResultSet rs=calstat.executeQuery();
             
            }if(day5.equals("Friday"))
            {
            String _day="Friday";
            String subject1=request.getParameter("fsubject1");
            String subject2=request.getParameter("fsubject2");
            String subject3=request.getParameter("fsubject3");
            String subject4=request.getParameter("fsubject4");
            String subject5=request.getParameter("fsubject5");
            String subject6=request.getParameter("fsubject6");
            String subject7=request.getParameter("fsubject7");
               Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
        CallableStatement calstat=con.prepareCall("{call time(?,?,?,?,?,?,?,?)}");
            calstat.setString(1,_day);
            calstat.setString(2,subject1);
            calstat.setString(3,subject2);
            calstat.setString(4,subject3);
            calstat.setString(5,subject4);
            calstat.setString(6,subject5);
            calstat.setString(7,subject6);
            calstat.setString(8,subject7);
            ResultSet rs=calstat.executeQuery();
            con.close();
            calstat.close();
            response.sendRedirect("thome.jsp");
             
            }
            
            
            
            %>    
    </body>
</html>
