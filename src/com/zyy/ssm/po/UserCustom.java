package com.zyy.ssm.po;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

public class UserCustom extends User implements Serializable{
	/**
	 * 
	 */
	
	public Date lastActivateTime;
	public Date getLastActivateTime() {
		Calendar cl = Calendar.getInstance();  
		cl.setTime(this.getRegistertime());  
		cl.add(Calendar.DATE , 2);  
		return cl.getTime();  

	}
	public void setLastActivateTime(Date lastActivateTime) {
		this.lastActivateTime = lastActivateTime;
	}
	public UserCustom(){
		
	}
	
	
	
}
