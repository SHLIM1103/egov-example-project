package com.example.demo.mem.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.mem.service.Member;
import com.example.demo.mem.service.MemberMapper;
import com.example.demo.mem.service.MemberService;

@RestController
@RequestMapping("/members")
public class MemberController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired MemberMapper memberMapper;
	@Autowired MemberService memberService;
	
	@PostMapping("/join")
	public Map<?,?> join(@RequestBody Member m) {
		var map = new HashMap<>();
        map.put("message", (memberService.join(m) == 1) ? "SUCCESS" : "FAILURE");
		return map;
	}
	
	@PostMapping("/login")
	public Map<?,?> login(@RequestBody Member m){
		var map = new HashMap<>();
        Member result = memberService.login(m);
        map.put("message", result != null ? "SUCCESS" : "FAILURE");
        map.put("sessionMember", result);
		logger.info("로그인: "+ m.toString());
        return map;
	}
	
	@GetMapping("/list")
	public List<Member> list() {
		return memberMapper.selectAll();
	}
	
	@PutMapping("/modify")
	public Map<?,?> modify(@RequestBody Member m){
		var map = new HashMap<>();
		map.put("message", (memberService.modify(m) == 1? "SUCCESS" : "FAILURE"));
		logger.info("수정한 회원정보: "+ m.toString());
		return map;
	}
	
	@DeleteMapping("/withdrawal")
	public Map<?,?> withdrawal(@RequestBody Member m){
		var map = new HashMap<>();
		logger.info("탈퇴한 회원: "+ m.toString());
		map.put("message", (memberService.withdrawal(m) == 1? "SUCCESS" : "FAILURE"));
		return map;
	}
}
