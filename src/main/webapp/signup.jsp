<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Form</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 900px;
    background-image: url('https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg'); 
    background-size: cover;
    background-position: center;
  }
  .container {
    background-color: rgba(140, 230, 200, 0.9); 
    padding: 40px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.9);
    border-radius: 12px;
    text-align: center;
    max-width: 400px;
    width: 100%;
    
  }
  h1 {
    margin-bottom: 20px;
    color: #AE3B8B;
  }
  form {
    display: flex;
    flex-direction: column;
    gap: 10px;
    color:#ff6347;
   
  }
  input[type="text"], input[type="file"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    width: 100%;
  }
  button {
    padding: 10px;
    background-color: #007BFF;
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
  }
  button:hover {
    background-color: red;
  }
  
</style>
</head>
<body>
<div class="container">
  <h1>Signup Form</h1>
  <form action="signup" method="post" enctype="multipart/form-data">
    ID: <input type="text" name="userid"><br>
    NAME: <input type="text" name="username"><br>
    EMAIL: <input type="text" name="useremail"><br>
    CONTACT: <input type="text" name="usercontact"><br>
    PASSWORD: <input type="text" name="userpassword"><br>
    IMAGE: <input type="file" name="userimage"><br>
    <button type="submit">Submit</button>
  </form>
 
</div>
</body>
</html>
