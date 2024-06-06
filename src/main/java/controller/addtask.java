package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.taskDao;
import dao.userDao;
import dto.TaskDto;
import dto.userDto;


@WebServlet("/addtask")
public class addtask extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int taskId=Integer.parseInt(req.getParameter("taskid"));
	String taskDes=req.getParameter("taskdescription");
	String priority=req.getParameter("taskpriority");
	String date=req.getParameter("taskduedate");
	userDto u=(userDto)req.getSession().getAttribute("user");
	TaskDto task=new TaskDto(taskId,taskDes,priority,date,u.getuserId());
	taskDao dao=new taskDao();
	try {
		dao.savetask(task);
		resp.sendRedirect("home.jsp");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
//	req.getRequestDispatcher("home.jsp").forward(req, resp);
	
	
	
	
}
}
