package com.zyy.ssm.service.impl;




import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;















import MD5Utils.MD5Util;
import MailUtils.MailUtil;

import com.zyy.ssm.exception.CustomException;
import com.zyy.ssm.mapper.UserMapper;
import com.zyy.ssm.mapper.UserMapperCustom;
import com.zyy.ssm.po.User;
import com.zyy.ssm.service.UserService;

public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapperCustom userMapperCustom;
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findUser(User user) {
		User userFind = userMapperCustom.findUserByUsernameAndPassword(user);
		
		return userFind;
	}

	@Override
	public void insertUser(User user) {
		userMapper.insert(user);
		
	}

	@Override
	public User findUserByUsername(User user) {
		return userMapperCustom.findUserByUsername(user);
		
	}

	@Override
	public User findUserByEmail(String email) {
		
		return userMapperCustom.findUserByEmail(email);
	}
	@Override
	public void processRegister(User user, String email) {
		Date currentTime = new Date();
		user.setRegistertime(currentTime);
		user.setValidatecode(MD5Util.encode2hex(email));
		userMapper.insert(user);
		StringBuffer sb=new StringBuffer("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
        sb.append("<a href=\"http://www.ybcome.com/user/activate.action?action=activate&email=");
        sb.append(email); 
        sb.append("&validateCode="); 
        sb.append(user.getValidatecode());
        sb.append("\">http://www.ybcome.com/user/activate.action?action=activate&email="); 
        sb.append(email);
        sb.append("&validateCode=");
        sb.append(user.getValidatecode());
        sb.append("</a>");

        //发送邮件
        MailUtil.send(email, sb.toString());
		
	}
	
	
	 public void processActivate(String email , String validateCode) throws Exception{  
         //数据访问层，通过email获取用户信息
        User user = findUserByEmail(email);
       
        //验证用户是否存在 
        if(user!=null) {  
            //验证用户激活状态  
            if(user.getState() == 0) { 
                ///没激活
                Date currentTime = new Date();//获取当前时间  
                //验证链接是否过期 
                Calendar cl = Calendar.getInstance();  
        		cl.setTime(user.getRegistertime());  
        		cl.add(Calendar.DATE , 2);  
        		Date lastActivateTime = cl.getTime();  
               if(currentTime.before(lastActivateTime)) {  
                    //验证激活码是否正确  
                    if(validateCode.equals(user.getValidatecode())) {  
                        //激活成功， //并更新用户的激活状态，为已激活 
                        
                    	//把状态改为激活
                        
                    	userMapperCustom.updateStateByPrimaryKey(user.getUserid());
                    } else {  
                       throw new CustomException("激活码不正确");  
                    }  
                } else {  throw new CustomException("激活码已过期！");  
                }  
            } else {
            	throw new CustomException("邮箱已激活，请登录！");  
            }  
        } else {
        	throw new CustomException("该邮箱未注册（邮箱地址不存在）！"); 
        }

    
	 
	 
	 }

	@Override
	public void updateHeader(Integer userid, String headerPath) {
		User user = new User();
		user.setUserid(userid);
		user.setHeader(headerPath);
		userMapperCustom.updateHeader(user);
		
	}

}

