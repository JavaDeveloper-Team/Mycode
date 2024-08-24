<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .dashboard-table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .dashboard-table thead {
            background-color: #333;
            color: #fff;
        }
        .dashboard-table thead th {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .dashboard-table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .dashboard-table tbody tr:hover {
            background-color: #f1f1f1;
        }
        .dashboard-table tbody td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        .actions {
            text-align: center;
        }
        .actions button {
            padding: 6px 12px;
            margin: 2px;
            border: none;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            border-radius: 4px;
        }
        .actions button.edit {
            background-color: #28a745;
        }
        .actions button.delete {
            background-color: #dc3545;
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
         input[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }
        input[type="button"]:hover {
            background-color: #45a049;
        }
         .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        h2 {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            text-align: left;
        }
        input[type="text"],input[type="email"], input[type="password"],select {
            width: 100%;
            padding: 8px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"], input[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }
        input[type="submit"]:hover, input[type="button"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="aside.jsp" />
<main>
    <h2>Admin Dashboard</h2>

    <div class="container">
        <h2>Approve Normal user</h2>
        
        <form action="approveForm.htm" method="post">
            <input type="hidden" id="userid" name="userid" value="${userData[0].userid}" required>
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="${userData[0].email}" required>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <label for="status">Status</label>
            <input type="text" id="status" name="status" value="${userData[0].status}" required>
            <input type="submit" value="Approve">
        </form>
        <form action="register.jsp" method="get">
            <input type="button" value="Back" onclick="window.history.back()">
        </form>
        
    </div>
   
    </main>
<jsp:include page="footer.jsp" />
</body>
</html>
