<!-- manageUsers.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
       
        h2 {
            color: #4CAF50;
        }
        .link-button {
            display: inline-grid;
            background-color: #4CAF50;
            color: white;
            width: 20rem;
            text-decoration: none;
            padding: 15px;
            margin: 10px;
            text-align: center;
            border-radius: 5px;
        }
        .link-button:hover {
            background-color: #45a049;
            width: 20rem;
        }
          body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            text-align: center;
        }
        aside {
            background-color: #333;
            color: white;
            width: 200px;
            height: 100vh;
            padding: 15px;
            float: left;
            box-sizing: border-box;
        }
        aside a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px 0;
        }
        aside a:hover {
            background-color: #575757;
        }
        main {
            margin-left: 220px; /* Space for the aside */
            padding: 20px;
            background-color: white;
            min-height: 100vh;
            box-sizing: border-box;
        }
        footer {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="aside.jsp" />


    <main>
    <h2>Manage Users</h2>
    <a href="viewUserRegistered.htm" class="link-button">View Registered Users</a>
    <a href="approveUserServlet" class="link-button">View User Accounts</a>
    </main>
<jsp:include page="footer.jsp" />
</body>
</html>
