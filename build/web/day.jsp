<%-- 
    Document   : day
    Created on : Nov 29, 2018, 9:15:44 AM
    Author     : manoj
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%  
        Calendar calendar=Calendar.getInstance();
    int day=calendar.get(Calendar.DAY_OF_WEEK);
    out.println(day);
    switch(day)
    {
        case Calendar.MONDAY:
            String day1="monday";
            session.setAttribute("day1", day1);
            break;
        case Calendar.TUESDAY:
            String day2="tuesday";
            session.setAttribute("day2", day2);
            break;
        case Calendar.WEDNESDAY:
            String day3="wednesday";
          session.setAttribute("day3", day3);
            break;
        case Calendar.THURSDAY:
            String day4="thursday";
            session.setAttribute("day4", day4);
            break;
        case Calendar.FRIDAY:
            String day5="friday";
            session.setAttribute("day5", day5);
            break;
            
    }
    response.sendRedirect("today.jsp");
    %>
    </body>
</html>
