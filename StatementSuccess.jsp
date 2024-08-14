<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Statement Page</title>
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

            .balance {
                display: flex;
                align-items: center;
                justify-content: center;
                float:left;
                
                
            }

            .bankbalance {
                display: flex;
                justify-content: space-between;
            }

            .bankbalance img {
                float: right;
                padding-right: 10%;
                width: 40%;
            }
            
            .bal{
            padding-left: 5%;
            }
        </style>

    </head>

    <body>
        <h3 class="headingofbank">ABC Bank</h3>
        <div>
            <h2>Statement of Account</h2>
        </div>
        <div class="bankbalance">

            <div class="bal">
            
                <h3 class="balance"> the Account Transfered form is :
                    <% session=request.getSession(); out.println(session.getAttribute("sal")); %>
                </h3>
                
                <br>

                <h3 class="balance"> the Account Transfered to :
                    <% session=request.getSession(); out.println(session.getAttribute("ral")); %>
                </h3>
                
                <br>

                <h3 class="balance"> the Amount Transfered is :
                    <% session=request.getSession(); out.println(session.getAttribute("al")); %>
                </h3>
                
            </div>

            <div>
                <img src="image/evaluation.png" alt="Success">
            </div>

        </div>

        <button class="homebutton" type="button" onclick="location.href='Home.html'">home</button>


    </body>

    </html>