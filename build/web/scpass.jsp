<%-- 
    Document   : tcpass
    Created on : Nov 27, 2018, 6:55:12 AM
    Author     : manoj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>tregister</title>
        <link href="time.css" rel="stylesheet"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
             function validate()
            {
                var a=document.getElementById("p").value;
                var b=document.getElementById("cp").value;
                if(a!=b)
                {
                    document.getElementById("msg").innerHTML="*Passwords Do Not Match!";
                    return false;
                }
            }
            </script>
    </head>
    <body>
        <form method="post" action="spass.jsp"/>
        <%String sid=(String)session.getAttribute("id");
        session.setAttribute("sid",sid);
            %>
            <header style="border-radius: 0px 0px 156px 156px;margin:-8px 0px 0px 0px;">
            <center>
        <h1 style="margin: 0px 0px 0px -378px">Change Password</h1>
            </center>
    </header>
            <div class="btt">
        <form>
            <input type="submit" style="border-radius: 23px" formaction="home.jsp" name="" value="HOME">
        </form>
             <br><br><br><br>
    </div>
        <center>
                <label>
                    <b>Current Password</b>
                </label>
            </center>
            <center>
                <input type="text" name="cpwd" style="border-radius: 23px;padding: 3px 0px 7px 18px;" value="<%String pswd=(String)session.getAttribute("pwd");out.println(pswd);%>" readonly/>
            </center>
            <br>
             <center>
                <label>
                    <b>New Password</b>
                </label>
            </center>
            <center>
                <input type="password" name="npwd" style="border-radius: 23px;padding: 3px 0px 7px 18px;"id="p" placeholder="Enter New Password" required/>
            </center>
            <br>
            <center>
                <label>
                    <b>Confirm Password</b>
                </label>
            </center>
            <center>
                <input type="text" name="cpwd"style="border-radius: 23px;padding: 3px 0px 7px 18px;" id="cp"/>
            </center>
            <center>
                   <span id="msg" style="color:red;margin: 0px 0px 0px 190px"></span>
            </center>
            <br>
            <center>
                <button type="submit" onclick="return validate()">Submit</button>
            </center>
            </form>
    </body>
</html>
