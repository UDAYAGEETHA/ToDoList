package dto;
public class TaskDto {
private int taskId;
private String taskDescription;
private String taskPriority;
private String taskDuedate;
private int userId;


public int gettaskId() {
	return taskId;
}
public void settaskId(int taskId) {
	this.taskId = taskId;
}
public String gettaskDescription() {
	return taskDescription;
}
public void settaskDescription(String taskDescription) {
	this.taskDescription = taskDescription;
}
public String gettaskPriority() {
	return taskPriority;
}
public void settaskPriority(String taskPriority) {
	this.taskPriority = taskPriority;
}
public String gettaskDuedate() {
	return taskDuedate;
}
public void settaskDuedate(String taskDuedate) {
	this.taskDuedate = taskDuedate;
}
public int getuserId() {
	return userId;
}
public void setuserId(int userId) {
	this.userId = userId;
}
public TaskDto(int taskId, String taskDescription, String taskPriority, String taskDuedate, int userId) {
	
	this.taskId = taskId;
	this.taskDescription = taskDescription;
	this.taskPriority = taskPriority;
	this.taskDuedate = taskDuedate;
	this.userId = userId;
}







}
