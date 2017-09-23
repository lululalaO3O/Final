package com.jhta.app.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.app.vo.RewardVo;

@Repository
public class RewardDao {
	@Autowired private SqlSession sqlSession;
	private final String NAMESPACE = "com.jhta.mybatis.RewardMapper";
	
	public int insert(RewardVo vo) {
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}
	
	public int update(RewardVo vo) {
		return sqlSession.update(NAMESPACE + ".update", vo);
	}
	
	public int delete(RewardVo vo) {
		return sqlSession.delete(NAMESPACE + ".delete", vo);
	}
	
	public RewardVo select(int rew_num) {
		return sqlSession.selectOne(NAMESPACE + ".select", rew_num);
	}
	
	public List<RewardVo> list(HashMap<String, Object> map) {
		return sqlSession.selectList(NAMESPACE + ".list", map);
	}
	
	public int getCount(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE + ".count", map);
	}
	
	public RewardVo prev(int rew_num) {
		return sqlSession.selectOne(NAMESPACE + ".prev", rew_num);
	}
	
	public RewardVo next(int rew_num) {
		return sqlSession.selectOne(NAMESPACE + ".next", rew_num);
	}
}
