package com.jhta.app.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.app.dao.MembersDao;
import com.jhta.app.vo.MembersVo;

@Service
public class MembersService {
	@Autowired private MembersDao membersDao;
	
	public int insert(MembersVo vo) {
		return membersDao.insert(vo);
	}
	
	public int update(MembersVo vo) {
		return membersDao.update(vo);
	}
	
	public int delete(MembersVo vo) {
		return membersDao.delete(vo);
	}
	
	public MembersVo select(int mem_num) {
		return membersDao.select(mem_num);
	}
	
	public MembersVo selectById(String id) {
		return membersDao.selectById(id);
	}
	
	public boolean isMember(HashMap<String, String> map) {
		MembersVo vo = membersDao.isMember(map);
		
		if(vo != null) {
			return true;
		} else {
			return false;
		}
	}
	
	public List<MembersVo> list(HashMap<String, Object> map) {
		return membersDao.list(map);
	}

	public int getCount(HashMap<String, Object> map) {
		return membersDao.getCount(map);
	}
	
	public MembersVo prev(int mem_num) {
		return membersDao.prev(mem_num);
	}
	
	public MembersVo next(int mem_num) {
		return membersDao.next(mem_num);
	}

	// 기본 정보 설정
	public int updateBasicInfo(MembersVo vo) {
		return membersDao.updateBasicInfo(vo);
	}
}
