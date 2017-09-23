package com.jhta.app.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.app.dao.AdministratorDao;
import com.jhta.app.vo.AdministratorVo;


@Service
public class AdminService {
@Autowired private AdministratorDao administratorDao;
	
	public int insert(AdministratorVo vo) {
		return administratorDao.insert(vo);
	}
	
	public int update(AdministratorVo vo) {
		return administratorDao.update(vo);
	}
	
	public int delete(AdministratorVo vo) {
		return administratorDao.delete(vo);
	}
	
	public AdministratorVo select(int mem_num) {
		return administratorDao.select(mem_num);
	}
	
	public AdministratorVo selectById(String id) {
		return administratorDao.selectById(id);
	}
	
	public boolean isMember(HashMap<String, String> map) {
		AdministratorVo vo = administratorDao.isMember(map);
		
		if(vo != null) {
			return true;
		} else {
			return false;
		}
	}
	
	public List<AdministratorVo> list(HashMap<String, String> map) {
		return administratorDao.list(map);
	}
	
	public int getCount() {
		return administratorDao.getCount();
	}
	
	public AdministratorVo prev(int mem_num) {
		return administratorDao.prev(mem_num);
	}
	
	public AdministratorVo next(int mem_num) {
		return administratorDao.next(mem_num);
	}
}
