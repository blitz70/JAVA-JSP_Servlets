package kr.co.iamtek.service;

import java.util.HashMap;

import kr.co.iamtek.dto.User;

public class LoginService {
	
	HashMap<String, String> users = new HashMap<String, String>();
	
	public LoginService() {
		//dummy user data instead of DB
		users.put("johndoe", "John Doe");
		users.put("janedoe", "Jane Doe");
		users.put("jguru", "Java Guru");
	}
	
	public boolean authenticate (String userId, String password) {
		//dummy logic
		if (password == null || password.trim() == "") {
			return false;
		}
		return true;
	}
	
	public User getUserName(String userId) {
		//model = user object
		User user = new User();
		user.setUserName(users.get(userId));
		user.setUserId(userId);
		return user;
	}

}
