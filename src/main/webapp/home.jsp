<%@page import="java.util.List"%>
<%@page import="dto.TaskDto"%>
<%@page import="dao.taskDao"%>
<%@page import="dto.userDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task Management Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        background-image:url("https://cdn.pixabay.com/photo/2014/11/21/03/24/mountains-540115_1280.jpg");
        background-repeat:no-repeat;
        background-size:cover;
    }
    .container {
        max-width: 800px;
        width: 100%;
        background: cyan;
        opacity:0.4;
        padding: 20px;
        margin: 20px 0;
        box-shadow: 0 0 10px rgba(0,0,0,0.9);
        border-radius: 8px;
        margin-top:130px;
    }
    h2 {
        text-align: center;
    }
    a {
        display: inline-block;
        margin: 10px 0;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
    a:hover {
        background-color: #45a049;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #fff;
        
    }
    @media (max-width: 600px) {
        th, td {
            display: block;
            text-align: right;
        }
        th, td:before {
            float: left;
            margin-right: 10px;
            font-weight: bold;
        }
        td:before {
            content: attr(data-label);
        }
        tr {
            display: block;
            margin-bottom: 10px;
        }
    }
</style>
</head>
<body>
<div class="container">
<h2>HOME PAGE</h2>

<a href="addtask.jsp">ADD TASK</a>
<% userDto u = (userDto)request.getSession().getAttribute("user"); %>
<% int userid = u.getuserId(); %>

<% 
taskDao dao = new taskDao();
List<TaskDto> tasks = dao.findalltask(userid); %>


<a href="profile.jsp">Profile</a>

<table>
<tr>
<th>ID</th>
<th>DESCRIPTION</th>
<th>PRIORITY</th>
<th>DUEDATE</th>
<th>DELETE</th>
<th>EDIT</th>
</tr>

<% for(TaskDto t : tasks){ %>
<tr>
<td data-label="ID"><%= t.gettaskId() %></td>
<td data-label="Description"><%= t.gettaskDescription() %></td>
<td data-label="Priority"><%= t.gettaskPriority() %></td>
<td data-label="Due Date"><%= t.gettaskDuedate() %></td>
<td data-label="Delete"><a href="delete?taskid=<%= t.gettaskId() %>">delete</a></td>
<td data-label="Edit"><a href="edit?taskid=<%= t.gettaskId() %>">edit</a></td>
</tr>
<% } %>

</table>
<a href="logout">LOGOUT</a>
</div>
</body>
</html>
