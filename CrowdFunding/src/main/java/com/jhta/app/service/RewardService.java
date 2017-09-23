package com.jhta.app.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.app.dao.RewardDao;
import com.jhta.app.vo.RewardVo;

@Service
public class RewardService {
	@Autowired private RewardDao rewardDao;
	
	public int insert(RewardVo vo) {
		return rewardDao.insert(vo);
	}
	
	public int update(RewardVo vo) {
		return rewardDao.update(vo);
	}
	
	public int delete(RewardVo vo) {
		return rewardDao.delete(vo);
	}
	
	public RewardVo select(int rew_num) {
		return rewardDao.select(rew_num);
	}

	public List<RewardVo> list(HashMap<String, Object> map) {
		return rewardDao.list(map);
	}
	
	public int getCount(HashMap<String, Object> map) {
		return rewardDao.getCount(map);
	}
	
	public RewardVo prev(int rew_num) {
		return rewardDao.prev(rew_num);
	}
	
	public RewardVo next(int rew_num) {
		return rewardDao.next(rew_num);
	}
}
