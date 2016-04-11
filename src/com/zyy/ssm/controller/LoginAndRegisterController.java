package com.zyy.ssm.controller;

import java.io.IOException;









import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

















import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zyy.ssm.po.User;
import com.zyy.ssm.service.UserService;







import verifycodeutil.VerifyCodeUtils;

@RequestMapping("/user")
@Controller
public class LoginAndRegisterController {
	@Autowired
	private UserService userServiceImpl;
	
	@RequestMapping("/verifyCode")
	public void verifyCode(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setHeader("Pragma", "no-cache");  
		response.setHeader("Cache-Control", "no-cache, no-store, max-age=0");  
		response.setDateHeader("Expires", 0);  
		response.setContentType("image/jpeg");  
		String verifyCode = VerifyCodeUtils.generateVerifyCode(4);  
		//存入会话session  
		HttpSession session = request.getSession(true);  
		session.setAttribute("verifyCode", verifyCode);  
		//生成图片  
		int w = 90, h = 40;  
		VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);  
		

	}
	@RequestMapping("/checkVerifyCode")
	public void checkVerifyCode(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException{
		String code = request.getParameter("code");
		String verifyCode = (String) session.getAttribute("verifyCode");
	
		if(StringUtils.isNotBlank(verifyCode) && StringUtils.isNotBlank(code) && verifyCode.equalsIgnoreCase(code)){
				response.getWriter().write("success");
			
		}else{
			response.getWriter().write("error");
			
		}
		
	}
	@RequestMapping("/checkUser")
	public void checkUser(@RequestBody User user,HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException{
		User userFind = null;
		if(user != null){
			userFind = userServiceImpl.findUser(user);
		}
		if(userFind != null){
			session.setAttribute("user", userFind);
			response.getWriter().write("success");
		}else{
			response.getWriter().write("error");
		}
	}
	@RequestMapping("/loginSuccess")
	public void loginSuccess(HttpServletResponse response,HttpServletRequest request){
		try {
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		} catch (IOException e) {
			
			throw new RuntimeException(e);
		}
	}
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	@RequestMapping("/logout")
	public void logout(HttpServletResponse response,HttpSession session,HttpServletRequest request) throws IOException{
		session.invalidate();
		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}
	/*** register
	 * @throws IOException **/
	@RequestMapping("/register")
	public void register(@RequestBody User user,HttpServletResponse response) throws IOException{
		
		
			userServiceImpl.processRegister(user, user.getEmail());
			response.getWriter().write("success");
		
	}
	@RequestMapping("/toRegister")
	public String toRegister(){
		return "register";
	}
	@RequestMapping("/checkUsername")
	public void checkUsername(@RequestBody User user,HttpServletResponse response) throws IOException{
		User userFind = null;
		if(user != null){
			userFind = userServiceImpl.findUserByUsername(user);
		}
		if(userFind != null){
			response.getWriter().write("error");
		}else{
			response.getWriter().write("success");
		}
	}
	@RequestMapping("/validateEmail")
	public void validateEmail(@RequestParam(required=true) String email,HttpServletResponse response){
		
		User user = userServiceImpl.findUserByEmail(email);
		
		if(user != null){
			try {
				response.getWriter().write("error");
			} catch (IOException e) {
				throw new RuntimeException(e);
			}
		}
	}
	@RequestMapping("/activate")
	public ModelAndView activate(HttpServletRequest request){
		 ModelAndView mav=new ModelAndView();
		 String action = request.getParameter("action");
		 if("activate".equals(action)) {
	            //激活
	            String email = request.getParameter("email");//获取email
	            String validateCode = request.getParameter("validateCode");//激活码
	            try {
	                userServiceImpl.processActivate(email, validateCode);//调用激活方法
	                mav.addObject("activateMsg", "success");
	                mav.setViewName("activate");
	            } catch (Exception e) {
	            	mav.addObject("activateMsg", "error");
	                mav.setViewName("activate");
	            }

	        }
		 return mav;
	}
	@RequestMapping("/message")
	public String message(){
		return "activate";
	}
	@RequestMapping("/uploadHeader")
	public String uploadHeader(){
		return "uploadHeader";
	}
	@RequestMapping("/test")
	public String test(){
		return "test";
	}
}
