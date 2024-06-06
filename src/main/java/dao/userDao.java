package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.rowset.serial.SerialBlob;

import dto.userDto;

public class userDao {
public Connection getconnection() throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.cj.jdbc.Driver");
	return DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
}
//int saveuser(userdto u)
	public int saveuser(userDto u) throws ClassNotFoundException, SQLException {
	Connection con=getconnection();
	PreparedStatement pst=con.prepareStatement("insert into user values(?,?,?,?,?,?)");
	pst.setInt(1, u.getuserId());
	pst.setString(2, u.getuserName());
	pst.setString(3, u.getuserEmail());
	pst.setLong(4, u.getuserContact());
	pst.setString(5, u.getPassword());
	Blob image=new SerialBlob(u.getuserImage());
	pst.setBlob(6, image);
	
	
	return pst.executeUpdate();
	
}

//userdto findbyemail(String email)
	public userDto findbyemail(String userEmail) throws ClassNotFoundException, SQLException {
		Connection con=getconnection();
		PreparedStatement pst=con.prepareStatement("select * from user where userEmail=?");
		pst.setString(1,userEmail);	
		ResultSet rs=pst.executeQuery();
//		userDto dto=new userDto();
		while(rs.next())
		{
			userDto dto=new userDto(rs.getInt(1),rs.getString(2),rs.getString(3), rs.getLong(4), rs.getString(5), rs.getBytes(6));

			return dto;
			
		}
		
		return null;
		
	}
}
