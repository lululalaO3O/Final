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
<script type="text/javascript">
	function makeInvestCampaign(){
		location.href="<c:url value='/investment/investment_guide'/>";
	}
</script>
</head>
<body>
	<div id="newContainer">
		<div id="makeProject">
			<div class="make-project-category">
				<ul>
					<li class="invest">
						<h2>투자</h2>
						<div class="section1">
							<p>
								투자형 크라우드펀딩은 주식과 채권을<br /> 발행해서 자금을 조달할 수 있는 방법입니다.<br /> 2016년
								1월 25일부터 시행되었으며,<br /> 다양한 기업들이 투자를 유치하고 있습니다.
							</p>
						</div>
						<div class="section2">
							<p>
								모집 신청을 시작하기 전<br />증권 발행이 가능한 기업 조건을 확인해주세요.
							</p>
							<div class="btn-wrap">
								<button type="button" class="btn-pdline-mint"
									onclick="scrollToTarget('projectFAQ');gaEvt.send('makeproject', 'btn_section_investmakerfaq', '투자형 모집자격 알아보기', '');">모집
									자격 알아보기</button>
							</div>
						</div>
						<div class="section3">
							<p>모집 준비가 되셨다면 와디즈와 함께 시작하세요.</p>
							<div class="btn-wrap">
								<button type="button" class="btn-pd-mint"
									onclick="makeInvestCampaign();">
									모집 신청 시작하기</a>
							</div>
						</div>
					</li>
					<li class="reward">
						<h2>리워드</h2>
						<div class="section1">
							<p>
								리워드형 크라우드펀딩은 제품/서비스를<br /> 보상으로 주면서 자금을 조달할 수 있는 방법입니다.<br /> 공익
								목적의 캠페인에서부터 하드웨어까지,<br /> 다양한 아이디어를 알리고 현실로 만들 수 있습니다.
							</p>
						</div>
						<div class="section2">
							<p>
								와디즈 가이드와 함께 차근 차근 시작하고 싶으시다면<br />간편신청하기를 통해 신청해주세요. 와디즈에서 확인 후
								연락 드립니다.
							</p>
							<div class="btn-wrap">
								<a class="btn-pdline-mint"
									href="https://wadiz.typeform.com/to/EVePyp" target="_blank"
									onclick="gaEvt.send('makeproject', 'btn_page_rewardmakernaverform', '리워드 간편 모집 신청서 작성', '');">간편
									신청하기</a>
							</div>
						</div>
						<div class="section3">
							<p>빠르게 준비하여 펀딩받고 싶으시다면 바로 신청하기를 이용해주세요.</p>
							<div class="btn-wrap">
								<button class="btn-pd-mint" onclick="makeRewardCampaign()">바로
									신청하기</button>
							</div>
						</div>
						<div class="section4"></div>
					</li>
				</ul>
				<!-- // 아래로 내려가는 화살표 버튼 
            <div class="downarrow">
	            <button type="button" onclick="scrollToTarget('projectGuide1')">
	            	<svg class="arrows">
								<path class="a1" d="M0 0 L30 32 L60 0"></path>
								<path class="a2" d="M0 20 L30 52 L60 20"></path>
								<path class="a3" d="M0 40 L30 72 L60 40"></path>
							</svg>
	            </button>
            </div>
          	//  -->
			</div>
			<div id="projectGuide1" class="make-project-guide-section1">
				<div class="inner-wrap">
					<h3>
						<strong>투자</strong>와 <strong>리워드</strong><br />그렇게 어렵지 않습니다.
					</h3>
					<p class="sub-text">기업의 새로운 도약을 위한 자금을 필요로 하신 분들은 투자 프로젝트로 시작,
						제품이나 서비스를 새롭게 개발하는데 후원이 필요하신 분들은 리워드 프로젝트로 시작하세요</p>
					<ul class="project-info">
						<li class="item1">
							<dl>
								<dt>투자 프로젝트</dt>
								<dd>
									투자는 펀딩에 대한 보상으로 서포터에게 기업의 <strong>‘주식이나 채권’</strong>을 발행합니다.
								</dd>
							</dl>
						</li>
						<li class="item2">
							<dl>
								<dt>리워드 프로젝트</dt>
								<dd>
									리워드는 펀딩에 대한 감사의 표시로 서포터에게 <strong>‘제품이나 서비스’</strong>를 선물합니다.
								</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
			<div class="make-project-guide-section2">
				<div class="inner-wrap">
					<h3>
						누구나,<br />
						<strong>메이커가 될 수 있습니다.</strong>
					</h3>
					<p class="sub-text">와디즈의 메이커들은 특별한 사람들이 아닙니다. 집단지성의 힘을 믿는 평범한
						사람들이죠. 당신의 열정으로 언제든지 메이커가 될 수 있습니다.</p>
					<div class="btn-wrap">
						<a class="btn-pd-green" href="/web/wsub/makerQuiz"
							onclick="gaEvt.send('makeproject', 'btn_page_makerquiz', '나의 메이커 친밀도 테스트 하기', '');">나의
							메이커 친밀도 테스트하기</a>
					</div>
				</div>
			</div>
			<div class="make-project-maker">
				<ul>
					<li><img src="/resources/images/makeproject_maker_mohenic.png"
						alt="와디즈는 투자유치뿐만 아니라 든든한 지지자 모팸족과 소통하게 된 기회였습니다.모헤닉게라지스 김태성 대표" /></li>
					<li><img src="/resources/images/makeproject_maker_ignis.png"
						alt="크라우드펀딩은 런칭 전 시장성을 확인할 수 있는 좋은 기회였죠. 이그니스 박찬호 대표" /></li>
				</ul>
			</div>
			<div class="make-project-guide-section3">
				<div class="inner-wrap">
					<h3>
						와디즈를<br />
						<strong>선택해야 하는 이유</strong>
					</h3>
					<p class="sub-text">크라우드펀딩은 단순히 돈을 얻는 것뿐만 아니라, 그 이상으로 확장되는 다음과
						같은 기회를 얻을 수 있습니다.</p>
					<ul class="project-reason">
						<li><em class="item1"></em><span>사업자금 마련</span></li>
						<li><em class="item2"></em><span>홍보효과</span></li>
						<li><em class="item3"></em><span>1:1 가이드</span></li>
						<li><em class="item4"></em><a href="/web/wterms/reward"><span>합리적인
									수수료</span></a></li>
						<li><em class="item5"></em><span>후속투자의 기회</span></li>
						<li><em class="item6"></em><span>비즈니스 확장</span></li>
					</ul>
				</div>
			</div>
			<div id="startWithWadiz" class="make-project-guide-section4">
				<div class="inner-wrap">
					<h3>
						<strong>크라우드펀딩의 첫걸음,</strong><br />와디즈가 함께하겠습니다.
					</h3>
					<p class="sub-text">메이커님의 스토리에 와디즈의 전문성을 더하여 누구나 쉽게 프로젝트를 개설할 수
						있습니다. 전문적인 와디즈의 가이드를 따라 진행하면 간편하게 프로젝트가 완성됩니다.</p>
					<p class="process-info-tit">투자 개설 및 진행 과정</p>
					<p class="process-info-con">신청 → 와디즈 심사 → 계약 체결 → 투자 유치 준비 →
						투자자 모집 → 투자 완료 ( 증권 발행 및 배정 )</p>
					<p class="process-info-tit">리워드 개설 및 진행 과정</p>
					<p class="process-info-con">프로젝트 개설 및 제출 → 와디즈 심사 → 작성 내용 보완 및
						계약 체결 → 펀딩 시작 → 펀딩 마감</p>
				</div>
			</div>
			<div id="projectFAQ" class="make-project-guide-section6">
				<div class="inner-wrap">
					<h3>펀딩 모집 신청 FAQ</h3>
					<ul class="project-faq-wrap">
						<li>
							<h4>투자 프로젝트</h4>
							<ol class="project-faq">
								<li class="active"><a href="#this">1. 투자형 크라우드펀딩의 진행 자격
										요건이 있나요?<i></i>
								</a>
									<p class="answer">
										창업 7년 이내의 비상장법인 또는 7년을 초과하였더라도 벤처기업, 이노비즈기업, 메인비즈기업이라면 투자형
										크라우드펀딩을 통해 투자 유치가 가능합니다.<br /> 신기술개발, 문화콘텐츠와 같은 프로젝트성 사업도
										크라우드펀딩을 통해 투자를 받을 수 있습니다.<br /> 단, 신생/창업 기업을 지원하기 위한 제도이기 때문에
										일부 업종의 경우 진행이 제한됩니다. (골프장 및 스키장 운영업, 기타 겜블링 및 베팅업 등)
									</p></li>
								<li><a href="#this">2. 최대 얼마까지 투자를 받을 수 있나요?<i></i></a>
									<p class="answer">
										투자형 크라우드펀딩을 통해 모집할 수 있는 금액은 연간 최대 7억원입니다.<br />과거 1년간 증권신고서를
										제출하고 모집한 금액이나 소액 공모 금액이 있다면, 7억원에 포함되어 연간 한도가 결정됩니다.
									</p></li>
								<li><a href="#this">3. 투자 유치까지 얼마나 걸리나요?<i></i></a>
									<p class="answer">
										평균적으로 간편 모집 신청서 작성 이후 약 3~4주 정도 투자 준비를 하게 됩니다.<br />투자 준비 후
										온라인을 통해 투자자를 모집하는 기간은 평균적으로 한달 내외이며,<br />투자 유치 성공 15일 후에 주급
										납입이 이루어집니다.
									</p></li>
								<li><a href="#this">4. 투자를 받기 위해 어떤 자료를 준비해야 하나요?<i></i></a>
									<p class="answer">
										투자형 크라우드펀딩으로 투자 유치를 희망하신다면, 간편 모집 신청서를 작성하여 제출해주세요.<br />신청서
										제출 후 5영업일 내로 진행 가능 여부와 후속 절차에 대한 안내를 드립니다.
									</p></li>
								<li><a href="#this">5. 투자 유치를 위한 증권 발행 정보 책정 기준은?<i></i></a>
									<p class="answer">
										투자형 크라우드펀딩으로 투자를 유치할 때에는 일반적으로 주식, 채권을 발행합니다.<br />발행하는 증권에 대한
										세부 정보는 기업이 결정하여 진행합니다.
									</p></li>
							</ol>
							<div class="btn-wrap">
								<button class="btn-pd-mint" onclick="makeInvestCampaign();">모집
									신청 시작하기</button>
							</div>
						</li>
						<li>
							<h4>리워드 프로젝트</h4>
							<ol class="project-faq">
								<li class="active"><a href="#this">1. 와디즈 메이커가 되려면 어떻게
										해야 하나요?<i></i>
								</a>
									<p class="answer">
										와디즈에서 <a href="/web/wsub/successstory">성공 프로젝트</a>를 탐색해보거나, <a
											href="/web/school/main">와디즈 스쿨</a> 강의를 신청하여 크라우드펀딩에 대해 보다 자세히
										알아보세요.<br />펀딩 모집 준비가 되었다면, 상단 리워드 섹션의 [간편 신청하기] 나 [바로 신청하기]를
										통해 펀딩 모집을 신청해주세요.
									</p></li>
								<li><a href="#this">2. 와디즈 프로젝트 심사 기준이 궁금합니다.<i></i></a>
									<p class="answer">
										리워드 프로젝트는 프로젝트의 목적과 리워드 제작의 실현 가능성, 구체적인 실행계획 등이 가장 중요합니다. <a
											href="/web/fthelpCenter/detail/141">여기</a>에서 진행하려는 프로젝트가 기준에
										맞는지 확인해보세요.
									</p></li>
								<li><a href="#this">3. 프로젝트 진행 전 상담 받을 수 있나요?<i></i></a>
									<p class="answer">[간편 신청하기]를 통해 문의해주시면, 검토 후 3영업일 이내 이메일로
										회신 드립니다. 검토 후에는 프로젝트마다 와디즈 담당 매니저가 붙어 프로젝트 오픈까지 함께하니, 진행에 대한
										상세한 내용은 담당 매니저와 나누실 수 있습니다.</p></li>
								<li><a href="#this">4. 프로젝트 오픈까지 얼마나 걸리나요?<i></i></a>
									<p class="answer">
										프로젝트 준비 정도에 따라 차이가 있지만 평균적으로 7영업일이 소요됩니다.<br />오늘부터 프로젝트 개설 및
										스토리 작성을 시작 한다고 가정할 경우 7일째 되는 날 프로젝트를 오픈하게 됩니다.<br />스토리 피드백을
										빠르게 수정 반영 해주실 수록 앞당겨질 수 있습니다.<br /> &middot; 준비 기간: 최단 3 일 -
										10일 (주말 공휴일 제외)
									</p></li>
								<li><a href="#this">5. 이용수수료는 어떻게 되나요?<i></i></a>
									<p class="answer">
										와디즈 수수료에는 총 3가지 방식이 있습니다.<br />
										<br /> A. 목표달성형 (목표금액 달성 시, 펀딩금액 수령)<br /> A-1. 퀵오픈 (필수항목 작성여부
										체크 후, 빠른 오픈 ) : 6% (VAT 별도)<br /> A-2. 피드백 오픈 (담당자의 콘텐츠 디렉팅
										서비스와 함께 오픈) : 9% (VAT 별도)<br />
										<br /> B. 자유모금형 (목표금액 달성 여부 상관 없이, 펀딩금액 수령)<br /> 목표금액 상관 없이
										펀딩 금액을 수령하나, 목표금액 달성 여부에 따라 수수료가 달라집니다.<br />
										<br /> 목표금액 달성 시 수수료 15%(VAT 별도), 목표금액 미달성 시 수수료 20% 발생 (VAT
										별도)<br>
										<br> * 위 플랫폼 수수료에<br>PG수수료 2.4% (VAT 별도)가 추가로 부과됩니다.<br>
										<br> <a href="/web/wterms/reward">자세한 수수료 정책을 확인해주세요.</a>
									</p></li>
							</ol>
							<div class="btn-wrap">
								<button class="btn-pd-mint pc-btn"
									onclick="makeRewardCampaign();">바로 신청하기</button>
								<a class="btn-pd-mint mb-btn"
									href="https://wadiz.typeform.com/to/EVePyp" target="_blank"
									onclick="gaEvt.send('makeproject', 'btn_page_rewardmakernaverform', '리워드 간편 모집 신청서 작성', '');">간편
									신청하기</a>
							</div>
						</li>
					</ul>

				</div>
			</div>
			<div class="make-project-guide-section7">
				<div class="inner-wrap">
					<h3>
						지금,<br />
						<strong>시작할 수 있습니다.</strong>
					</h3>
				</div>
			</div>
		</div>
	</div>
	<!-- S : 팝업영역 -->
	<div id="makerYnLypop" class="lypop-fixed" style="display: none;">
		<div class="popup-confirm-basic">
			<p class="popup-mint-text">
				프로젝트를 신청하시려면, 메이커 서비스를<br />신청하여 추가 정보를 입력하셔야 합니다.<br />지금 바로
				입력하시겠습니까?
			</p>
			<div class="btn-wrap">
				<a class="btn-pop-mint" href="/web/waccount/wAccountPlusMaker">신청하기</a>
			</div>
		</div>
	</div>
	<div id="registUserLypop" class="lypop-fixed" style="display: none;">
		<div class="popup-mint-basic">
			<a href="javascript:closeLyPop('registUser');" class="btn-close">
				<em></em>
			</a>
			<p class="popup-mint-text">
				현재 작성 중인 프로젝트가 있습니다.</br> 수정하시겠습니까?
			</p>
			<div class="btn-wrap">
				<button class="btn-pop-mint"
					onclick="window.location.href='/web/account/my?viewType=my'">프로젝트수정</button>
				<button class="btn-pop-gray"
					onclick="closeLyPop('registUser');showLyPop('checkMakeReward');">신규생성</button>
			</div>
		</div>
	</div>
	<div id="checkMakeRewardLypop" class="lypop-fixed"
		style="display: none;">
		<div class="check-make-reward">
			<div class="title-bar">
				<p class="title">예비 메이커님! 신청하기 전에 꼭 확인해주세요.</p>
				<button type="button" class="btn-close"
					onclick="closeLyPop('checkMakeReward')"></button>
			</div>
			<div class="inner-content">
				<p class="top-notice">아래 사항들에 해당되지 않는 프로젝트일 경우 진행이 불가할 수 있으니, 꼭
					확인 후 신청해주세요.</p>
				<div class="check-list">
					<ul>
						<li><label><input type="checkbox"
								name="checkMakeReard" />프로젝트를 진행하려는 목적이 명확합니다.</label></li>
						<li><label><input type="checkbox"
								name="checkMakeReard" />펀딩에 참여한 서포터에게 보답할 제품 혹은 서비스 등의 리워드 제공이
								가능합니다.<br />(현금/지분은 리워드로 제공이 불가합니다.)</label></li>
						<li><label><input type="checkbox"
								name="checkMakeReard" />서포터에게 제공할 리워드는 다른 온라인사이트에서 펀딩 혹은 판매하고
								있지 않습니다. <br />(해외 크라우드펀딩 플랫폼에서 진행되는 경우에는 가능하나, 국내외 온오프라인에서 유통되고
								있는 경우에는 신청하실 수 없습니다.)</label></li>
						<li><label><input type="checkbox"
								name="checkMakeReard" />리워드 제작의 수급 및 배송 일정이 구체적으로 계획되어 있으며, 이
								일정을 서포터에게 상세히 안내하고 소통할 수 있습니다. (배송이 지연될 경우 추가 리워드를 제공하거나 환불을
								진행해야 합니다.)</label></li>
						<li><label><input type="checkbox"
								name="checkMakeReard" />프로젝트를 진행하는 메이커에 대한 프로필과 사진을 투명하게 공개하고
								등록할 수 있습니다.</label></li>
						<li><label><input type="checkbox"
								name="checkMakeReard" />저작권을 침해하지 않는 폰트와 이미지를 사용하여 프로젝트를 소개할 수
								있습니다.<br />(저작권 등 지식재산권 관련 분쟁 발생 시, 법적 책임이 메이커에게 있습니다.)</label></li>
					</ul>
				</div>
				<div class="btm-wrap">
					<p class="btm-notice">
						프로젝트 진행 가능 여부에 대해 더 자세히 알고싶다면, <a
							href="https://wadiz.typeform.com/to/EVePyp" target="_blank">[간편
							신청하기]</a>에서 프로젝트 정보를 작성해주세요.
					</p>
					<button type="button" onclick="makeNewCampaign();"
						id="btnMakeReward" class="btn-pd-mint" disabled="disabled">바로
						신청하기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>