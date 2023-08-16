<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Create Lead</title>
    <style>
        body {
            background-color: #DCEDC8;
            font-family: Arial, sans-serif;
        }
        h2 {
            color: #333333;
        }
        form {
            margin-top: 20px;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #63371f;
            border-radius: 5px; 
        }
        label {
            display: inline-block;
            width: 100px;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"], select {
            width: 200px;
            padding: 5px;
            border-radius: 3px;
            border: 1px solid #cccccc;
        }
        select {
            height: 30px;
        }
        input[type="submit"] {
            margin-top: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h2>Create New Lead</h2>
    <form action="SaveLead" method="post"> 
        <pre>
            <label for="firstName">First Name:</label>
            <input type="text" name="firstName" id="firstName" />
            
            <label for="lastName">Last Name:</label>
            <input type="text" name="lastName" id="lastName" />
            
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" />
            
            <label for="mobile">Mobile:</label>
            <input type="text" name="mobile" id="mobile" />
            
            <label for="source">Source:</label>
            <select name="source" id="source">
                <option value="Radio">Radio</option>
                <option value="News Paper">News Paper</option>
                <option value="Trade Show">Trade Show</option>
                <option value="Website">Website</option>
            </select>
            
            <input type="submit" value="Save" />
        </pre>
    </form>
</body>
</html>
