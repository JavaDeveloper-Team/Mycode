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
         .actions a {
            padding: 6px 12px;
            margin: 2px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }
        .actions a.approve {
            background-color: #28a745;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="aside.jsp" />
<main>
    <h2>Admin Dashboard</h2>
    <%
    
    %>
    <table class="dashboard-table">
        <thead>
            <tr>
                
                <th>Names</th>
                <th>Email</th>
                <th>username</th>
                <th>Password</th>
                <th>status</th>
                <th>Limit</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${secondList}" var="l">
            <tr>
                <td>${l.Names}</td>
                <td>${l.email}</td>
                <td>${l.username}</td>
                <td>${l.password}</td>
                <td>${l.status}</td>
                <td>${l.note_limit}</td>
                <td class="actions">
                    <a href="delete.htm?id=${l.userid}" class="approve">Delete</a>
                    <a href="limitForm.htm?id=${l.userid}" class="approve">Limit</a>
                </td>
                    
                </td>
            </tr>
             </c:forEach>          <!-- Additional rows go here -->
        </tbody>
    </table>
    <form action="manageUser.htm" method="get">
            <input type="button" value="Go Back" onclick="window.history.back()">
        </form>
    </main>
<jsp:include page="footer.jsp" />
</body>
</html>
