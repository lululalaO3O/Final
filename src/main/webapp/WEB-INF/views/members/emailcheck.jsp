<%@ page import="java.io.PrintWriter" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="com.jhta.app.vo.MembersVo" %>
<%@ page import="com.jhta.app.dao.MembersDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	MembersDao dao = new MembersDao();
	MembersVo vo = dao.selectById(id);

	JSONObject json = new JSONObject();
	json.put("vo", vo);

	response.setContentType("text/plain;charset=utf-8");
	PrintWriter pw = response.getWriter();
	pw.print(json.toString());
	pw.close();
%>