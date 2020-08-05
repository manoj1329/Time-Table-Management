<html>
    <head>
        <title>tmech</title>
        <link href="register.css" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        
    </head>
    <body>
        <form method="post" action="tregfinal.jsp"/>
        <header>
            <center>
        <h1>Department Of Mechanical!</h1>
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
                <input type="text" name="id" value="<%out.println(id);%>" readonly/>
            </center>
            <br>
        <center>
                <label>
                    <b>Subjects</b>
                </label>
                </center>
            <center>
                            <select name="sub1" required>
                                <option value="-1">Select Primary Subject</option>
                                <option value="Fluid Mechanics">Fluid Mechanics</option>
                                <option value="Material Science">Material Science</option>
                                <option value="Applied Mechanics">Applied Mechanics</option>
                                <option value="Metrolgy">Metrolgy</option>
                            </select>
        </center>
            <br>
            <center>
                            <select name="sub2" required>
                                <option value="-1">Select Secondary Subject</option>
                                <option value="CAED">CAED</option>
                                <option value="Thermodynamics">Thermodynamics</option>
                                <option value="Kinematics">Kinematics</option>
                                <option value="Turbo Machines">Turbo Machines</option>
                            </select>
        </center>
            <br>
            <center>
                <label>
                    <b>Designation</b>
                </label>
            </center>
            <center>
                            <select name="desig" required>
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
                <input type="text" name="extra" placeholder="Enter any Technical/Cultural Activities"/>
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
</form>
</body>
</html>