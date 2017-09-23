package com.jhta.app.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {
	String encoding = null;

	@Override
	public void destroy() {
		// System.out.println("destroy메소드 호출!");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// System.out.println("doFilter메소드 호출!");
		
		if(encoding != null) {
			request.setCharacterEncoding(encoding);
		}
		
		// 다음에 수행할 필터가 있으면 수행하고 수행할 필터가 없으면 사용자가 요청한 페이지로 이동
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// System.out.println("init메소드 호출!");
		
		// web.xml에 설정된 초기화 파라미터값 읽어오기
		encoding = config.getInitParameter("encoding");
	}
}
