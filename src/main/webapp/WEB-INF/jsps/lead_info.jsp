<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Lead info</title>
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

        /* Additional CSS styles for the lead details section */
        .lead-details {
            background-color: #fff;
            padding: 20px;
            margin-top: 50px;
            max-width: 400px;
            margin-left: auto;
            margin-right: auto;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .lead-details h2 {
            margin-top: 0;
        }

        .lead-details p {
            margin: 10px 0;
        }

        .lead-details form {
            margin-top: 20px;
        }

        .lead-details input[type="submit"] {
            background-color: #337ab7;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .lead-details input[type="submit"]:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
<div class="lead-details">
    <h2>Lead Details</h2>
    <p>First Name: ${lead.firstName}</p>
    <p>Last Name: ${lead.lastName}</p>
    <p>Email: ${lead.email}</p>
    <p>Mobile: ${lead.mobile}</p>
    <p>Source: ${lead.source}</p>

    <form action="sendEmail" method="post">
        <input type="hidden" name="email" value="${lead.email}"/>
        <input type="submit" value="Send Email"/>
    </form>

    <form action="convertLead" method="post">
        <input type="hidden" name="id" value="${lead.id}"/>
        <input type="submit" value="Convert"/>
    </form>

</div>
</body>
</html>