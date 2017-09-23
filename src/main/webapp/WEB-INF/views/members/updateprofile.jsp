<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="waccountWrap">
       		<div class="waccount-wrap">
       			
       			<div id="waccountContainer">
       				<h4>프로필 정보 설정</h4>
       				<div id="tabContent1" class="tab-content">
	       				<h5>프로필 사진</h5>
	       				<div class="profileimg-wrap">
	       					<button type="button" id="resultProfileImg" class="profileimg" onclick="$('#uploadProfileImg').click();"><em style="background-image:url(/resources/static/img/common/img_blank.png)"></em></button>
	       					<p class="setting-profileimg">
	       						<button type="button" onclick="$('#uploadProfileImg').click()" id="btn_updatePhoto">프로필 사진 등록</button>	       						
	       						<button type="button" onclick="deletePhoto()" id="btn_deletePhoto" style="display: none;">삭제</button>	       						
	       					</p>
	       				</div>
	       			
	       				<h5>관심사</h5>
	       				<p class="sub-text">최소 5개 이상 관심사를 선택해주세요.</p>
	       				<div class="check-list-wrap">
		       				<ul>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_1" name="interestGroup" value="I000000001">
		       						<label class="input-check" for="interest_1"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>얼리어답터</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_2" name="interestGroup" value="I000000002">
		       						<label class="input-check" for="interest_2"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>IT</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_3" name="interestGroup" value="I000000003">
		       						<label class="input-check" for="interest_3"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>재테크</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_4" name="interestGroup" value="I000000004">
		       						<label class="input-check" for="interest_4"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>자동차</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_5" name="interestGroup" value="I000000005">
		       						<label class="input-check" for="interest_5"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>여행/아웃도어</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_6" name="interestGroup" value="I000000006">
		       						<label class="input-check" for="interest_6"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>건강/헬스케어</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_7" name="interestGroup" value="I000000007">
		       						<label class="input-check" for="interest_7"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>스포츠</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_8" name="interestGroup" value="I000000008">
		       						<label class="input-check" for="interest_8"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>게임/엔터테인먼트</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_9" name="interestGroup" value="I000000009">
		       						<label class="input-check" for="interest_9"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>하이테크</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_10" name="interestGroup" value="I000000010">
		       						<label class="input-check" for="interest_10"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>창업</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_11" name="interestGroup" value="I000000011">
		       						<label class="input-check" for="interest_11"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>비상장주식</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_12" name="interestGroup" value="I000000012">
		       						<label class="input-check" for="interest_12"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>소득공제</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_13" name="interestGroup" value="I000000013">
		       						<label class="input-check" for="interest_13"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>라이프스타일</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_14" name="interestGroup" value="I000000014">
		       						<label class="input-check" for="interest_14"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>패션</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_15" name="interestGroup" value="I000000015">
		       						<label class="input-check" for="interest_15"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>디자인</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_16" name="interestGroup" value="I000000016">
		       						<label class="input-check" for="interest_16"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>음악</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_17" name="interestGroup" value="I000000017">
		       						<label class="input-check" for="interest_17"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>공연/전시</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_18" name="interestGroup" value="I000000018">
		       						<label class="input-check" for="interest_18"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>책</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_19" name="interestGroup" value="I000000019">
		       						<label class="input-check" for="interest_19"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>사회문제해결</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_20" name="interestGroup" value="I000000020">
		       						<label class="input-check" for="interest_20"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>기부/나눔</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_21" name="interestGroup" value="I000000021">
		       						<label class="input-check" for="interest_21"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>친환경</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_22" name="interestGroup" value="I000000022">
		       						<label class="input-check" for="interest_22"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>공유경제</label>
		       					</li>
		       					
		       					<li>
		       						<input type="checkbox" id="interest_23" name="interestGroup" value="I000000023">
		       						<label class="input-check" for="interest_23"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>교육/육아</label>
		       					</li>
		       					
		       				</ul>
	       				</div>
	       			
	       				<h5>회사 / 직책</h5>
       					<ul class="input-div2">
       						<li><input type="text" class="input-text" maxlength="50" id="belongsTo" placeholder="회사" value=""></li>
       						<li><input type="text" class="input-text" maxlength="50" id="position" placeholder="직책" value=""></li>
       					</ul>
	       				<h5>학교 / 전공</h5>
       					<ul class="input-div2">
       						<li><input type="text" class="input-text" maxlength="20" id="school" placeholder="학교" value=""></li>
       						<li><input type="text" class="input-text" maxlength="20" id="major" placeholder="전공" value=""></li>
       					</ul>
	       				<h5>간단한 한 마디로 나를 소개해주세요</h5>
	       				<div class="textarea-wrap">
	       					<textarea id="introduceme" maxlength="80"></textarea>
	       				</div>
       					<div class="btn-bottom">
       						<ul class="btn-div2">
       							<li><button type="button" class="btn-darkgray" onclick="cancelModify()">취소</button></li>
       							<li><button type="button" class="btn-mint" onclick="modify()">확인</button></li>
       						</ul>
       					</div>
	       			</div>
	       			
       			</div>
       			
       		</div>
      	</div>