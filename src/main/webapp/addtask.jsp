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
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-image:url("https://cdn.pixabay.com/photo/2022/12/08/20/34/blackout-7644060_1280.jpg");
      background-repeat:no-repeat;
      background-size:cover;
    }
    h2{
    color:maroon;
    }
    .form-container {
      
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.9);
        width: 100%;
        max-width: 400px;
         background-color:violet;
         
         opacity:0.7;
    }
    .form-container h2 {
        margin-top: 0;
        text-align: center;
    }
    .form-container input[type="text"],
    .form-container input[type="date"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .form-container input[type="radio"] {
        margin-right: 5px;
    }
    .form-container button {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .form-container button:hover {
        background-color: red;
    }
   
</style>
</head>
<body>

<div class="form-container w3-card">
    <h2>Add Task</h2>
    <form action="addtask" method="post">
        <label for="taskid">Task ID:</label>
        <input type="text" id="taskid" name="taskid" required><br>
        
        <label for="taskdescription">Task Description:</label>
        <input type="text" id="taskdescription" name="taskdescription" required><br>
        
        <label>Priority:</label><br>
        <input type="radio" id="low" name="taskpriority" value="low">
        <label for="low">Low</label><br>
        
        <input type="radio" id="high" name="taskpriority" value="high">
        <label for="high">High</label><br>
        
        <label for="taskduedate">Due Date:</label>
        <input type="date" id="taskduedate" name="taskduedate" required><br>
        
        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
