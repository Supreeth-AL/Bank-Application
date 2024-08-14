<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Loan Success</title>
        <style>
            body {
                background-color: rgba(207, 231, 243, 0.912);
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

            div h2 {
                display: flex;
                align-items: center;
                justify-content: center;
                text-decoration: underline;
            }

            div img {
                width: 20%;
                display: block;
                margin-left: auto;
                margin-right: auto;
            }



            .homebutton {
                display: block;
                margin-left: auto;
                margin-right: auto;
            }

            .center{
                display: flex;
                align-items: center;
                justify-content: center;
                margin-left: auto;
                margin-right: auto;
                
            }
        </style>
    </head>

    <body>

        <h3 class="headingofbank">ABC Bank</h3>

        <div>
            <h2>Loan is Passed</h2>
        </div>

        <div>
            <img src="image/checked.png" alt="Cancel">
        </div>
        <br>
        <div class="center">

            <% session=request.getSession(); out.println("Dear," + session.getAttribute("name")
                + " thank you for showing your interest on the loan from ABCBank." ); out.println("<br>");
                out.println("Our executive will contact you soon on your email address mentioned below : ");
                out.println("<br>");
                out.println(session.getAttribute("email"));
                %>
        </div>
        <button class="homebutton" type="button" onclick="location.href='Home.html'">home</button>
    </body>

    </html>