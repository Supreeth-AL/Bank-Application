<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Balance Page</title>
        <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="balanceview.css">


    </head>

    <body>

        <header>Bank of AB'c</header>
        <main>
            <div class="headline">
                <h2>Welcome to AB'c Back</h2>
            </div>

            <div class="outline">
                <div class="balancebox">
                    <table>
                        <tr>
                            <th colspan="2">The Total Balance in your Account is:</th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <% session=request.getSession(); out.println(session.getAttribute("bal")); %>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="homebutton">
                <button id="home" type="button" onclick="location.href='Home.html'">home</button>
            </div>

        </main>




        </div>




    </body>

    </html>