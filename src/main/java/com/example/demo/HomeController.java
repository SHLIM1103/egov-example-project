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
@SessionAttributes({"ctx"})
public class HomeController {
	@Autowired HttpSession session;
	@Autowired HttpServletRequest request;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home(HttpSession sess, HttpServletRequest req) {
		String ctx = req.getContextPath();
		sess.setAttribute("ctx", ctx);
		sess.setAttribute("cmm", ctx + "/resources/cmm");
		sess.setAttribute("prdt", ctx + "/resources/prd");
		sess.setAttribute("mem", ctx + "/resources/mem");
		sess.setAttribute("brd", ctx + "/resources/brd");
		sess.setAttribute("adm", ctx + "/resources/adm");
		logger.info("***Server Started***");
		return "index";
	}
	@GetMapping("/move/{dir}/{page}")
	public String move(@PathVariable String dir, @PathVariable String page) {
		logger.info("이동한 경로: " + dir + "/" + page);
		return String.format("move:%s/%s", dir, page);
	}
}