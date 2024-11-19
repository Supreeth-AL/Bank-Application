<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Statement Page</title>
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="statementsuccess.css">

</head>

<body>
    <header>Bank of AB'c</header>
    <main>
        <div class="headline">
            <h2>Welcome to AB'c Back</h2>
        </div>

        <div class="outline">
            <div class="statementsuccess">
                <table>
                    <tr>
                        <th>the Account Transfered form is :</th>
                        <th>the Account Transfered to :</th>
                        <th>the Amount Transfered is :</th>
                    </tr>
                    <tr>
                        <td>  <% 
                    session = request.getSession();
                    Object sal = session.getAttribute("sal");
                    if (sal != null) {
                        // Convert to string, remove brackets, and replace commas with <br>
                        out.println(sal.toString().replace("[", "").replace("]", "").replace(", ", "<br><br>"));
                    } else {
                        out.println("No data available");
                    }
                %></td>

                        <td><% 
                    Object ral = session.getAttribute("ral");
                    if (ral != null) {
                        out.println(ral.toString().replace("[", "").replace("]", "").replace(", ", "<br><br>"));
                    } else {
                        out.println("No data available");
                    }
                %></td>

                        <td><% 
                    Object al = session.getAttribute("al");
                    if (al != null) {
                        out.println(al.toString().replace("[", "").replace("]", "").replace(", ", "<br><br>"));
                    } else {
                        out.println("No data available");
                    }
                %></td>
                    </tr>
                </table>
            </div>
        </div>

    </main>

</body>

</html>