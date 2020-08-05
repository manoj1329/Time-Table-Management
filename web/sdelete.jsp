
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            String id=(String)session.getAttribute("uid");
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
            Statement st=con.createStatement();
            st.executeUpdate("delete from student where stdid='"+id+"'");
                con.close();
               response.sendRedirect("login.html");
            }
                 
            catch(Exception e)
            {
                response.sendError(500,"No Account Found");
            }
        %>