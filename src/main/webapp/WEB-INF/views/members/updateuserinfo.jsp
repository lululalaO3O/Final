<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value='/resources/css/account.css' />">

<div id="accountWrap">
            <!-- S : #newContainer -->
            <div id="newContainer">
                <!-- account-wrap with-footer -->
                <div class="account-wrap with-footer">
                    <h2 class="big">MY 정보설정</h2>
                    <a class="my-info" href="<c:url value='/members/updatebasicinfo?mem_num=${mem_num}' />">
                        <div class="my-info-text">
                            <h3>기본 정보 설정</h3>
                            <p>닉네임, 이메일, 휴대폰, SNS연동 등</p>
                        </div>
                        <div class="my-info-btn">
                            <i class="wadizicon wa-chevron-right"></i>
                        </div>
                    </a>
                    <a class="my-info" href="<c:url value='/members/updatepwd?mem_num=${mem_num}' />">
                        <div class="my-info-text">
                            <h3>비밀번호 설정</h3>
                            <p>비밀번호 재설정</p>
                        </div>
                        <div class="my-info-btn">
                            <i class="wadizicon wa-chevron-right"></i>
                        </div>
                    </a>
                    
                    <a class="my-info" href="<c:url value='/members/' />">
                        <div class="my-info-text">
                            <h3>투자 서비스</h3>
                            <p>비상장 기업의 증권에 투자할 수 있는 서비스</p>
                        </div>
                        <div class="plus-info-btn">
                            <form action="/web/waccount/wAccountPlusInvestNice">
                                <button>신청</button>
                            </form>
                        </div>
                    </a>
                    
                    
                    <a class="my-info" href="<c:url value='/members/updateprofile?mem_num=${mem_num}' />">
                        <div class="my-info-text">
                            <h3>프로필 정보 설정</h3>
                            <p>프로필 사진, 경력, 학력, 관심분야</p>
                        </div>
                        <div class="my-info-btn">
                            <i class="wadizicon wa-chevron-right"></i>
                        </div>
                    </a>
                    <div class="my-info">
                        <h3><a href="<c:url value='/members/delete?mem_num=${mem_num}' />">회원 탈퇴</a></h3>
                    </div>
                </div>
                <!-- //account-wrap with-footer -->
            </div>
            <!-- E : #newContainer -->
        </div>