package com.jhta.app.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.app.vo.InterestcategoryVo;
import com.jhta.app.vo.ProCategoryVo;
import com.jhta.app.vo.ProjectVo;

@Repository
public class ProjectDao {
	@Autowired private SqlSession sqlSession;
	private final String NAMESPACE = "com.jhta.mybatis.ProjectMapper";
	
	public int insert(ProjectVo vo) {
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}
	public List<InterestcategoryVo> interestSelect(){
		return sqlSession.selectList(NAMESPACE+".interestSelect");
	}
	public List<ProCategoryVo> proCategory(){
		return sqlSession.selectList(NAMESPACE+".proCategorySelect");
	}
}
