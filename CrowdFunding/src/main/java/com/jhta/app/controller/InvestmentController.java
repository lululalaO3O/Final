package com.jhta.app.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InvestmentController {
	@Autowired
	SqlSession sqlSession;

	// 신청 메인페이지 이동
	@RequestMapping(value = "/investment/application_main", method = RequestMethod.GET)
	public ModelAndView adminForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".investment.application_main");
		return mv;
	}

	// 신청 가이드 페이지 이동
	@RequestMapping(value = "/investment/investment_guide", method = RequestMethod.GET)
	public ModelAndView guideForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".investment.investment_guide");
		return mv;
	}
}
