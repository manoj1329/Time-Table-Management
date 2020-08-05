<html>
    <head>
        <title>tregister</title>
        <link href="register.css" rel="stylesheet"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form method="post" action="tregister.jsp"/>
            <header>
                <center>
                    <h1>Time Table Creation</h1>
                </center>
            </header>
        <br>
        <br>
        <form action="ttime.jsp">
<center>
    <table  align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>
            <th><b>Subject Code</b></th>
            <th><b>Subject</b></th>
            <th><b>Time</b></th>
            <th><b>Date</b></th>
            <th><b>Semester</b></th>
            <th><b>Section</b></th>
        </tr>
        <tr>
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
                <input type="time" name="time" required/>
                            </th>
                            <th>              
                <input type="date" name="date" required/>
                            </th>
                            <th>
                     <select name="sem" required>
                                <option value="1">I</option>
                                <option value="2">II</option>
                                <option value="3">III</option>
                                <option value="4">IV</option>
                                <option value="5">V</option>
                                <option value="6">VI</option>
                                <option value="7">VII</option>
                                <option value="8">VIII</option> 
                            </select>
                            </th>
                            <th>
                                        <input type="radio" name="section" value="A" checked required/>A 
                            <input type="radio" name="section" value="B" />B
                            </th>
                        </tr>
    </table>
        </center>
            <br>
            <center>
                <button type="submit">Submit</button>
            </center>
        </form>
            </body>
            </html>