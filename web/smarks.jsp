<html>
    <head>
        <title>tregister</title>
        <link href="time.css" rel="stylesheet"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form method="post" action="marks.jsp"/>
           <header style="border-radius: 0px 0px 156px 156px;margin: -8px 0px 0px 0px;">
            <center>
             <h1 style="margin: 0px 0px 0px -378px">Enter Marks</h1>
            </center>
          </header>
        <div class="btt">
        <form>
            <input type="submit" style="border-radius: 23px" formaction="thome.jsp" name="" value="HOME">
        </form>
             <br><br><br><br>
    </div>
        <br>
        <br>
        <%
            String sid=request.getParameter("id");
            session.setAttribute("sid",sid);
            %>
        <form action="marks.jsp">
<center>
    <table  style="border-radius: 23px;padding: 5px 5px 7px 8px" align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>
            <th><b>IA</b></th>
            <th><b>Subject Code</b></th>
            <th><b>Subject</b></th>
            <th><b>Assignment</b></th>
            <th><b>IA</b></th>
        </tr>
        <tr>
            <th><select name="type" required>
                            <option value="-1"> Select IA Type</option>
                                <option value="ia1">IA 1</option>
                                <option value="ia2">IA 2</option>
                                <option value="ia3">IA 3</option>
                            </select>
            <th><select name="id" required>
                            <option value="-1"> Select Subject Code</option>
                                <option value="15cs01">15CS01</option>
                                <option value="15cs02">15CS02</option>
                                <option value="15cs03">15CS03</option>
                                <option value="15cs04">15CS04</option>
                            </select>
            </th>
            <th>
                            <select name="sname" required>
                            <option value="-1"> Select Subject Name</option>
                                <option value="dbms">DBMS</option>
                                <option value="cn">CN</option>
                                <option value="m&e">M&E</option>
                                <option value="atc">ATC</option>
                            </th>   
                            <th>              
                <input type="number" name="assignment" required/>
                            </th>
                            <th>              
                <input type="number" name="ia" required/>
                            </th>
                            </tr>
    </table>
        </center>
            <br>
            <center>
                <button type="submit" style="border-radius: 23px">Submit</button>
            </center>
        </form>
            </body>
            </html>