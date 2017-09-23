package com.jhta.app.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.app.service.AdminService;
import com.jhta.app.vo.AdministratorVo;

@Controller
public class AdminController {
	@Autowired private AdminService adminService;
	
	//로그인 get
	@RequestMapping(value="/admin/login", method=RequestMethod.GET)
	public ModelAndView adminForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".admin.login");
		return  mv;
	}
	
	//로그인 post
	@RequestMapping(value="/admin/login", method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String id  = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
	
		AdministratorVo vo = adminService.selectById(id);
		int admin_num = vo.getAdmin_num();
		String admin_id = vo.getAdmin_id();
		String admin_pwd = vo.getAdmin_pwd();
		String admin_nick = vo.getAdmin_nick();
		String admin_pic = vo.getAdmin_pic();
		
		boolean isMem = adminService.isMember(map);

		// 아이디와 비밀번호가 일치한다면
		if(isMem) {
			// 세션객체 얻어오기
			HttpSession session = request.getSession();
			
			session.setAttribute("admin_num", admin_num);
			session.setAttribute("admin_id", admin_id);
			session.setAttribute("admin_pwd", admin_pwd);
			session.setAttribute("admin_nick", admin_nick);
			session.setAttribute("admin_pic", admin_pic);			
			
			mv.setViewName(".admin.main");
		}
		
		// 아이디 또는 비밀번호가 일치하지 않는다면
		else {
			request.setAttribute("errMsg", "아이디 또는 비밀번호가 일치하지 않습니다.");
			mv.setViewName(".members.login");
		}
		
		return mv;
	}
	//관리자 로그아웃
	@RequestMapping(value="/admin/logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		// session.invalidate();
		
		// String id = (String) session.getAttribute("id");
		// System.out.println("로그아웃한 아이디 : " + id);
		
		// 로그아웃 처리
		session.removeAttribute("admin_num");
		session.removeAttribute("admin_id");
		session.removeAttribute("admin_pwd");
		session.removeAttribute("admin_nick");
		session.removeAttribute("admin_pic");
		
		mv.setViewName("redirect:/.");
		return mv;
	}
	
	//관리자페이지 이동(관리자가 사용자화면에서 관리자화면으로)
	@RequestMapping(value="/admin/main", method=RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String admin_num=(String) session.getAttribute("admin_num");
		String admin_id=(String) session.getAttribute("admin_id");
		String admin_pwd=(String) session.getAttribute("admin_pwd");
		String admin_nick=(String) session.getAttribute("admin_nick");
		String admin_pic=(String) session.getAttribute("admin_pic");
		
		session.setAttribute("admin_num", admin_num);
		session.setAttribute("admin_id", admin_id);
		session.setAttribute("admin_pwd", admin_pwd);
		session.setAttribute("admin_nick", admin_nick);
		session.setAttribute("admin_pic", admin_pic);	
		
		mv.setViewName(".admin.main");
		
		return mv;
	}
}
