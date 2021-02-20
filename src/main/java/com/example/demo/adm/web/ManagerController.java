package com.example.demo.adm.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.adm.service.Manager;
import com.example.demo.adm.service.ManagerMapper;

@RequestMapping(value = { "/managers" })
@RestController
public class ManagerController {

	@Autowired
	Manager manager;
	@Autowired
	ManagerMapper managerMapper;

	// 회원등록
	@PostMapping("/register")
	public Map<?, ?> register(@RequestBody Manager manager) {
		System.out.println("rest controller");
		System.out.println("Manager Register");
		var map = new HashMap<>();
		map.put("message", managerMapper.register(manager) == 1 ? "SUCCESS" : "FAILURE");
		return map;
	}

	@PutMapping("/update")
	public void updateManager(@RequestBody Manager manager) {
		System.out.println("Manager update!");
		managerMapper.updateManager(manager);
	}

	@DeleteMapping("/delete")
	public Map<?, ?> deleteManager(@RequestBody Manager manager) {
		var map = new HashMap<>();
		map.put("messeage", (managerMapper.deleteManager(manager) == 1) ? "SUCCESS" : "FAILURE");
		System.out.println("Manager delete:");
		return map;
	}

	@GetMapping("/detail/{id}")
	public Map<?, ?> detail(@PathVariable String id) {
		var map = new HashMap<>();
		Manager manager = new Manager();
		manager.setId(id);
		map.put("manager", (managerMapper.detailManger(manager)));
		System.out.println("Manager detail");
		return map;
	}

//	@GetMapping("/{page}")
//	public Manager detailManager(@PathVariable String page) {
//		System.out.println("Page: " + page);
//		return managerMapper.detailManger(page);
//	}

	@PostMapping("/selectById")
	public Manager selectById(@RequestBody Manager manager) {
		System.out.println("manager: " + manager.toString());
		return managerMapper.selectManger(manager);
	}

	@GetMapping("/list")
	public List<Manager> listManager() {
		System.out.println("tttttt");
		return managerMapper.getList();
	}

}
