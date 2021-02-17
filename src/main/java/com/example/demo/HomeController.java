package com.example.demo;

import javax.servlet.http.HttpServletRequest;    
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"ctx","board","login"})
public class HomeController {
	@Autowired HttpSession session;
	@Autowired HttpServletRequest request;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	 @GetMapping("/")
	    public String index(HttpSession session, HttpServletRequest request) {
	    	String ctx = request.getContextPath();
	    	session.setAttribute("ctx", ctx);
	    	session.setAttribute("board", ctx+"/resources/board");
	    	session.setAttribute("login", ctx+"/resources/login");
	    	logger.info("메인");
	        return "main";
	    }
	@GetMapping("/admin/{page}")
    public String admin(@PathVariable String page) {
		logger.info("이동: " +page);
        return String.format("admin:%s",page);
    }
	
	@GetMapping("/login/{page}")
    public String login(@PathVariable String page) {
		logger.info("로그인컨트: " +page);
        return String.format("login:%s",page);
    }
	
	
}
