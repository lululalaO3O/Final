<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value='/resources/css/header.css' />">
<script type="text/javascript" src="<c:url value='/resources/jquery/js/jquery-3.2.1.min.js' />"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script type="text/javascript">
	$(document).ready(function() {
		$("#globalSubNavWrap").hide();
		$(".submenu").click(function() {
			if($("#back1").css("visibility")=="hidden"){
				$("#back1").css("visibility", "visible");
				$("#back1").css("top", "280px");
				$("#back1").stop().fadeIn('300');
				$("#globalSubNavWrap").stop().slideDown('fast');
			}else{
				$("#back1").css("visibility", "hidden");
				$("#back1").css("top", "280px");
				$("#back1").stop().fadeOut('300');
				$("#globalSubNavWrap").stop().slideUp('fast');
			}
		});
		$("#back1").click(function() {
			$("#back1").css("visibility", "hidden");
			$("#back1").css("top", "280px");
			$("#back1").stop().fadeOut('300');
			$("#globalSubNavWrap").stop().slideUp('fast');
		});
		$("#sear1").hide();
		$("#searchIcon").click(function(){
			$("#sear1").stop().toggle("slide");
		})
	})
</script>

<nav style="margin-top: 15px">
	<div class="container-fluid">
		<div class="navbar-header">
		<a href="<c:url value='/' />">
			<i class="fa fa-cloud fa-3x" aria-hidden="true"></i>
		</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li style="margin-left: 10px;"><a href="#">투자</a></li>
				<li><a href="<c:url value='/reward/list' />">리워드</a></li>
				<li><a href="#">오픈예정</a></li>
				<li><a href="#">와디즈캐스트</a></li>
				<li class="submenu"><a href="#">더보기</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${not empty sessionScope.id}">
						<li><a href="<c:url value='/members/logout' />" style="display: inline-block;">로그아웃</a></li>
						<li><a href="<c:url value='/members/delete?mem_num=${mem_num}' />">회원탈퇴</a></li>
						<li><a href="<c:url value='/members/list' />">회원목록</a></li>
						<li><a href="#" id="mem">마이페이지</a></li>
					</c:when>
					<c:when test="${not empty sessionScope.admin_id}">
					<li><a href="<c:url value='/admin/logout' />" style="display: inline-block;">로그아웃</a></li>
						<li><a href="#" id="mem">관리자페이지</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="<c:url value='/members/login' />">로그인</a></li>
						<li><a href="<c:url value='/members/insert' />">회원가입</a></li>
						<li><a href="<c:url value='/members/list' />">회원목록</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="#" id="searchIcon"><i class="fa fa-search fa-2x" aria-hidden="true"></i></a></li>
				<li id="sear1">
					<form action="#" method="get" id="headSearchForm">
						<input type="search" name="keyword" id="headSearchInput" placeholder="프로젝트 검색하기">
					</form>
				</li>
				<li><a href="#" style="display: inline-block;">${id}</a></li>
			</ul>
		</div>
		<label class="btn-gnbsub-close" for="globalSubNavOpener"></label>
		<div id="globalSubNavWrap">
			<nav id="globalSubNav">
				<div class="menu-list" style="width: 100%;">
					<ul>
						<li class="title">펀딩모집 신청안내</li>
						<li><a href="#">신청 절차 알아보기</a></li>
						<li><a href="#">리워드? 투자?</a></li>
						<li><a href="#">와디즈 스쿨</a></li>
						<li><a href="#">수수료 안내</a></li>
					</ul>
					<ul>
						<li class="title">와디즈 소개</li>
						<li><a href="#">와디즈 이야기</a></li>
						<li><a href="#">와디즈 배심원</a></li>
						<li><a href="#">와디즈 파트너</a></li>
						<li><a href="#">성공 프로젝트</a></li>
					</ul>
					<ul>
						<li class="title">공지 및 문의</li>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">이벤트</a></li>
						<li><a href="#">문의하기</a></li>
						<li><a href="#">채용</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
</nav>
<div id="back1"></div>
<div id="back"></div>
<div id="layer_fixed">
	<div id="winghead">
		<a href="www.naver.com">
			<div id="profile">
				<dl>
					<dt>
						<img src="<c:url value='/resources/images/2.jpg' />">
					</dt>
					<dd>
						<p class="nickname">${nickname}</p>
						<p class="username">${id}</p>
					</dd>
				</dl>
			</div>
		</a>
	</div>
	<div id="wingcontent">
		<c:choose>
		<c:when test="${not empty sessionScope.id}">
		<ul>
			<li><a href="#">나의 펀딩현황</a></li>
			<li><a href="#">좋아하는 프로젝트</a></li>
			<li><a href="#">만든 프로젝트</a></li>
			<li><a href="<c:url value='/members/updateuserinfo' />">MY 정보설정</a></li>
			<li><a href="<c:url value='/members/logout' />" style="display: inline-block;">로그아웃</a></li>
		</ul>
		</c:when>
		<c:when test="${not empty sessionScope.admin_id}">
		<ul>
			<li><a href="<c:url value='/admin/main' />">관리자 페이지 메인</a></li>
			<li><a href="#">기능1</a></li>
			<li><a href="#">기능2</a></li>
			<li><a href="#">기능3</a></li>
			<li><a href="#">기능4</a></li>
			<li><a href="<c:url value='/admin/logout' />" style="display: inline-block;">로그아웃</a></li>
		</ul>
		</c:when>
	</c:choose>
		<div style="width: 200; height: px; margin-left: 100px; margin-top: 200px">
			<a href="<c:url value='/' />"><i class="fa fa-cloud fa-5x" aria-hidden="true"></i></a>
		</div>
		<div style="text-align: center;">
			<p>클라우드 펀딩은</p>
			<p>와디즈</p>
		</div>
	</div>
</div>

<script type="text/javascript">
	$("#layer_fixed").ready(function() {
		$("#layer_fixed").css("right", "-300px");
	});

	//사이드바 보이기
	$("#mem").click(function() {
		$("#back").css("visibility", "visible");
		$("#back").css("right", "280px");
		$("#layer_fixed").css("right", "0px");
	});

	//사이드바 닫기
	$("#back").click(function() {
		$("#back").css("visibility", "hidden");
		$("#back").css("right", "280px");
		$("#layer_fixed").css("right", "-300px");
	});

	$("#winghead").click(function() {
		alert("클릭됨");
	});
</script>