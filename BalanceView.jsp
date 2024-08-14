<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balance</title>
    <style>

body {
            /* background-color: rgba(208, 237, 226, 0.912); */
           background-color: rgb(189, 238, 248);
        }

        .headingofbank {
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 26px;
            border-style: outset;
            border-radius: 7px;
            height: 37px;
            padding: 0.2%;
            background-color: rgba(108, 199, 241, 0.912);
        }

        .welcome{
            margin-top: -2%;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: underline;
        }

        .balance{
            margin-left: 5%;
        }

        #home{
            margin-top: 3%;
            margin-left: 5%;
        }

        
    </style>

</head>

<body>
    
    <h2 class="headingofbank">ABC Bank</h2>

    <div class="welcome">
        <h2>Bank Balance</h2>
    </div>

   
        <h3 class="balance"> the Total Balance in your Account is:
        <%
            session = request.getSession();
            out.println(session.getAttribute("bal"));
        
            %>
        </h3>	

        <button id="home" type="button" onclick="location.href='Home.html'" >home</button>

    </div>

    


</body>

</html>