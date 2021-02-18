package com.example.demo.mem.service;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface MemberMapper {

	public int insert(Member m);
	public List<Member> selectAll();
	public Member selectById(Member m);
	public int update(Member m);
	public int delete(Member m);
}
