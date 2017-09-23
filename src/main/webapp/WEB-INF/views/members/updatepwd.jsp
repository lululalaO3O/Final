<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="accountWrap">
            <!-- S : #newContainer -->
            <div id="newContainer">
                <!-- account-wrap -->
                <div class="account-wrap">
                    <h2 class="small">비밀번호 설정</h2>
                    <div class="email-input-wrap">
                    <form id="saveForm">
                        <input type="password" id="oldPassword" name="oldPassword" class="input-text" placeholder="현재 비밀번호">
                        <p id="oldPasswordError" class="error-text">현재 비밀번호가 일치 하지 않습니다.</p>

                        <input type="password" id="newPassword" name="newPassword" class="input-text" placeholder="새 비밀번호" maxlength="17">
                        <p id="passwordError" class="pwd-text">영문, 숫자, 특수문자 (!@#$%^&amp;*+=-)를 모두 조합한 8자 이상</p>
                        <input type="password" id="newPasswordConfirm" name="newPasswordConfirm" class="input-text" placeholder="새 비밀번호 확인" maxlength="17">
                        <p class="error-text">비밀번호가 같지 않습니다.</p>
                        <div class="email-input-wrap small">
                            <div class="btn-wrap smaller">
                                <button id="saveBtn" type="button" class="btn-block-mint">확인</button>
                            </div>
                        </div>
                       </form>
                    </div>
                </div>
            </div>
            <!-- E : #newContainer -->
        </div>