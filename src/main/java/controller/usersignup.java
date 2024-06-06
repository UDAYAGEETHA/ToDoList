package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.userDao;
import dto.userDto;

@WebServlet("/signup")
@MultipartConfig
public class usersignup extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("userid"));
	String name=req.getParameter("username");
	String email=req.getParameter("useremail");
	long contact=Long.parseLong(req.getParameter("usercontact"));
	String password=req.getParameter("userpassword");
	Part image=req.getPart("userimage");
	byte[] imagebyte=image.getInputStream().readAllBytes();
	userDto u=new userDto(id,name,email,contact,password,imagebyte);
	userDao ud=new userDao();
	
		try {
			ud.saveuser(u);
			resp.sendRedirect("login.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	
	
}
}
