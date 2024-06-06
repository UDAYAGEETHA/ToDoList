package dto;

public class userDto {
private int userId;
private String userName;
private String userEmail;
private long userContact;
private String password;
private byte[] userImage;

public userDto(int userId, String userName, String userEmail, long userContact, String password, byte[] userImage) 
{
	this.userId = userId;
	this.userName = userName;
	this.userEmail = userEmail;
	this.userContact = userContact;
	this.password = password;
	this.userImage = userImage;
}

public int getuserId() {
	return userId;
}


public void setuserId(int userId) {
	this.userId = userId;
}


public String getuserName() {
	return userName;
}


public void setuserName(String userName) {
	this.userName = userName;
}


public String getuserEmail() {
	return userEmail;
}


public void setuserEmail(String userEmail) {
	this.userEmail = userEmail;
}


public long getuserContact() {
	return userContact;
}


public void setuserContact(long userContact) {
	this.userContact = userContact;
}


public String getPassword() {
	return password;
}


public void setPassword(String password) {
	this.password = password;
}


public byte[] getuserImage() {
	return userImage;
}


public void setuserImage(byte[] userImage) {
	this.userImage = userImage;
}





}
