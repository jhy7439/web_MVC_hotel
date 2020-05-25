<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="IMG" value="${HOME}/web/image" />
<c:set var="JS" value="${HOME}/web/js" />
<c:set var="JSP" value="${HOME}/web/jsp" />
<c:set var="CSS" value="${HOME}/web/css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/api/bxslider/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath() %>/api/bxslider/jquery.bxslider.js"></script>
<script src="<%=request.getContextPath() %>/js/mainBanner.js"></script>
<script src="<%=request.getContextPath() %>/js/res.js"></script>
<script src="<%=request.getContextPath() %>/api/videopopup/YouTubePopUp.jquery.js"></script>
<script src='<%=request.getContextPath() %>/api/videopopup/YouTube.js'></script>
<script src="<%=request.getContextPath() %>/js/pk.js"></script>
<script src="<%=request.getContextPath() %>/js/mainAc.js"></script>
<script src="<%=request.getContextPath() %>/js/homePakage.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/api/bxslider/jquery.bxslider.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/api/videopopup/YouTubePopUp.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css" type="text/css" />

<body>

	<section id="section">
			
		<div id="homeBanner">
			<ul id="innerImg">
				<li><a href="#"><img src='<%=request.getContextPath() %>/img/7177.png'
						title="첫번째 이미지 설명.." /></a></li>
				<li><a href="#"><img src="<%=request.getContextPath() %>/img/7215.png"
						title="두번째 이미지 설명.." /></a></li>

			</ul>
		</div>
		<div id="homeRoomPackage">

			<h1 id="homeRoomPackageTitle">SPECIAL&nbsp;OFFERS</h1>
			<h1>ROOM &nbsp;PACKAGE</h1>

			<div id="homeRoomPackageItem">
				<div id="RoomPackageDescription">



					<p>
						올해 1~3월 설립된 부동산 법인만 5779건. 지난 한해 1만 2029건이었던 것과 비교하면 급증세다. 이때문에
						개인과 법인간 아파트 거래량은 1~3월 1만 3142건에 이른다. 이미 지난해 거래량의 73%에 달한다. 이처럼 부동산
						법인을 활용한 부동산 거래가 급증한 것은 다주택자들의 경우 종합부동산세 양도소득세 등 각종 세금 `폭탄`을 피할 수
						있기 때문이다. 법인 전환 주택은 다주택에 포함되지 않는다. 주택을 팔때도 개인은 6~42%의 양도세율에 주택수에 따라
						10~20%포인트 가산세까지 붙지만 법인은 양도 차익을 다른 소득과 합산한 후 법인세만 내면 된다.<br>
						<button>VIEW &nbsp;MORE</button>
					</p>

				</div>
				<div id="RoomPackageDescription2">

					<p>
						올해 qweqwe1~3월 설립된 부동산 법인만 5779건. 지난 한해 1만 2029건이었던 것과 비교하면 급증세다.
						이때문에 개인과 법인간 아파트 거래량은 1~3월 1만 3142건에 이른다. 이미 지난해 거래량의 73%에 달한다.
						이처럼 부동산 법인을 활용한 부동산 거래가 급증한 것은 다주택자들의 경우 종합부동산세 양도소득세 등 각종 세금
						`폭탄`을 피할 수 있기 때문이다. 법인 전환 주택은 다주택에 포함되지 않는다. 주택을 팔때도 개인은 6~42%의
						양도세율에 주택수에 따라 10~20%포인트 가산세까지 붙지만 법인은 양도 차익을 다른 소득과 합산한 후 법인세만 내면
						된다.<br>
						<button>VIEW &nbsp;MORE</button>
					</p>
					<button id="hello">+</button>
				</div>

				<div>



					<p>
						올해 1~3월 설립된 부동산 법인만 5779건. 지난 한해 1만 2029건이었던 것과 비교하면 급증세다. 이때문에
						개인과 법인간 아파트 거래량은 1~3월 1만 3142건에 이른다. 이미 지난해 거래량의 73%에 달한다. 이처럼 부동산
						법인을 활용한 부동산 거래가 급증한 것은 다주택자들의 경우 종합부동산세 양도소득세 등 각종 세금 `폭탄`을 피할 수
						있기 때문이다. 법인 전환 주택은 다주택에 포함되지 않는다. 주택을 팔때도 개인은 6~42%의 양도세율에 주택수에 따라
						10~20%포인트 가산세까지 붙지만 법인은 양도 차익을 다른 소득과 합산한 후 법인세만 내면 된다.<br>
						<button>VIEW &nbsp;MORE</button>
					</p>

				</div>
				<div>

					<p>
						올해 qweqwe1~3월 설립된 부동산 법인만 5779건. 지난 한해 1만 2029건이었던 것과 비교하면 급증세다.
						이때문에 개인과 법인간 아파트 거래량은 1~3월 1만 3142건에 이른다. 이미 지난해 거래량의 73%에 달한다.
						이처럼 부동산 법인을 활용한 부동산 거래가 급증한 것은 다주택자들의 경우 종합부동산세 양도소득세 등 각종 세금
						`폭탄`을 피할 수 있기 때문이다. 법인 전환 주택은 다주택에 포함되지 않는다. 주택을 팔때도 개인은 6~42%의
						양도세율에 주택수에 따라 10~20%포인트 가산세까지 붙지만 법인은 양도 차익을 다른 소득과 합산한 후 법인세만 내면
						된다.<br>
						<button>VIEW &nbsp;MORE</button>
					</p>

				</div>
				<div>



					<p>
						올해 1~3월 설립된 부동산 법인만 5779건. 지난 한해 1만 2029건이었던 것과 비교하면 급증세다. 이때문에
						개인과 법인간 아파트 거래량은 1~3월 1만 3142건에 이른다. 이미 지난해 거래량의 73%에 달한다. 이처럼 부동산
						법인을 활용한 부동산 거래가 급증한 것은 다주택자들의 경우 종합부동산세 양도소득세 등 각종 세금 `폭탄`을 피할 수
						있기 때문이다. 법인 전환 주택은 다주택에 포함되지 않는다. 주택을 팔때도 개인은 6~42%의 양도세율에 주택수에 따라
						10~20%포인트 가산세까지 붙지만 법인은 양도 차익을 다른 소득과 합산한 후 법인세만 내면 된다.<br>
						<button>VIEW &nbsp;MORE</button>
					</p>

				</div>
				<div>

					<p>
						올해 qweqwe1~3월 설립된 부동산 법인만 5779건. 지난 한해 1만 2029건이었던 것과 비교하면 급증세다.
						이때문에 개인과 법인간 아파트 거래량은 1~3월 1만 3142건에 이른다. 이미 지난해 거래량의 73%에 달한다.
						이처럼 부동산 법인을 활용한 부동산 거래가 급증한 것은 다주택자들의 경우 종합부동산세 양도소득세 등 각종 세금
						`폭탄`을 피할 수 있기 때문이다. 법인 전환 주택은 다주택에 포함되지 않는다. 주택을 팔때도 개인은 6~42%의
						양도세율에 주택수에 따라 10~20%포인트 가산세까지 붙지만 법인은 양도 차익을 다른 소득과 합산한 후 법인세만 내면
						된다.<br>
						<button>VIEW &nbsp;MORE</button>
					</p>

				</div>
			</div>

		</div>


		<div id="res">
			<h1>RESERVATION</h1>
			<div id="imgList">
				<img src="<%=request.getContextPath() %>/img/8050.jpg" /><img src="<%=request.getContextPath() %>/img/8107.jpg" /><img src="<%=request.getContextPath() %>/img/7940.jpg" /><img src="<%=request.getContextPath() %>/img/8140.jpg" /><img src="<%=request.getContextPath() %>/img/8152.jpg" />
			</div>
			<div id="control">
				<div></div>
				<div></div>
				<div></div>
			</div>
			///////////////////////////////////////
			<div id="resPager">
				<div id="resPagerTitle">
					<h1></h1>
				</div>
				<div id="resPagerContent">
					살짝 코 끝을 스치는 봄 기운에 마음이 가벼워지는 계절, 맛있는 봄 식재료로 몸과 마음을 풍요롭게 해보십시오.<br>

					일시 2020.03.01 ~ 2020.04.30<br>장소 아시안라이브
					
					<button>VIEW &nbsp;MORE</button>
					<br />
					<p>
						<button>&lt;</button>
						<span></span>
						
						<button>&gt;</button>
					</p>
				</div>
			</div>
		</div>

		<div id="mainVideo">
			<div id="mainVideoItem"></div>
			<div id="mainVideoItem2">
				<img src="<%=request.getContextPath() %>/img/videoimg.jpg" class="bla-1"
					href="https://www.youtube.com/watch?v=3qyhgV0Zew0" />
			</div>
			<div id="mainVideoItem3">

				<p>
					대한민국 트렌드가 시작되는 강남의 중심에서<br> 오직 당신이 주인공인 하루를 만들어 보세요. 아름다운 한강의
					전경과 도시의 세련된<br> 풍경이 한층 낭만적인 결혼식을 선사합니다.<br> 여기 인터컨티넨탈 서울
					코엑스가 주는 특별한 경험이 여러분을 기다립니다
				</p>


			</div>
		</div>
		<div id=mainAc>
			<h1>SEOUL CROWN HOTEL</h1>


			<div>

				<h1>ROOM</h1>

				<div>
					<p>
						인터컨티넨탈 서울 코엑스의<br /> 쾌적한 객실에서는 비즈니스와<br /> 컨벤션, 여행에 최적화된 서비스를<br />

						경험하실 수 있습니다.
					</p>
				</div>



			</div>

			<div>

				<h1>RESTAURANTS</h1>

				<div>
					<p>
						인터컨티넨탈 서울 코엑스의<br /> 쾌적한 객실에서는 비즈니스와<br /> 컨벤션, 여행에 최적화된 서비스를<br />

						경험하실 수 있습니다.
					</p>
				</div>

			</div>
			<div>

				<h1>Events</h1>

				<div>
					<p>
						인터컨티넨탈 서울 코엑스의<br /> 쾌적한 객실에서는 비즈니스와<br /> 컨벤션, 여행에 최적화된 서비스를<br />

						경험하실 수 있습니다.
					</p>
				</div>



			</div>



		</div>
	

	</section>
</body>
</html>