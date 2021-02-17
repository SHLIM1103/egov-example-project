package com.example.demo.mem.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired MemberMapper memberMapper;
	
	public int join(Member m) {
		return memberMapper.insert(m);
	}
	public Member login(Member m) {
		return memberMapper.selectById(m);
	}
	public int modify(Member m) {
		return memberMapper.update(m);
	}
	public int withdrawal(Member m) {
		return memberMapper.delete(m);
	}
	public Member getMember(String memid) {
		return null;
	}

}
