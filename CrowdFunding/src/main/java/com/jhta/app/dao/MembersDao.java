package com.jhta.app.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.app.vo.MembersVo;

@Repository
public class MembersDao {
	@Autowired private SqlSession sqlSession;
	private final String NAMESPACE = "com.jhta.mybatis.MembersMapper";
	
	public int insert(MembersVo vo) {
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}
	
	public int update(MembersVo vo) {
		return sqlSession.update(NAMESPACE + ".update", vo);
	}
	
	public int delete(MembersVo vo) {
		return sqlSession.delete(NAMESPACE + ".delete", vo);
	}
	
	public MembersVo select(int mem_num) {
		return sqlSession.selectOne(NAMESPACE + ".select", mem_num);
	}
	
	public MembersVo selectById(String id) {
		return sqlSession.selectOne(NAMESPACE + ".selectById", id);
	}
	
	public MembersVo isMember(HashMap<String, String> map) {
		return sqlSession.selectOne(NAMESPACE + ".isMember", map);
	}
	
	public List<MembersVo> list(HashMap<String, Object> map) {
		// System.out.println("Dao list : " + map);
		return sqlSession.selectList(NAMESPACE + ".list", map);
	}

	public int getCount(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE + ".count", map);
	}
	
	public MembersVo prev(int mem_num) {
		return sqlSession.selectOne(NAMESPACE + ".prev", mem_num);
	}
	
	public MembersVo next(int mem_num) {
		return sqlSession.selectOne(NAMESPACE + ".next", mem_num);
	}

	// 기본 정보 설정
	public int updateBasicInfo(MembersVo vo) {
		return sqlSession.update(NAMESPACE + ".updateBasicInfo", vo);
	}
}
