package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.userDao;
import dto.userDto;
@MultipartConfig
@WebServlet("/login")
public class userLogin extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email=req.getParameter("email");
	String password=req.getParameter("password");
	userDao dao=new userDao();
	try {
		userDto u=dao.findbyemail(email);
		if(u!=null) {
			if(u.getPassword().equals(password)) {
				HttpSession session=req.getSession();
				session.setAttribute("user", u);
				req.getRequestDispatcher("home.jsp").forward(req, resp);
				
			}
			else {
				req.setAttribute("message","incorrect password");
				req.getAttribute("login.jsp");
				
			}
			
		}else {
			req.setAttribute("message", "incorrect email");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
