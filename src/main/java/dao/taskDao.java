package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import dto.TaskDto;
import dto.userDto;

public class taskDao {
 public Connection getconnection() throws ClassNotFoundException, SQLException {
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 return DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
 }
 
 //int savetask(task dto)
 
	//int saveuser(userdto u)
		public int savetask(TaskDto t) throws ClassNotFoundException, SQLException {
		Connection con=getconnection();
		PreparedStatement pst=con.prepareStatement("insert into task values(?,?,?,?,?)");
		pst.setInt(1, t.gettaskId());
		pst.setString(2, t.gettaskDescription());
		pst.setString(3, t.gettaskPriority());
		Date taskdate=Date.valueOf(t.gettaskDuedate());
		
		pst.setDate(4,taskdate);
		pst.setInt(5, t.getuserId());
	
		
		
		return pst.executeUpdate();
		
	}
 //int updatetask(task dto)
		public int updatetask(TaskDto td) throws ClassNotFoundException, SQLException {
				Connection con=getconnection();
				PreparedStatement pst=con.prepareStatement("update task set taskDescription=?,taskPriority=?,taskDuedate=?,userId=? where taskId=?");
				pst.setInt(1, td.gettaskId());
				pst.setString(2, td.gettaskDescription());
				pst.setString(3, td.gettaskPriority());
				Date taskdate=Date.valueOf(td.gettaskDuedate());
				
				pst.setDate(4,taskdate);
				pst.setInt(5, td.getuserId());
			
				
				return pst.executeUpdate();
		}
				
		
		
		
		
		
		
		
		
		
 //int findbyid(int taskId)
		public TaskDto findbyId(int taskId) throws ClassNotFoundException, SQLException {
			
			Connection con=getconnection();
			PreparedStatement pst=con.prepareStatement("select * from task where taskId=?");
			pst.setInt(1,taskId);	
			ResultSet rs=pst.executeQuery();
			
			if(rs.next())
			{
				TaskDto Task=new TaskDto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));
				return Task;
			}
			
			return null;
			
		}
		
		public int deletetask(int taskid) throws ClassNotFoundException, SQLException {
			
			Connection con=getconnection();
			PreparedStatement pst=con.prepareStatement("delete from task where taskid=?");
			pst.setInt(1, taskid);
			
			
			
			
			return pst.executeUpdate();
			
		}
		
 //list<task> findalltask(int userId);
		public List<TaskDto> findalltask(int userId) throws ClassNotFoundException, SQLException
		{
			Connection con=getconnection();
			List<TaskDto> task=new ArrayList();
			PreparedStatement pst=con.prepareStatement("select * from task where userId=?");
			pst.setInt(1,userId);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				TaskDto Task=new TaskDto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));

				
				
				task.add(Task);
			
				
				
			}
		
			return task;
			
			
			
		}
		
 
}
