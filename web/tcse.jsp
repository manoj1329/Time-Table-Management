<html>
    <head>
        <link href="register.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tcse</title>
    </head>
    <body>
        <form method="post" action="tregfinal.jsp"/>
        <header>
            <center>
        <h1>Computer Science!</h1>
            </center>
        </header>
        <br>
        <center>
            <label>
                <b>ID</b>
            </label>
        <center>
            <center>
                <%
                    String id=(String)session.getAttribute("tid");
                    %>
                 <input type="text" name="id" style="border-radius: 23px 23px 23px 23px;padding: 6px 0px 8px 10px"value="<%out.println(id);%>" readonly/>
            </center>
            <br>
                <label>
                    <b>Subjects</b>
                </label>
                </center>
            <center>
                            <select name="sub1" style="border-radius: 23px 23px 23px 23px;padding: 6px 0px 8px 10px"required>
                                <option value="-1">Select Primary Subject</option>
                                <option value="java">Java</option>
                                <option value="python">Python</option>
                                <option value="machine learning">Machine Learning</option>
                                <option value="AI">Artificial Intelligence</option>
                            </select>
        </center>
            <br>
            <center>
                            <select name="sub2" style="border-radius: 23px 23px 23px 23px;padding: 6px 0px 8px 10px" required>
                                <option value="-1">Select Secondary Subject</option>
                                <option value="Data Structures">Data Structures</option>
                                <option value="Software Engineering">Software Engineering</option>
                                <option value="Computer Networks">Computer Networks</option>
                                <option value="Operating System">Operating System</option>
                            </select>
        </center>
            <br>
            <center>
                <label>
                    <b>Designation</b>
                </label>
            </center>
            <center>
                            <select name="desig"style="border-radius: 23px 23px 23px 23px;padding: 6px 0px 8px 10px" required>
                                <option value="Ph.D">Ph.D</option>
                                <option value="M.Tech">M.Tech</option>
                                <option value="MS">MS</option>
                                <option value="B.E">B.E</option>
                            </select>
        </center>
            <br>
                <center>
                    <label>
                        <b>Extra Activities</b>
                     </label>
                </center>
            <center>
                <input type="text" name="extra" style="border-radius: 23px 23px 23px 23px;padding: 11px 34px 70px 41px" placeholder="Enter Technical/Cultural "/>
            </center>
            <br>
            <center>
                <button type="submit" id="reg">Register</button>
            </center>
</form>
        <form method="post" action="tregister.html"/>
        <br>
        <center>
            <button type="submit" id="reg">Back</button>
        </center>
</body>
</html>