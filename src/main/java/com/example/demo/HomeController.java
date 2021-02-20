package com.example.demo;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({ "c", "adm" })
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@GetMapping("/")
	public String home(HttpSession session, HttpServletRequest request) {
		String c = request.getContextPath();
		session.setAttribute("c", c);
		// js를 쓸 수 있도록 head-home으로 가는 경로를 지정해주는
		session.setAttribute("adm", c + "/resources/adm");
		System.out.println("Check c path: " + c);
		return "home";
	}

	@GetMapping("/manage/{page1}/{page2}")
	public String transfer(@PathVariable String page1, @PathVariable String page2) {
		System.out.println("Check 2개  path: " + page1 + "/ " + page2);
		return String.format("manage:%s/%s", page1, page2);
	}
	
	@GetMapping("/manage/{page1}/{page2}/{id}")
	public String transfers(@PathVariable String page1, @PathVariable String page2, @PathVariable String id, Model model) {
		var map = new HashMap();
		System.out.println("Detail c path: " + page1 + "/ " + page2 + "/" + id);
//		map.put("message", memberMapper.?:);
		// key값으로 전달
		model.addAttribute("id", id);
		return String.format("manage2:%s/%s", page1, page2);
	}
	
	
	@GetMapping("/detail/{page1}/{id}")
	public String transferss(@PathVariable String page1, @PathVariable String id, Model model) {
		System.out.println("Check c path: " + page1 + "/"+ id);
		// key값으로 전달
		model.addAttribute("id", id);
		System.out.println(model.addAttribute("id", id));
		return String.format("manage3:%s/%s", page1, id);
	}
}