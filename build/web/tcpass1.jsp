<%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%
            String pwd=request.getParameter("cpwd");
            String uid=(String)session.getAttribute("id");
            String npawd=request.getParameter("npwd");
            session.setAttribute("npawd",npawd);
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms?useSSL=false","root", "1329");
            String Query="select * from teacher where tid=? and pwd=?";
            PreparedStatement psm=conn.prepareStatement(Query);
            psm.setString(1,uid);
            psm.setString(2,pwd);
            ResultSet rs=psm.executeQuery();
            if(rs.next())
            {
              String current=rs.getString(4);
              session.setAttribute("current",current);
              response.sendRedirect("tpass.jsp");
            }
             else
              { 
                  response.sendError(401,"Invalid Details !");
                  
              }
            }
            catch(Exception e)
              {
              out.println(e);
              }
%>