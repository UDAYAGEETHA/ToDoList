<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Responsive Login Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        color:blue;
        background-repeat:no-repeat;
        background-size:cover;
        background-image:url("https://cdn.pixabay.com/photo/2016/11/02/06/17/beach-1790701_1280.jpg");
    }
    .container {
        background-color: pink;
        opacity:0.6;
        padding: 50px;
        box-shadow: 0 0 10px rgba(0,0,0,0.9);
        border-radius: 10px;
        width: 100%;
        max-width: 400px;
      
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color:blue;
        
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    button {
        width: 100%;
        padding: 10px;
        margin-top:30px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: red;
    }
    .message {
        color: red;
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
<div class="container">
    <h2>LOGIN</h2>
    <form action="login" method="post">
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <button type="submit">Submit</button>
    </form>
    <div class="message">
        <% String msg = (String) request.getAttribute("message"); %>
        <% if (msg != null) { %>
            <%= msg %>
        <% } %>
    </div>
</div>
</body>
</html>
