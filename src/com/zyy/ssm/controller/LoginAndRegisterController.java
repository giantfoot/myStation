package com.zyy.ssm.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;










import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.Servlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

















import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import uploadUtil.UploadUtil;

import com.zyy.ssm.exception.CustomException;
import com.zyy.ssm.po.Item;
import com.zyy.ssm.po.User;
import com.zyy.ssm.service.ItemService;
import com.zyy.ssm.service.UserService;

import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import sun.misc.BASE64Decoder;













import com.zyy.ssm.service.impl.ItemServiceImpl;



import verifycodeutil.VerifyCodeUtils;

@RequestMapping("/user")
@Controller
public class LoginAndRegisterController {
	@Autowired
	private ItemService itemServiceImpl;
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
		response.flushBuffer();
	}
	@RequestMapping("/checkUser")
	public void checkUser(@RequestBody User user,HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException{
		
		if(user != null){
			user = userServiceImpl.findUser(user);
		}
		
		if(user != null){
			if(user.getState() == 1){
				
				response.getWriter().write("success");
				
				
			}else{
				response.getWriter().write("error2");
			}
		}else{
			response.getWriter().write("error1");
		}
		response.flushBuffer();
		
		
	}
	@RequestMapping("/loginSuccess")
	public void loginSuccess(HttpServletResponse response,HttpServletRequest request,HttpSession session) throws CustomException{
		String username = request.getParameter("username");
		
		User user = new User();
		user.setUsername(username);
		
		user = userServiceImpl.findUserByUsername(user);
		session.setAttribute("user", user);
		
			try {
				
				response.sendRedirect("http://www.ybcome.com");
				
				
			} catch (Exception e) {
				
				throw new CustomException("登录失败!");
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
	 * @throws IOException 
	 * @throws CustomException **/
	@RequestMapping("/register")
	public void register(@RequestBody User user,HttpServletResponse response) throws IOException, CustomException {
		
			try{
			userServiceImpl.processRegister(user, user.getEmail());
			response.getWriter().write("success");
			}catch(Exception e){
				response.getWriter().write("error");
				throw new CustomException("注册异常");
			}
			response.flushBuffer();
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
		response.flushBuffer();
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
	            	mav.addObject("errorMsg", e.getMessage());
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
	@RequestMapping("/upload")
	public void upload(@RequestParam String filPath,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IllegalStateException, IOException{
		/*if(header != null && header.getOriginalFilename() != null && header.getOriginalFilename().length()>0){
			String originalFilename = header.getOriginalFilename();
			String uuid = StringUtils.replace(UUID.randomUUID().toString(), "-", "");
			String fileName = uuid + "_" + originalFilename;
			String savePath = request.getServletContext().getRealPath("/images/userHeader");
			int hashCode = originalFilename.hashCode();
			String dir1 = Integer.toHexString(hashCode & 0xF);
			String dir2 = Integer.toHexString(hashCode>>>4 & 0xf);
			savePath = savePath + "/" + dir1 + "/" + dir2;
			String headerPath = "/images/userHeader/" + dir1 + "/" + dir2 + "/" + fileName;
			new File(savePath).mkdirs();
			File file = new File(savePath,fileName);
			header.transferTo(file);
			User user = (User) session.getAttribute("user");
			user.setHeader(headerPath);
			session.setAttribute("user", user);
			userServiceImpl.updateHeader(user.getUserid(),headerPath);
			response.sendRedirect(request.getContextPath()+"/index.jsp");
			
		}*/
	/*	String header = request.getParameter("header");
		User user = (User) session.getAttribute("user");
		userServiceImpl.updateHeader(user.getUserid(),header);*/
		
		
		
	}
	@RequestMapping("/search")
	public String search(@RequestParam String searchName,HttpServletRequest request){
		List<Item> items = itemServiceImpl.searchItems(searchName);
		if(items.size() > 0){
			request.setAttribute("items", items);
			return "itemList";
		}else{
			List<Item> itemList = itemServiceImpl.searchItemsByTab("zztj");
			request.setAttribute("searchName", searchName);
			request.setAttribute("items", itemList);
			return "noResults";
		}
		
	}
	@RequestMapping("/contentFrame")
	public String contentFrame(String itemename,HttpServletRequest request){
		
			Item item = itemServiceImpl.findItemsByEname(itemename);
			if(item != null){
				request.setAttribute("item",item);
				return "contentFrame";
			}else{
				List<Item> itemList = itemServiceImpl.searchItemsByTab("zztj");
				request.setAttribute("item", item);
				request.setAttribute("items", itemList);
				return "noResults";
			}
		
		
	}
	@RequestMapping("/result")
	public String result(){
		return "result";
	}
	@RequestMapping("/navSubject")
	public String navSubject(@RequestParam String itemtab,HttpServletRequest request){
		List<Item> items = itemServiceImpl.searchItemsByTab(itemtab);
		if(items.size() > 0){
			if("syxf".equals(itemtab)){
				items.get(0).setItemtab("四月新番");
			}else if("zztj".equals(itemtab)){
				items.get(0).setItemtab("站长推荐");
			}
			request.setAttribute("items", items);
			return "navSubject";
			
			
		}
			
		return "noResults";
		
		
	}
	@RequestMapping("/navSubject1")
	public String navSubject1(@RequestParam String itemtab,HttpServletRequest request){
		List<Item> items = itemServiceImpl.searchItemsByTab(itemtab);
		if(items.size() > 0){
			if("jdhj".equals(itemtab)){
				items.get(0).setItemtab("经典合集");
			}else if("gcdm".equals(itemtab)){
				items.get(0).setItemtab("国产动漫");
			}
			request.setAttribute("items", items);
			return "navSubject1";
		
			
		}
		
		return "noResults";
		
		
	}
	@RequestMapping("/zixun")
	public String zixun(String topSubject,HttpServletRequest request){
		request.setAttribute("topSubject", topSubject);
		return "zixun";
	}
	@RequestMapping("/luntan")
	public String luntan(String topSubject,HttpServletRequest request){
		request.setAttribute("topSubject", topSubject);
		return "blank";
	}
	@RequestMapping("/zhuanqu")
	public String zhuanqu(String topSubject,HttpServletRequest request){
		request.setAttribute("topSubject", topSubject);
		return "blank";
	}
	@RequestMapping("/manhua")
	public String manhua(String topSubject,HttpServletRequest request){
		request.setAttribute("topSubject", topSubject);
		return "zixun";
	}
	@RequestMapping("/indexTransfer")
	public String indexTransfer(){
		return null;
	}
	@RequestMapping("/test")
	public String test(HttpServletRequest request){
		return "test";
	}
	
}
