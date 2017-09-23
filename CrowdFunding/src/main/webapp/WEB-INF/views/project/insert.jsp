<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form name="projectform" id="projectform" action="/project/insert" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${mem_num }" name="mem_num">
		<div class="container" style="width: 1000px; border: 1px solid #d9d9de">
			<div class="leftpane" style="border-right: none;">
				<div class="w-field-section" id="no-edit-mode-1" style="margin: 0px; padding-top: 28px;">
					<div class="title-box">
						<div class="title">프로젝트 제목</div>
						<div class="desc">제목만으로도 프로젝트 성격이나 리워드를 예상 할 수 있도록 직관적이고
							정확하게 작성해주세요.
						</div>
					</div>
					<div class="edit-box" style="width: 440px; margin-left: 34px;">
						<input id="title" maxlength="40" name="title" style="width: 330px">
					</div>
				</div>
				<div style="margin: 0px; padding-top: 28px;">
					<div>
						<div>프로젝트 짧은 제목</div>
						<div>서포터 안내 SMS, 이메일 제목 등 공간이 부족한 곳에 쓰일 10자 이내
							짧은 제목을 입력해주세요. 띄어쓰기 및 기호는 지양해주세요.
						</div>
					</div>
					<div class="edit-box" style="width: 440px; margin-left: 34px;">
						<span style="font-size: 25px; padding-left: 7px;">#</span>
						<input id="tempTag" maxlength="10" name="tempTag" placeholder="메인해시태그" style="width: 330px; margin: 14px 3px;">
						<input type="hidden" id="tag" name="tag" value="">
						<em class="tail" style="margin: 0px 0px 7px 22px; display: block;">예시: 머케인트랜스보드, 국내첫월경컵, 엠비치오넴배낭, 병뚜껑스피커Cork, 욜로북</em>
					</div>
				</div>
				<div class="w-field-section " id="no-edit-mode-2" style="margin: 0px; padding-top: 28px;">
					<div class="title-box">
						<div class="title">목표 금액</div>
						<div class="desc">프로젝트를 통해 모으고자 하는 금액을 적어 주세요.</div>
					</div>
					<div class="edit-box" style="width: 440px; margin-left: 34px;">
						<input type="text" id="tempTargetamount" maxlength="11" class="text-input numOnly" value="0" style="width: 330px; text-align: right; padding-right: 10px;">원 
						<input type="hidden" id="targetamount" name="targetAmount" class="validField" value="0">
					</div>
				</div>
				<div class="w-field-section" style="margin: 0px; padding-top: 28px;">
					<div class="title-box">
						<div class="title">프로젝트 대표 이미지</div>
						<div class="desc projectimg">
							프로젝트 카드와 공유 이미지로 사용됩니다. <a href="#this" onclick="openImgGuide('2');">이미지 등록 가이드</a>를 반드시 확인하고 이미지를
							등록해주시기 바랍니다.
						</div>
					</div>

					<div class="edit-box" style="width: 440px; margin-left: 34px; border: none">
						<a href="#this" onclick="openImgGuide('1');">
							<div class="image-box" id="image-box" style="background: url() no-repeat 0 0; background-size: 438px auto">
								<div class="default-background" id="campaign-photo-box" style="display: block">
									<div class="default-img"></div>
									<ul>
										<li>사이즈: 가로800px 세로600px</li>
										<li>용량 : 1MB 미만</li>
										<li>텍스트 및 로고 삽입 금지</li>
									</ul>
								</div>
								<div class="default-project-card" id="projectCardInfo"></div>
							</div>
						</a> <input type="file" name="photostream" id="photostream" style="display: none;">
					</div>
				</div>
				<div class="w-field-section" style="margin: 0px; padding-top: 28px;">
					<div class="title-box">
						<div class="title">프로젝트의 키워드</div>
						<div class="desc">
							서포터에게 프로젝트 추천시 기준이 되는 관심사 키워드입니다. 개설하시는 프로젝트에 해당하는 키워드를 선택해주세요.<br>(
							최소 1개 이상 선택 )
						</div>
					</div>
					<div class="edit-box" style="margin-left: 34px; width: 440px;">
						<select id="interestCd1" name="interestCd1" style="margin: 14px 5px; border: 2px solid #dddddd; width: 130px; height: 34px;" class="validField">
							<option value="">필수입력입니다</option>
							<c:forEach var="vo" items="${Interestlist }">
								<option value="${vo.inum }">${vo.interest}</option>							
							</c:forEach>
						</select> 
						
						<select id="interestCd2" name="interestCd2" style="margin: 14px 5px; border: 2px solid #dddddd; width: 130px; height: 34px;">
							<option value="">선택하세요</option>
							<c:forEach var="vo" items="${Interestlist }">
								<option value="${vo.inum }">${vo.interest}</option>							
							</c:forEach>
						</select> 
						<select id="interestCd3" name="interestCd3" style="margin: 14px 5px; border: 2px solid #dddddd; width: 130px; height: 34px;">
							<option value="">선택하세요</option>
							<c:forEach var="vo" items="${Interestlist }">
								<option value="${vo.inum }">${vo.interest}</option>							
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="w-field-section " style="margin: 0px; padding-top: 28px;">
					<div class="title-box">
						<div class="title">카테고리</div>
						<div class="desc">카테고리에 따른 분류를 선택해주세요.</div>
					</div>
					<div class="edit-box" style="margin-left: 34px; width: 440px;">
						<select id="tempCustValueCode" name="tempCustValueCode" onchange="cateValueChange()" style="margin: 14px 20px; border: 2px solid #dddddd; height: 34px;" class="validField">
							<option value="">선택하세요</option>
							<c:forEach var="vo" items="${proCategorylist }">
								<option value="${vo.pro_cat_num }">${vo.pro_cat_name}</option>							
							</c:forEach>
						</select>
						<input type="hidden" id="custValueCode" name="custValueCode" value="0">
					</div>
				</div>

				<div class="w-field-section " style="margin: 0px; padding-top: 28px;">
					<div class="title-box">
						<div class="title">프로젝트 마감일</div>
						<div class="desc">
							프로젝트 마감일을 입력해주세요. 펀딩 기간은 오픈일로 부터 평균 45일 정도 입니다.<br>오픈 후 수정
							불가하니 신중하게 선택해주세요.
						</div>
					</div>
					<div class="edit-box" style="width: 440px; margin-left: 34px;">
						<input type="text" id="deadline" name="deadline" placeholder="yyyy-MM-dd" style="width: 159px; margin: 14px 20px;">
					</div>
				</div>
				<div class="w-field-section" style="margin: 0px; padding-top: 28px; padding-bottom: 28px;">
					<div class="title-box">
						<div class="title">19세 이상</div>
						<div class="desc">진행할 리워드가 19세 이상 이용 가능한 공연 티켓, 주류, 제품/서비스인
							경우 반드시 체크해 주세요.</div>
					</div>
					<div class="edit-box" style="margin-left: 34px; width: 440px; padding: 15px 0;">
						<label style="padding-left: 10px;">
						<input type="checkbox" name="isAdultContent" id="isAdultContent" style="margin-right: 3px;"> 19세 이상 펀딩 가능한 리워드입니다.
						</label>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div class="w-field-section" style="margin: 0px; padding: 28px; text-align: center">
				<input data-val="true" data-val-number="PhotoId 필드는 숫자여야 합니다." id="photoid" name="photoid" type="hidden" value=""> <input data-val="true" data-val-number="PhotoIdHost 필드는 숫자여야 합니다." id="photoidhost" name="photoidhost" type="hidden" value="">
				<input data-val="true" data-val-number="PhotoIdBanner 필드는 숫자여야 합니다." id="photoidbanner" name="photoidbanner" type="hidden" value="">
				<input id="id" name="id" type="hidden" value="1299"> <input id="issubmit" name="issubmit" type="hidden" value="0"> <a onclick="saveTabs1()" class="poi"><div id="tempsave" class="personal-start-btn">임시저장하기</div></a> <a onclick="changeMenuBtn('reward');" class="poi" style="margin-left: 20px;"><div id="nextsave" class="personal-start-btn" title="저장하지 않은 내용은 저장되지 않습니다">다음단계로&nbsp;&gt;</div></a>
			</div>
		</div>
	</form>