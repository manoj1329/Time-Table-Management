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
            String pwd=request.getParameter("cpwd");
            String uid=(String)session.getAttribute("sid");
            String npawd=request.getParameter("npwd");
            session.setAttribute("npawd",npawd);
            try{
           Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root","1329");
            Statement st=con.createStatement();
            st.executeUpdate("update student set pwd='"+npawd+"' where stdid='"+uid+"'");
                con.close();
               response.sendRedirect("saccount.jsp");
            }
            catch(Exception e)
            {
                out.println(e);
            }
            %>    
    </body>
</html>