package com.jhta.app.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.app.service.RewardService;
import com.jhta.app.vo.RewardVo;
import com.jhta.util.page.PageUtil;

@Controller
public class RewardController {
	@Autowired private RewardService rewardService;
	
	@RequestMapping(value="/reward/insert", method=RequestMethod.GET)
	public ModelAndView insertForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".reward.insert");
		return mv;
	}
	
	@RequestMapping(value="/reward/insert", method=RequestMethod.POST)
	public ModelAndView insert(RewardVo vo) {
		ModelAndView mv = new ModelAndView();
		
		int n = rewardService.insert(vo);
		
		try {
			if(n > 0) {
				mv.addObject("code", "success");
			} else {
				mv.addObject("code", "fail");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mv.addObject("code", "error");
		}
		
		mv.setViewName(".reward.insertOk");		
		return mv;
	}
	
	@RequestMapping(value="/reward/list")
	public ModelAndView list(HttpServletRequest request,
			@RequestParam(value="pageNum", defaultValue="1") int pageNum,
			@RequestParam(value="chkrew_name", defaultValue="") String chkrew_name,
			@RequestParam(value="keyword", defaultValue="") String keyword) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("rew_name", chkrew_name);
		map.put("keyword", keyword);
		
		int totalRowCount = rewardService.getCount(map);
		PageUtil pu = new PageUtil(pageNum, 10, 10, totalRowCount);
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		
		ModelAndView mv = new ModelAndView();
		
		List<RewardVo> list = rewardService.list(map);
		
		try {
			if(list != null) {
				mv.addObject("list", list);
				mv.addObject("pu", pu);
				mv.addObject("rew_name", chkrew_name);
				mv.addObject("keyword", keyword);
				mv.addObject("code", "success");
			} else {
				mv.addObject("code", "fail");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mv.addObject("code", "error");
		}
		
		mv.setViewName(".reward.list");
		return mv;
	}
}
