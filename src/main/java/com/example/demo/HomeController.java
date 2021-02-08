package com.example.demo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("/move/quiz")
	public String quiz() {
		return "uss:qna/quiz";
	}
	
	@GetMapping("/move/student")
	public String student() {
		return "uss:stu/student";
	}
	
}
