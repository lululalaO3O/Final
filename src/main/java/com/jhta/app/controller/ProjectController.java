package com.jhta.app.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.app.dao.ProjectDao;
import com.jhta.app.service.ProjectService;
import com.jhta.app.vo.InterestcategoryVo;
import com.jhta.app.vo.ProCategoryVo;

@Controller
public class ProjectController {
	@Autowired private ProjectService projectService;
	
	@RequestMapping(value="/project/insert", method=RequestMethod.GET)
	public ModelAndView insertForm() {
		ModelAndView mv = new ModelAndView();
		List<InterestcategoryVo> Interestlist = projectService.interestSelect();
		List<ProCategoryVo> proCategorylist = projectService.proCategory();
		mv.addObject("Interestlist",Interestlist);
		mv.addObject("proCategorylist",proCategorylist);
		mv.setViewName(".project.insert");
		return mv;
	}
}
