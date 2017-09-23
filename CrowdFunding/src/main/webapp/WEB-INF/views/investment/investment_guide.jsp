<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<c:url value='/resources/css/investment_main.css' />">
<meta charset="UTF-8">
<title>Insert title here</title>
    <button id="page-top" class="wz-top" title="위로 이동"></button>
    <div id="guideContainer">
    	<div class="guide-wrap">
    		<div class="top-guide-section">
    			<div class="inner-section">
    				<h2><em>투자형 펀딩모집 신청</em><br/>
    				어떤 기업이 투자를 유치하기에 적합한가요?</h2>
    				<ul class="info-list">
    					<li>
    						<dl>
    							<dt>새로운 미래 비즈니스를 만들어가는 기업</dt>
    							<dd>와디즈에는 개인투자자, 전문엔젤투자자 그리고 기관투자자들까지 다양한 그룹의 투자자들이 모여있습니다. 새로운 미래를 만들어가고 있는 반짝이는 비즈니스들이 와디즈를 만나 함께 성장해가고 있습니다.</dd>
    						</dl>
    					</li>
    					<li>
    						<dl>
    							<dt>Fan 기반의 커뮤니티를 형성해가는 기업</dt>
    							<dd>와디즈에서는 시작 단계에 있는 스타트업부터 성장 단계에 있는 벤처기업, fan들과 함께 하는 영화•뮤지컬 등의 문화콘텐츠, 열성적인 고객을 만들어 가고 있는 레스토랑 등의 커뮤니티 기반 프로젝트들이 활발하게 펀딩을 진행하고 있습니다.</dd>
    						</dl>
    					</li>
    				</ul>
    			</div>    			
    		</div>
    		<div id="categoryGuide" class="category-guide">
    			<div class="inner-section">
    				<h3>다음의 상품들을 통해 자금을 조달할 수 있습니다.</h3>
    				<div class="content-wrap">
	    				<div id="categoryLnb" class="lnb">
	    					<div class="fixed-lnb">
		    					<ul class="depth1">
		    						<li id="cate01">
		    							<em>주식</em>
		    							<ul class="depth2">
		    								<li><button type="button" id="categoryBtn0101" class="categorybtn item11" onclick="scrollToCategory(1,1)">보통주</button></li>
		    								<li><button type="button" id="categoryBtn0102" class="categorybtn item12" onclick="scrollToCategory(1,2)">전환우선주</button></li>
		    								<li><button type="button" id="categoryBtn0103" class="categorybtn item13" onclick="scrollToCategory(1,3)">(전환)상환우선주</button></li>
		    							</ul>
		    						</li>
		    						<li id="cate02">
		    							<em>채권</em>
		    							<ul class="depth2">
		    								<li><button type="button" id="categoryBtn0201" class="categorybtn item21" onclick="scrollToCategory(2,1)">일반회사채</button></li>
		    								<li><button type="button" id="categoryBtn0202" class="categorybtn item22" onclick="scrollToCategory(2,2)">STB</button></li>
		    								<li><button type="button" id="categoryBtn0203" class="categorybtn item23" onclick="scrollToCategory(2,3)">이익참가부사채</button></li>
		    								<li><button type="button" id="categoryBtn0204" class="categorybtn item24" onclick="scrollToCategory(2,4)">전환사채</button></li>
		    								<li><button type="button" id="categoryBtn0205" class="categorybtn item25" onclick="scrollToCategory(2,5)">신주인수권부사채</button></li>
		    							</ul>
		    						</li>
		    					</ul>
		    					<div class="download-area">
			    					<button type="button" class="btn-download icon-download" onclick="downloadInvestGuide()">증권발행 가이드 받기</button>
			    					<p class="text-download">3G/LTE 네트워크 환경에서 다운로드 시 과도한 데이터 요금이 부과될 수 있습니다.<br/>첨부 자료가 다운로드 되지 않을 경우 스마트폰의 기본 인터넷 브라우저에서 이용해주세요.</p>
		    					</div>
		    					<button type="button" class="btn-top" onclick="scrollToCateTop()">상품 전체보기</button>
	    					</div>
	    				</div>
	    				<div class="content">
	    					<div id="category0101" class="inner-content">
		    					<h5><em>주식</em> 발행을 통한 투자자 모집</h5>
		    					<h4>보통주</h4>
		    					<p>보통주는 기업의 의결권과 소유권을 주주들과 함께 공유하는 방식으로 투자금이 기업의 자본이 되어 투자자에게 직접적인 상환 의무를 지지 않습니다. </p>
		    					<p>향후 IPO(주식시장 상장) 또는 M&A를 통해 회사를 매각할 계획을 가지고 있는 법인에게 적합하며, <em>아직 수익성은 갖춰지지 않았어도 높은 성장성을 가지고 있어야</em> 합니다.<br/><br/>
		    					<a href="https://www.wadiz.kr/web/ftcampaign/detail/234?externalWebBrowser=Y" target="_blank" onclick="gaEvt.send('investmakerguide', 'link_page_example', '파도에너지 환경을 생각하다 주 인진', '');">펀딩 프로젝트 대표 사례 &gt;</a></p>
		    					<p class="title">신청 자격</p>
		    					<p>아이디어 단계를 넘어 제품/서비스를 런칭한 법인으로, 전문투자자 또는 기관투자자로부터 투자를 유치하기 전 Seed 투자를 받고자 하는 법인<br/>
		    					또는 성장 단계의 스타트업으로 기관투자자로부터의 투자 이력을 보유하고 있거나 본격적인 매출이 발생, 혹은 직전 단계인 법인</p>
		    					<p class="title">추가 혜택</p>
		    					<p>와디즈의 초기기업 전용 프로그램인 Start With Wadiz에 선정될 경우, 와디즈 파트너스에서 투자자로 참여하고 인큐베이팅 대상이 될 수 있습니다. </p>
		    					<p class="title">신청 서류</p>
		    					<ul>
		    						<li>회사소개서</li>
		    						<li>사업자등록증</li>
		    						<li>법인등기부등본</li>
		    					</ul>
		    					<p class="comment">정보보호를 위해 심사 시 일부 신청 서류는 이메일을 통해 요청합니다<br/>
		    					<a href="/resources/static/file/Wadiz_CompanyProfileSample.pdf?externalWebBrowser=Y" target="_blank">회사소개서 샘플 다운받기</a></p>
		    					<div class="btn-wrap">
		    						<a class="btn-apply" href="https://wadiz.typeform.com/to/qw6N3z" target="_blank" onclick="gaEvt.send('investmakerguide', 'btn_page_investmakernaverform', '보통주 간편 모집 신청서 작성', '');">간편 모집 신청서 작성</a>
		    					</div>
	    					</div>
	    					
	    					<div id="category0102" class="inner-content">
		    					<h4>전환우선주</h4>
		    					<p>전환우선주는 투자자에게 의결권을 제공하지 않고 우선 배당권을 제공하게 됩니다. </p>
		    					<p>향후 IPO(주식시장 상장) 또는 M&A를 통해 회사를 매각할 계획을 가지고 있는 법인에게 적합하며, <em>빠르게 성장하고 있고 실질적인 지표가 나오고 있어야</em> 합니다.</p>
		    					<p class="title">신청 자격</p>
		    					<p>액셀러레이터, VC 등 전문투자자 또는 기관투자자로부터 투자 유치 실적이 있는 법인</p>
		    					<p class="title">추가 혜택</p>
		    					<p>와디즈 투자 네트워크 중에 연관성이 있을 경우, SI투자자에게 소개될 수 있습니다. </p>
		    					<p class="title">신청 서류</p>
		    					<ul>
		    						<li>회사소개서</li>
		    						<li>사업자등록증</li>
		    						<li>법인등기부등본</li>
		    						<li class="plus">주주명부</li>
		    					</ul>
		    					<p class="comment">정보보호를 위해 심사 시 일부 신청 서류는 이메일을 통해 요청합니다<br/>
		    					<a href="/resources/static/file/Wadiz_CompanyProfileSample.pdf?externalWebBrowser=Y" target="_blank">회사소개서 샘플 다운받기</a></p>
		    					<div class="btn-wrap">
		    						<a class="btn-apply" href="https://wadiz.typeform.com/to/qw6N3z" target="_blank" onclick="gaEvt.send('investmakerguide', 'btn_page_investmakernaverform', '전환우선주 간편 모집 신청서 작성', '');">간편 모집 신청서 작성</a>
		    					</div>
	    					</div>
	    					
	    					
	    					<div id="category0103" class="inner-content">
		    					<h4>(전환)상환우선주</h4>
		    					<p>(전환)상환우선주는 투자자들에게 의결권을 제공하지 않고 우선 배당권과 3년~4년의 상환권을 제공하게 됩니다.</p>
		    					<p>현재 이익이 발생하고 있어 <em>꾸준한 배당이 가능해야 하며, 사업의 안정적인 확장</em>을 투자자들과 함께 하고자 하는 법인에게 적합합니다.<br/><br/>
		    					<a href="https://www.wadiz.kr/web/ftcampaign/detail/408?externalWebBrowser=Y" target="_blank" onclick="gaEvt.send('investmakerguide', 'link_page_example', '맥주덕후에서 브루어로 레벨업 세븐비어 주식회사', '');">펀딩 프로젝트 대표 사례 &gt;</a></p>
		    					<p class="title">신청 자격</p>
		    					<p>IPO를 준비 중이거나 상환 여력이 충분한 법인</p>
		    					<p class="title">추가 혜택</p>
		    					<p>추후 와디즈 Premium Private Fundraising 참가 기업으로 선정될 수 있습니다.</p>
		    					<p class="title">신청 서류</p>
		    					<ul>
		    						<li>회사소개서</li>
		    						<li>사업자등록증</li>
		    						<li>법인등기부등본</li>
		    						<li class="plus">재무제표(최근 연도 및 최근 월)</li>
		    					</ul>
		    					<p class="comment">정보보호를 위해 심사 시 일부 신청 서류는 이메일을 통해 요청합니다<br/>
		    					<a href="/resources/static/file/Wadiz_CompanyProfileSample.pdf?externalWebBrowser=Y" target="_blank">회사소개서 샘플 다운받기</a></p>
		    					<div class="btn-wrap">
		    						<a class="btn-apply" href="https://wadiz.typeform.com/to/qw6N3z" target="_blank" onclick="gaEvt.send('investmakerguide', 'btn_page_investmakernaverform', '(전환)상환우선주 간편 모집 신청서 작성', '');">간편 모집 신청서 작성</a>
		    					</div>
	    					</div>
	    					
	    					<div id="category0201" class="inner-content">
		    					<h5><em>채권</em> 발행을 통한 투자자 모집</h5>
		    					<h4>일반회사채</h4>
		    					<p>일반 회사채는 투자자들로부터 자금을 직접 차입(대출을 받는 것과 유사한 개념)하는 방식입니다.</p>
		    					<p>만기 도래 시 투자금을 상환할 수 있는지가 가장 중요하므로, 현재 보유한 현금과 향후 영업 활동을 통하여 만기 시에 <em>차입금 상환이 가능한 법인</em>에게 적합합니다. <br/><br/>
		    					<a href="https://www.wadiz.kr/web/ftcampaign/detail/249?externalWebBrowser=Y" target="_blank" onclick="gaEvt.send('investmakerguide', 'link_page_example', '국내기술로 만든 레저용반잠수정 펭귄오션레저', '');">펀딩 프로젝트 대표 사례 &gt;</a></p>
		    					<p class="title">신청 자격</p>
		    					<p>2년 이상의 재무제표를 가지고 있는 법인</p>
		    					<p class="title">채권 금리</p>
		    					<p>와디즈 내부 평가에 따라 결정</p>
		    					<p class="title">신청 서류</p>
		    					<ul>
		    						<li>회사소개서</li>
		    						<li>사업자등록증</li>
		    						<li>법인등기부등본</li>
		    						<li class="plus">재무제표(최근2개년도)</li>
		    					</ul>
		    					<p class="comment">정보보호를 위해 심사 시 일부 신청 서류는 이메일을 통해 요청합니다<br/>
		    					<a href="/resources/static/file/Wadiz_CompanyProfileSample.pdf?externalWebBrowser=Y" target="_blank">회사소개서 샘플 다운받기</a></p>
		    					<div class="btn-wrap">
		    						<a class="btn-apply" href="https://wadiz.typeform.com/to/qw6N3z" target="_blank" onclick="gaEvt.send('investmakerguide', 'btn_page_investmakernaverform', '일반회사채 간편 모집 신청서 작성', '');">간편 모집 신청서 작성</a>
		    					</div>
	    					</div>
	    					
	    					<div id="category0202" class="inner-content">
		    					<h4>STB(Social Trust Bond)</h4>
		    					<p>STB는 청년기업가들의 지속적인 사업 여건을 위한 상품으로 기존 전통 금융기관과는 다른 와디즈만의 평가 모델을 사용합니다. </p>
		    					<p>투자자들로부터 차입을 하는 것이기 때문에 상환 가능성이 가장 중요하며, 아래의 신청 자격에 해당하는 <em>특수조건이 충족될 때 이용이 가능</em>합니다. </p>
		    					<p class="title">신청 자격</p>
		    					<p>대표이사가 만 39세 이하의 설립 7년 이하 법인으로 기존에 중소기업진흥공단, 기술보증기금 등에서 청년창업자금 대출을 이용한 법인</p>
		    					<p class="title">채권 금리</p>
		    					<p>최대 9% (발행 한도 5천 만원)</p>
		    					<p class="title">신청 서류</p>
		    					<ul>
		    						<li>회사소개서</li>
		    						<li>사업자등록증</li>
		    						<li>법인등기부등본</li>
		    						<li class="plus">청년창업자금 대출 상환이력(해당 금융기관 제공자료)</li>
		    						<li class="plus">대표이사 신용정보제공동의서</li>
		    					</ul>
		    					<p class="comment">정보보호를 위해 심사 시 일부 신청 서류는 이메일을 통해 요청합니다<br/>
		    					<a href="/resources/static/file/Wadiz_CompanyProfileSample.pdf?externalWebBrowser=Y" target="_blank">회사소개서 샘플 다운받기</a></p>
		    					<div class="btn-wrap">
		    						<a class="btn-apply" href="https://wadiz.typeform.com/to/qw6N3z" target="_blank" onclick="gaEvt.send('investmakerguide', 'btn_page_investmakernaverform', 'STB 간편 모집 신청서 작성', '');">간편 모집 신청서 작성</a>
		    					</div>
	    					</div>
	    					
	    					<div id="category0203" class="inner-content">
		    					<h4>이익참가부사채</h4>
		    					<p>이익참가부사채는 <em>독립회계를 기준으로 이익에 연동되는 지표를 설계</em>하여 발행되는 채권으로 특정 프로젝트에 대한 수익을 투자자와 공유하는 모델입니다. </p>
		    					<p>영화 &middot; 뮤지컬 등의 문화콘텐츠나 게임과 같이 지표 설계가 가능한 프로젝트에 대한 펀딩을 진행하고자 할 때 이용이 가능합니다. <br/><br/>
		    					<a href="https://www.wadiz.kr/web/ftcampaign/detail/490?externalWebBrowser=Y" target="_blank" onclick="gaEvt.send('investmakerguide', 'link_page_example', '영화 판도라 씨에이클라우드펀딩 주식회사', '');">펀딩 프로젝트 대표 사례 &gt;</a></p>
		    					<p class="title">신청 자격</p>
		    					<p>SPC(특수목적법인)를 통하여 매출과 비용이 통제될 수 있는 독립회계설정이 가능한 프로젝트 </p>
		    					<p class="title">채권 금리</p>
		    					<p>와디즈 내부 평가에 따라 결정</p>
		    					<p class="title">신청 서류</p>
		    					<ul>
		    						<li>모회사 회사소개서</li>
		    						<li>사업자등록증</li>
		    						<li>법인등기부등본</li>
		    						<li class="plus">프로젝트 계획서</li>
		    					</ul>
		    					<p class="comment">정보보호를 위해 심사 시 일부 신청 서류는 이메일을 통해 요청합니다<br/>
		    					<a href="/resources/static/file/Wadiz_CompanyProfileSample.pdf?externalWebBrowser=Y" target="_blank">회사소개서 샘플 다운받기</a></p>
		    					<div class="btn-wrap">
		    						<a class="btn-apply" href="https://wadiz.typeform.com/to/qw6N3z" target="_blank" onclick="gaEvt.send('investmakerguide', 'btn_page_investmakernaverform', '이익참가부사채 간편 모집 신청서 작성', '');">간편 모집 신청서 작성</a>
		    					</div>
	    					</div>
	    					
	    					<div id="category0204" class="inner-content">
		    					<h4>전환사채</h4>
		    					<p>전환사채는 주식과 채권의 결합 모델로, 채권의 형태로 발행하지만 향후 보통주로 전환할 수 있는 자격을 투자자에게 제공합니다. </p>
		    					<p>만기는 일반적으로 3년으로 하며, 만기에 상환의 의무를 지기 때문에 상환 가능성과 향후 성장에 따른 전환 가능성을 같이 보게 됩니다. <em>성장 가능성이 높아 당장에 지분희석이 고민되는 법인</em>에게 적합합니다.</p>
		    					<p class="title">신청 자격</p>
		    					<p>전문투자자(VC, CVC, 기타 금융기관 등)로부터 투자를 받은 이력이 있는 법인 </p>
		    					<p class="title">채권 금리</p>
		    					<p>1 ~ 7%</p>
		    					<p class="title">신청 서류</p>
		    					<ul>
		    						<li>회사소개서</li>
		    						<li>사업자등록증</li>
		    						<li>법인등기부등본</li>
		    						<li class="plus">재무제표(최근 2개년도)</li>
		    						<li class="plus">주주명부</li>
		    					</ul>
		    					<p class="comment">정보보호를 위해 심사 시 일부 신청 서류는 이메일을 통해 요청합니다<br/>
		    					<a href="/resources/static/file/Wadiz_CompanyProfileSample.pdf?externalWebBrowser=Y" target="_blank">회사소개서 샘플 다운받기</a></p>
		    					<div class="btn-wrap">
		    						<a class="btn-apply" href="https://wadiz.typeform.com/to/qw6N3z" target="_blank" onclick="gaEvt.send('investmakerguide', 'btn_page_investmakernaverform', '전환사채 간편 모집 신청서 작성', '');">간편 모집 신청서 작성</a>
		    					</div>
	    					</div>
	    					
	    					<div id="category0205" class="inner-content">
		    					<h4>신주인수권부사채</h4>
		    					<p>신주인수권부사채는 주식과 채권이 결합된 모델로, 채권의 형태로 발행하지만 향후 보통주를 추가로 발행하여 인수할 수 있는 자격을 주는 방식입니다. </p>
		    					<p>만기는 일반적으로 3년으로 하며, 1년 이후부터 신주를 인수할 수 있는 자격을 부여합니다. 만기에 상환의 의무를 지기 때문에 상환 가능성과 향후 성장에 따른 신주 발행 가능성을 같이 보게 됩니다. <em>성장 가능성이 높아 당장에 지분 희석이 고민되는 법인에게 적합하며, 임직원들이 투자자로 참여할 경우에 자사주 배분의 방식으로도 활용</em>이 가능합니다. </p>
		    					<p class="title">신청 자격</p>
		    					<p>전문투자자(VC, CVC, 기타 금융기관 등)로부터 투자를 받은 이력이 있는 법인</p>
		    					<p class="title">채권 금리</p>
		    					<p>1 ~ 7%</p>
		    					<p class="title">신청 서류</p>
		    					<ul>
		    						<li>회사소개서</li>
		    						<li>사업자등록증</li>
		    						<li>법인등기부등본</li>
		    						<li class="plus">재무제표(최근 2개년도)</li>
		    						<li class="plus">주주명부</li>
		    					</ul>
		    					<p class="comment">정보보호를 위해 심사 시 일부 신청 서류는 이메일을 통해 요청합니다<br/>
		    					<a href="/resources/static/file/Wadiz_CompanyProfileSample.pdf?externalWebBrowser=Y" target="_blank">회사소개서 샘플 다운받기</a></p>
		    					<div class="btn-wrap">
		    						<a class="btn-apply" href="https://wadiz.typeform.com/to/qw6N3z" target="_blank" onclick="gaEvt.send('investmakerguide', 'btn_page_investmakernaverform', '신주인수권부사채 간편 모집 신청서 작성', '');">간편 모집 신청서 작성</a>
		    					</div>
	    					</div>
	    					<div class="btm-notice">
	    						<p>와디즈는 발행기업과 투자자간 균형 있는 투자상품 설계로 양쪽 모두가 성장할 수 있는 커뮤니티를 만들기 위해 노력하고 있습니다. 신청서를 제출해주시면 회사소개서의 내용을 바탕으로 한 상담이 가능합니다.</p>
	    					</div>
	    					
	    				</div><!-- // content -->
    				</div><!-- // content-wrap  -->
    			</div>
    		</div><!-- // category-guide  -->
    		
    		<div class="bottom-guide-section">
    			<div class="bg-section"></div>
    			<div class="inner-section">
    				<h3>와디즈 Funded Club은 단순히 자금 중개로 끝나는 것이 아닙니다.</h3>
    				<p>지속적인 성장을 위한 중요한 파트너를 만나는 기회가 됩니다</p>
    				<ul class="opportunity">
    					<li>
    						<dl>
    							<dt><em class="marketing"></em></dt>
    							<dd>새로운 제품&middot;서비스에 대한<br/>펀딩 및 마케팅 지원</dd>
    						</dl>
    					</li>
    					<li>
    						<dl>
    							<dt><em class="network"></em></dt>
    							<dd>생산, 제휴, 해외 진출 등<br/>다양한 네트워크 제공</dd>
    						</dl>
    					</li>
    					<li>
    						<dl>
    							<dt><em class="w9"></em></dt>
    							<dd>Premium Fundraising을 통한<br/>추가 자금 조달 기회 제공</dd>
    						</dl>
    					</li>
    				</ul>
    			</div>
    		</div>
    	</div>
    </div>
</body>
</html>