package com.jhta.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".");
		return mv;
	}
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".main");
		return mv;
	}
}
