package com.jhta.app.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.app.vo.AdministratorVo;

@Repository
public class AdministratorDao {
	@Autowired private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.jhta.mybatis.AdministratorMapper";
	
	public int insert(AdministratorVo vo) {
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}
	
	public int update(AdministratorVo vo) {
		return sqlSession.update(NAMESPACE + ".update", vo);
	}
	
	public int delete(AdministratorVo vo) {
		return sqlSession.delete(NAMESPACE + ".delete", vo);
	}
	
	public AdministratorVo select(int mem_num) {
		return sqlSession.selectOne(NAMESPACE + ".select", mem_num);
	}
	
	public AdministratorVo selectById(String id) {
		return sqlSession.selectOne(NAMESPACE + ".selectById", id);
	}
	
	public AdministratorVo isMember(HashMap<String, String> map) {
		return sqlSession.selectOne(NAMESPACE + ".isMember", map);
	}
	
	public List<AdministratorVo> list(HashMap<String, String> map) {
		return sqlSession.selectList(NAMESPACE + ".list", map);
	}
	
	public int getCount() {
		return sqlSession.selectOne(NAMESPACE + ".count");
	}
	
	public AdministratorVo prev(int mem_num) {
		return sqlSession.selectOne(NAMESPACE + ".prev", mem_num);
	}
	
	public AdministratorVo next(int mem_num) {
		return sqlSession.selectOne(NAMESPACE + ".next", mem_num);
	}
}
