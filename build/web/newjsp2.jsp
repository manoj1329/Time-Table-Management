<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String date = request.getParameter("date");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "dbms";
String userId = "root";
String password = "1329";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>VEHICLE REGISTRATION DETAILS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>stdid</b></td>
<td><b>sname</b></td>
<td><b>dept</b></td>
<td><b>sem</b></td>
<td><b>section</b></td>
<td><b>pwd</b></td>
<td><b>email</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select r.stdid,r.stdname,r.dept,r.sem,r.section,r.pwd,r.email from student r";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("stdid") %></td>
<td><%=resultSet.getString("stdname") %></td>
<td><%=resultSet.getString("dept") %></td>
<td><%=resultSet.getString("sem") %></td>
<td><%=resultSet.getString("section") %></td>
<td><%=resultSet.getString("pwd") %></td>
<td><%=resultSet.getString("email") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>