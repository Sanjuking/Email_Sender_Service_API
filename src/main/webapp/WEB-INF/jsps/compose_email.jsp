<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Compose</title>
    <style>
        body {
            background-image: url("background-image.jpg"); /* Set the background image */
            background-size: cover; /* Adjust the background image size */
            font-family: Arial, sans-serif; /* Set the font family */
            color: #333; /* Set the default text color */
        }

        h2 {
            color: #333; /* Set the heading color */
        }

        /* Additional CSS styles for the email composition form */
        .email-form {
            background-color: #fff;
            padding: 20px;
            margin-top: 50px;
            max-width: 400px;
            margin-left: auto;
            margin-right: auto;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .email-form h2 {
            margin-top: 0;
        }

        .email-form input[type="text"],
        .email-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-family: Arial, sans-serif; /* Set the font family for input and textarea */
            font-size: 14px; /* Set the font size for input and textarea */
        }

        .email-form textarea {
            height: 200px;
        }

        .email-form input[type="submit"] {
            background-color: #337ab7;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-family: Arial, sans-serif; /* Set the font family for submit button */
            font-size: 14px; /* Set the font size for submit button */
        }

        .email-form input[type="submit"]:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
<div class="email-form">
    <h2>Compose</h2>
    <form action="triggerEmail" method="post">
        <pre>
            To:     <input type="text" name="email" value="${email}"/>
            Subject: <input type="text" name="subject" />
            Message:
            <textarea name="content" rows="10" cols="50"></textarea>
            <input type="submit" value="Send"/>
        </pre>
    </form>
    ${msg}
</div>
</body>
</html>
