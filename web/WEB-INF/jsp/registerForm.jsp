<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sticky Notes App - Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
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
        input[type="text"], input[type="email"], select {
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

    <div class="container">
        <h2>Welcome to the Sticky Notes App</h2>
        <form action="register.htm" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="Names" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="">Select</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
            <label for="status">Status</label>
            <select id="status" name="status" required>
                <option value="">Select</option>
                <option value="male">active</option>
                <option value="female">inactive</option>
               
            </select>

            <input type="submit" value="Register">
        </form>
        <form action="register.jsp" method="get">
            <input type="button" value="Back" onclick="window.history.back()">
        </form>
    </div>

</body>
</html>
