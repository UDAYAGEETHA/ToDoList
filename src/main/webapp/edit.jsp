<%@page import="dto.TaskDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%TaskDto task=(TaskDto) request.getAttribute("task"); %>
 <form action="update" method="post">
        <label for="taskid">Task ID:</label>
        <input type="text" id="taskid" name="taskid" value=<%task.gettaskId(); %>disabled><br>
        
        <label for="taskdescription">Task Description:</label>
        <input type="text" id="taskdescription" name="taskdescription" value=<%task.gettaskDescription(); %>><br>
        current task priority:<h4><%task.gettaskPriority(); %></h4>
        <label>Priority:</label><br>
        <input type="radio" id="low" name="taskpriority" value="low">
        <label for="low">Low</label><br>
        
        <input type="radio" id="high" name="taskpriority" value="high">
        <label for="high">High</label><br>
        
        <label for="taskduedate">Due Date:</label>
        <input type="date" id="taskduedate" name="taskduedate" value=<%task.gettaskDuedate(); %>><br>
        
        <button type="submit">Submit</button>
    </form>
</body>
</html>