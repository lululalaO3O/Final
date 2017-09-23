package com.jhta.app.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.app.service.MembersService;
import com.jhta.app.vo.MembersVo;
import com.jhta.util.page.PageUtil;

@Controller
public class MembersController {
	@Autowired private MembersService membersService;
	
	@RequestMapping(value="/members/insert", method=RequestMethod.GET)
	public ModelAndView insertForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".members.insert");
		return mv;
	}
	
	@RequestMapping(value="/members/insert", method=RequestMethod.POST)
	public ModelAndView insertOk(MembersVo vo) {
		ModelAndView mv = new ModelAndView();
		
		String jumin1 = vo.getJumin1();
		String jumin2 = vo.getJumin2();
		String jumin = jumin1 + jumin2;
		vo.setJumin(jumin);
		
		int n = membersService.insert(vo);
		
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
		
		mv.setViewName(".members.insertOk");
		return mv;
	}
	
	@RequestMapping(value="/members/update", method=RequestMethod.GET)
	public ModelAndView updateForm(int mem_num) {
		ModelAndView mv = new ModelAndView();
		
		MembersVo vo = membersService.select(mem_num);
		
		try {
			if(vo != null) {
				mv.addObject("vo", vo);
				mv.addObject("code", "success");
			} else {
				mv.addObject("code", "fail");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mv.addObject("code", "error");
		}
		
		mv.setViewName(".members.update");
		return mv;
	}
	
	@RequestMapping(value="/members/update", method=RequestMethod.POST)
	public ModelAndView update(MembersVo vo) {
		ModelAndView mv = new ModelAndView();
		
		int n = membersService.update(vo);
		
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
		
		mv.setViewName(".members.updateOk");
		return mv;
	}
	
	@RequestMapping(value="/members/delete", method=RequestMethod.GET)
	public ModelAndView deleteForm(int mem_num) {
		ModelAndView mv = new ModelAndView();
		
		MembersVo vo = membersService.select(mem_num);
		
		try {
			if(vo != null) {
				mv.addObject("vo", vo);
				mv.addObject("code", "success");
			} else {
				mv.addObject("code", "fail");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mv.addObject("code", "error");
		}
		
		mv.setViewName(".members.delete");
		return mv;
	}
	
	@RequestMapping(value="/members/delete", method=RequestMethod.POST)
	public ModelAndView delete(MembersVo vo) {
		ModelAndView mv = new ModelAndView();
		
		int n = membersService.delete(vo);
		
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
		
		mv.setViewName(".members.deleteOk");
		return mv;
	}
	
	@RequestMapping(value="/members/select", method=RequestMethod.GET)
	public ModelAndView select(int mem_num) {
		ModelAndView mv = new ModelAndView();
		
		MembersVo vo = membersService.select(mem_num);
		
		try {
			if(vo != null) {
				mv.addObject("vo", vo);
				mv.addObject("code", "success");
			} else {
				mv.addObject("code", "fail");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mv.addObject("code", "error");
		}
		
		mv.setViewName(".members.select");
		return mv;
	}
	
	@RequestMapping(value="/members/list")
	public ModelAndView list(HttpServletRequest request,
			@RequestParam(value="pageNum", defaultValue = "1") int pageNum,
			@RequestParam(value="chkid", defaultValue="") String chkid,
			@RequestParam(value="chknickname", defaultValue="") String chknickname,
			@RequestParam(value="keyword", defaultValue="") String keyword) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", chkid);
		map.put("nickname", chknickname);
		map.put("keyword", keyword);
		
		int totalRowCount = membersService.getCount(map);
		PageUtil pu = new PageUtil(pageNum, 10, 10, totalRowCount);
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		
		ModelAndView mv = new ModelAndView();
		
		List<MembersVo> list = membersService.list(map);
		
		// 아래 방식으로 처리해서 주민번호 뒷자리를 보이지 않도록 해도 되지만 속도면으로 보면
		// 오라클 Query부분에서 미리 처리해주는 것이 좋다.
		/*
		for(int i = 0; i < list.size(); i++) {
			MembersVo vo = list.get(i);
			String jumin = vo.getJumin();
			
			String jumin1 = jumin.substring(0, 6);
			
			// 주민번호 뒷자리 보이지 않도록 처리(성별 제외)
			String jumin2 = jumin.substring(7, 14);
			jumin2 = jumin2.substring(0, 1) + jumin2.substring(1, 7).replaceAll("[0-9]", "*");
			
			jumin = jumin1 + "-" + jumin2;
			vo.setJumin(jumin);
			// System.out.println("jumin : " + jumin1 + "-" + jumin2);
		}
		*/
		
		try {
			if(list != null) {
				mv.addObject("list", list);
				mv.addObject("pu", pu);
				mv.addObject("id", chkid);
				mv.addObject("nickname", chknickname);
				mv.addObject("keyword", keyword);
				mv.addObject("code", "success");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mv.addObject("code", "error");
		}
		
		mv.setViewName(".members.list");
		return mv;
	}
	
	@RequestMapping(value="/members/login", method=RequestMethod.GET)
	public ModelAndView loginForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".members.login");
		return mv;
	}
	
	@RequestMapping(value="/members/login", method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String id  = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		
		MembersVo vo = membersService.selectById(id);
		int mem_num = vo.getMem_num();
		String nickname = vo.getNickname();
		String jumin = vo.getJumin();
		
		// 아이디가 존재한다면
		if(vo != null) {
			
		}
		
		// 아이디가 존재하지 않는다면
		/*
		else {
			request.setAttribute("notExistMsg", "존재하지 않는 아이디입니다.");
		}
		*/
		
		boolean isMem = membersService.isMember(map);
		
		// 아이디와 비밀번호가 일치한다면
		if(isMem) {
			// 세션객체 얻어오기
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("pwd", pwd);
			session.setAttribute("mem_num", mem_num);
			session.setAttribute("nickname", nickname);
			session.setAttribute("jumin", jumin);
			mv.setViewName("redirect:/.");
		}
		
		// 아이디 또는 비밀번호가 일치하지 않는다면
		else {
			request.setAttribute("errMsg", "아이디 또는 비밀번호가 일치하지 않습니다.");
			mv.setViewName(".members.login");
		}
		
		return mv;
	}
	
	@RequestMapping(value="/members/logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		// session.invalidate();
		
		// String id = (String) session.getAttribute("id");
		// System.out.println("로그아웃한 아이디 : " + id);
		
		// 로그아웃 처리
		session.removeAttribute("id");
		
		mv.setViewName("redirect:/.");
		return mv;
	}
	
	@RequestMapping(value="/members/isexist", produces="application/xml;charset=UTF-8")
	@ResponseBody
	public String isExist(String id) {
		MembersVo vo = membersService.selectById(id);
		boolean using = false;
		
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<data>");
		
		if(vo != null) {
			using = true;
		}
		
		sb.append("<using>" + using + "</using>");
		sb.append("</data>");
		
		// System.out.println("using : " + using);
		
		return sb.toString();
	}
	
	// MY 정보설정
	@RequestMapping(value="/members/updateuserinfo", method=RequestMethod.GET)
	public ModelAndView updateuuserinfoForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".members.updateuserinfo");
		return mv;
	}
	
	// 기본 정보 설정
	@RequestMapping(value="/members/updatebasicinfo", method=RequestMethod.GET)
	public ModelAndView updateUserInfoForm(int mem_num) {
		ModelAndView mv = new ModelAndView();
		
		MembersVo vo = membersService.select(mem_num);
		
		try {
			if(vo != null) {
				mv.addObject("vo", vo);
				mv.addObject("code", "success");
			} else {
				mv.addObject("code", "fail");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mv.addObject("code", "error");
		}
		
		mv.setViewName(".members.updatebasicinfo");
		return mv;
	}
	
	//기본 정보 설정
	@RequestMapping(value="/members/updatebasicinfo", method=RequestMethod.POST)
	public ModelAndView updateUserInfoOk(HttpServletRequest request, HttpSession session) {
		System.out.println("---------- 수정전 정보출력 ----------");
		ModelAndView mv = new ModelAndView();
		String id1 = (String) session.getAttribute("id");	// 현재 로그인 상태 아이디
		System.out.println("id1 : " + id1);
		
		int mem_num = (Integer) session.getAttribute("mem_num");
		System.out.println("mem_num : " + mem_num);
		
		String id2 = request.getParameter("id");	// 입력한 아이디
		System.out.println("id2 : " + id2);
		
		MembersVo vo = membersService.selectById(id2);
		
		String nickname = request.getParameter("nickname");	// 입력한 닉네임
		System.out.println("nickname : " + nickname);
		
		String pwd = vo.getPwd();
		System.out.println("pwd : " + pwd);
		
		String jumin = vo.getJumin();
		System.out.println("jumin : " + jumin);
		
		System.out.println("---------- 수정할 VO출력 ----------");
		System.out.println("mem_num : " + mem_num);
		System.out.println("id2 : " + id2);
		System.out.println("nickname : " + nickname);
		System.out.println("pwd : " + pwd);
		System.out.println("jumin : " + jumin);
		
		MembersVo vo1= new MembersVo(mem_num, id2, nickname, vo.getPwd(), vo.getJumin());
		System.out.println(vo1.getMem_num());
		System.out.println(vo1.getId());
		System.out.println(vo1.getNickname());
		System.out.println(vo1.getPwd());
		System.out.println(vo1.getJumin());
		
		// System.out.println(vo1.getMem_num());
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id2);
		
		String id3 = vo.getId();
		
		if(id1.equals(id2)) {
			int n = membersService.updateBasicInfo(vo1);
			try {
				if(n > 0) {
					session = request.getSession();
					session.setAttribute("id", id2);
					session.setAttribute("mem_num", mem_num);
					session.setAttribute("nickname", nickname);
					mv.addObject("code", "success");
				} else {
					mv.addObject("code", "fail");
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
				mv.addObject("code", "error");
			}
		} else {
			if(id2.equals(id3)) {
				request.setAttribute("errMsg", "이미 회원가입된 계정입니다. 다른 이메일을 입력해주세요.");
				mv.setViewName(".members.updatebasicinfo");
			} else {
				System.out.println("---------- else ----------");
				System.out.println(vo1.getId());
				System.out.println(vo1.getNickname());
				System.out.println(vo1.getMem_num());
				
				int n = membersService.updateBasicInfo(vo1);
				
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
				
				mv.setViewName(".members.updateuserinfo");
			}
		}
		
		return mv;
	}
	
	// 비밀번호 설정
	
	// 프로필 정보 설정
}
