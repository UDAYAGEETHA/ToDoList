<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-image: url('https://cdn.pixabay.com/photo/2020/08/29/09/26/beach-5526592_1280.jpg'); 
    background-size: cover;
    background-position: center;
    
  }
  .container {
  
    background-color: rgba(120, 219, 200, 0.3); 
    padding: 40px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.9);
    border-radius: 12px;
    text-align: center;
    max-width: 400px;
    width: 100%;
    height:100px;
    
   
  }
  h1 {
    margin-bottom: 20px;
    color: #007BFF;
  }
  form {
    margin-top: 20px;
  }
  a {
    text-decoration: none;
    color: deeppink;
    font-weight: bold;
    margin: 0 15px;
    padding: 10px 20px;
   
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
  }
  a:hover {
    background-color: #007BFF;
    color: violet;
    opacity:0.6;
  }

</style>
</head>
<body>
<div class="container">
  
  <form action="" method="post">
    <a href="login.jsp">LOGIN</a>
    <a href="signup.jsp">SIGNUP</a>
  </form>
 
</div>
</body>
</html>
