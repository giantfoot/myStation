package com.zyy.ssm.controller;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

@SuppressWarnings("serial")  
public class ProxyServlet extends HttpServlet {  
  
    @Override  
    public void service(ServletRequest req, ServletResponse res)  
            throws ServletException, IOException {  
        proxyServlet.service(req, res);  
    }    
    @Override  
    public void init() throws ServletException {  
        this.targetBean = getServletName();  
        getServletBean();  
        proxyServlet.init(getServletConfig());  
    }  
  
    private String targetBean;  
      
    private Servlet proxyServlet;  
      
    private void getServletBean(){  
				WebApplicationContext wac = WebApplicationContextUtils  
                .getRequiredWebApplicationContext(getServletContext());  
        this.proxyServlet = (Servlet) wac.getBean(targetBean);  
    }  
}  

