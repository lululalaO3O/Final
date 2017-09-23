package com.jhta.app.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.app.dao.ProjectDao;
import com.jhta.app.vo.InterestcategoryVo;
import com.jhta.app.vo.ProCategoryVo;
import com.jhta.app.vo.ProjectVo;

@Service
public class ProjectService {
	@Autowired private ProjectDao projectDao;
	
	public int insert(ProjectVo vo) {
		return projectDao.insert(vo);
	}
	public List<InterestcategoryVo> interestSelect(){
		return projectDao.interestSelect();
	}
	public List<ProCategoryVo> proCategory(){
		return projectDao.proCategory();
	}
}
