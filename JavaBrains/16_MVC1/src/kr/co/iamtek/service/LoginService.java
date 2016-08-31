package kr.co.iamtek.service;

public class LoginService {
	
	public boolean authenticate (String userId, String password) {
		//dummy logic
		if (password == null || password.trim() == "") {
			return false;
		}
		return true;
	}

}
