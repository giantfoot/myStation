package com.zyy.ssm.service;

import com.zyy.ssm.po.User;



public interface UserService {
	public User findUser(User user);
	public void insertUser(User user);
	public User findUserByUsername(User user);
	public User findUserByEmail(String email);
	public void processRegister(User user,String email);
	public void processActivate(String email , String validateCode) throws Exception;
	public void updateHeader(Integer userid, String headerPath);
	
}
