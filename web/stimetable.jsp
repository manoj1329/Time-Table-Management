<html>
    <link rel="stylesheet" type="text/css" href="time.css">
    <head>
        <title>timetable</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
    </head>
     <header style="border-radius: 0px 0px 156px 156px;margin: -8px 0px 0px 0px;">
            <center>
        <h1 style="margin: 0px 0px 0px -378px">Time Table </h1>
            </center>
    </header>
     <%
         String id=(String)session.getAttribute("uid");
         session.setAttribute("id",id);
         %>
    <body>
         <div class="btt">
        <form>
            <input type="submit" style="border-radius: 23px"formaction="home.jsp" name="" value="HOME">
        </form>
             <br><br><br><br>
    </div>
    
        <form>
            <div class="time">
            <center>
                
                <span class="" ><b>Time Table for Today</b><a href="day.jsp">Click here...</a></span><br><br>
                <span class=""><b>Time Table for The Week</b><a href="weektime.jsp">Click here...</a></span><br><br>
               
           </center>
            </div>
        </form>
       

    </body>
</html>
