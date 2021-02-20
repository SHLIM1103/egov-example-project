package com.example.demo.adm.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface ManagerMapper {

	public int deleteManager(Manager manager);

	public int register(Manager manager);

	public List<Manager> getList();

	public void updateManager(Manager manager);


	public Manager selectManger(Manager manager);
	// url getJson // JSOn. String - request.
	public Manager detailManger(Manager manager);

}
