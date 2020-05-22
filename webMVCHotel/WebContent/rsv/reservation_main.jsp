<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/reservation.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/api/calendar/daterangepicker.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/api/calendar/moment.min.js"></script>
<script src="<%=request.getContextPath() %>/api/calendar/daterangepicker.js"></script>
<script src="<%=request.getContextPath() %>/js/rsv.js"></script>
<%
Date nowTime = new Date();
Date Tomorrow = new Date(nowTime.getTime ( ) + (long) ( 1000 * 60 * 60 * 24 ));

SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat tsf = new SimpleDateFormat("yyyy-MM-dd");


%>
<script>

$(function (){
	
		var rst1,rst2,rst3,rst4,rst5,rst6,rst7,lastday,rst0,room_cnt=1,g=-1;
		var Adult=2;
		var Adult0=0;
		var Adult1=0;
		var date  = new Date();
		var year  = date.getFullYear();
		var month = date.getMonth() + 1;
		var day  = date.getDate();
		$('.rsv_chk').daterangepicker({
	    opens: 'left',
	    maxSpan: '30'
	    
	 	}, function(start, end, label) {
	    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
	    $("#chkInDate").text(start.format('YYYY-MM-DD'));
	   	$("#chkOutDate").text(end.format('YYYY-MM-DD'));
	 	rst0= start.format('YYYY');
	 	rst1=	start.format('MM');
		 rst2=	end.format('MM');
	 	rst3= start.format('DD');
		 rst4= end.format('DD');
	    var now =new Date();
		lastDate = new Date(now.getYear(),rst1+1,0);
		var last   = new Date( rst0, rst1 ); 
	     last   = new Date( last - 1 ); 
		var lastD = last.getDate();
		console.log(lastD);
		var last=	moment(lastDate).format('DD');
	

		rst5=	last*(((rst2*1)-(rst1*1)));
		rst6=(rst4*1)-(rst3*1);
		rst7=(rst5*1)+(rst6*1);
		$("#result").text(rst7+'박');
		});
	
	
		$("#AdultPlus").click(function(){
		
		Adult++;
		
		$("#Adult").text(Adult);
		
		

		});
	
	
	
		$("#AdultMinus").click(function(){
		Adult--;
		
		$("#Adult").text(Adult);

		});

			
		$(".add_room_box").off('click').on('click', function() {

		console.log(g);
		
		g++;
		if(g>=2){
			alert("객실은 3개까지 예약가능합니다.");
			g--;
			return false;
		}
		if(g<2){
		
			Adult0=2;
			Adult1=2;
		room_cnt++;
		$("#room_cnt").text(room_cnt);
			
		var cloneElements =$("#roomch").clone(true);
	

	
		
		cloneElements.attr('id', 'roomch'+g)
		cloneElements.find("#room").attr('id',"room"+g);
		cloneElements.find("#Adult").attr('id',"Adult"+g);
		cloneElements.find("#Additional").attr('id',"Additional"+g);
		cloneElements.find("#AdultPlus").attr('id',"AdultPlus"+g);
		cloneElements.find("#AdultMinus").attr('id',"AdultMinus"+g);
		cloneElements.find("#Additional").attr('id',"Additional"+g);
		cloneElements.find("#roomnum").text("객실"+(g+2));
		cloneElements.find("#Additional0>span").text("객실삭제");
		cloneElements.find("#Additional0>img").attr("src","../img/reservation/minus_btn.png");
		cloneElements.find("#Additional1>span").text("객실삭제");
		cloneElements.find("#Additional1>img").attr("src","../img/reservation/minus_btn.png");
		
		
		
		$(".rp_select_box").append(cloneElements);	

	
		$("#AdultPlus0").off('click').on('click', function() {

			Adult0++;		
			$("#Adult0").text(Adult0);
			console.log(Adult0);
			

		});
		$("#AdultMinus0").off('click').on('click', function() {
			Adult0--;
		
			$("#Adult0").text(Adult0);

		});
		
		
		$("#AdultPlus1").off('click').on('click', function() {
			Adult1++;
			
			$("#Adult1").text(Adult1);

		});


		$("#AdultMinus1").off('click').on('click', function() {
			Adult1--;
			
			$("#Adult1").text(Adult1);
			
		});
		
		}
		
		$(".rp_select_box").click(function(){
			if(g==0){
				$("#totalAdult").text(Adult+Adult0);	
			}
			else if(g==1){
				$("#totalAdult").text(Adult+Adult0+Adult1);	
			}
			

		});		
	


			//$("#Additional0").off('click').on('click', function(){
			//	if($("#Additional0>span").text()=="객실삭제"){
			//		$("#roomch0").remove();					
			//		$("#roomch1").find("#roomnum").text("객실"+(g+1));
			//		$("#Additional1>span").text("객실추가");
			//		g--;
			//		console.log(g);
			//	}
			//	});
			//$("#Additional1").off('click').on('click', function() {
			//	if($("#Additional1>span").text()=="객실삭제"){
			//		$("#roomch1").remove();
			//		g=-1;
			//		console.log(g);
			//	}
			//	});
	

	});
	

	






	
	






$("#search").click(function(){
	$(".rsv_bookable_list").css("display","block");

	
});

var ww =$("#money").text().replace(",","");





});



</script>
</head>
<body>
<section class="rsvSection">





<div class="rsv_container">
	<!-- 화면 이동 이미지 -->
	<div class="font_title"><h2>호텔, 날짜, 인원 선택</h2></div>
	<!-- 예약(옵션, 달력) -->
	<div class="rsv_wrap">
		<!-- 옵션 선택 -->
		<form action="roomsearch.do" method="post" name="">
	<input type="hidden" name="check_in" value=""/>
	<input type="hidden" name="check_out"value=""/>
	<input type="hidden" name="room_count"value=""/>
	<input type="hidden" name="Adult_count"value=""/>
	<input type="hidden" name="child_count"value=""/>
		<div class="rsv_box">
			<!-- 체크인 -->
			<div class="rsv_chk">
				<div class="font_content">체크인</div>
				<div class="font_content_title" id="chkInDate"><%=sf.format(nowTime) %></div>
			</div>
			<!-- 숙박 아이콘 -->
			<div class="stay">
				<div><img src=""/></div>
				<div class="font_content_title" id="result"></div>
			</div>
			<!-- 체크아웃 -->
			<div class="rsv_chk">
				<div class="font_content">체크아웃</div>
				<div class="font_content_title" id="chkOutDate"><%=tsf.format(Tomorrow) %></div>
			</div>
			<!-- 객실 -->
			<div class="rsv_cnt" onclick="rsvToggle()">
				<div>객실</div>
				<div class="font_content_title" id="room_cnt">1</div>
			</div>
			<!-- 인원 -->
			<div class="rsv_cnt"  onclick="rsvToggle()">
				<div>성인</div>
				<div class="font_content_title" id="totalAdult">2</div>
			</div>
			<div class="rsv_cnt"  onclick="rsvToggle()">
				<div>어린이</div>
				<div class="font_content_title">0</div>
			</div>
			<div class="rsv_btn_search" id="search">
				<!--  <input type="submit" value="검색"/> -->
			</div>
		
		</div><!-- 옵션 선택 -->
			</form>
		<!-- 예약 달력 -->
		<div class="rsv_calendar">
			<!-- 달력 박스-->
			<div class="calendar_box" id="calendarBox"></div>
			<!-- 버튼 -->
			<div class="confirm_btn">
				<input type="submit" value="확인" class="charge_btn_size charge_btn_color3"/>
			</div>
		</div><!-- 예약 달력 -->
		<!-- 객실인원선택 박스-->
		<div class="rsv_room_people" id="rsvRoomPeoBox">
			<div class="rp_select_box">
				<!-- 객실 1 -->
				<div class="con_room" id="roomch">
					<div class="room_cnt_box font_content_title" id="roomnum">객실 1</div>
					<div class="people_cnt_wrap" id="room">
						<!-- 성인 인원 -->
						<div class="people_cnt_box">
							<div>성인</div>
							<span>
								<a href="#" id="AdultMinus">
									<img src="../img/reservation/minus_btn.png" class="btn_m"/>
								</a>
							</span>
							<div id="Adult">2</div>
							<span>
								<a href="#" id="AdultPlus">
									<img src="../img/reservation/plus_btn.png" class="btn_m"/>
								</a>
							</span>
						</div><!-- 성인 인원 -->
						<!-- 어린이 인원 -->
						<div class="people_cnt_box">
							<div>어린이</div>
							<span>
								<a href="#" >
									<img src="../img/reservation/minus_btn.png" class="btn_m"/>
								</a>
							</span>
							<div>0</div>
							<span>
								<a href="#" >
									<img src="../img/reservation/plus_btn.png" class="btn_m"/>
								</a>
							</span>
						</div><!-- 어린이 인원 -->
					</div><!-- people_cnt_wrap -->
						<div class="add_room_box" >
						<a href="#" id="Additional" ><img src="../img/reservation/plus_btn.png" class="btn_m"><span>객실추가</span></a>
					</div>
				</div><!-- 객실 1 -->
			
				<!-- 객실 2 -->
		
			
			</div><!-- rp_select_box -->
			
			<!-- 유의사항 -->
			<ul class="noti_list">
				<li>※ 객실은 최대 3개까지 선택 가능합니다.</li>
				<li>※ 어린이 : 37개월 이상 ~ 만 12세 이하 (베트남 : 37개월 이상 ∼ 만 11세까지)</li>
			</ul>
			
			<!-- 버튼 -->
			<div class="confirm_btn">
				<input type="submit" value="확인" class="charge_btn_size charge_btn_color3"/>
			</div>
		</div>
	</div><!-- rsv_wrap -->
	
	<!-- 예약가능 객실 리스트 -->
	<div class="rsv_bookable_list">
		<!-- 아이템 정렬바 -->
		<ul class="rsv_sort">
			<li>
				<div>회원전용</div>
			</li>
			<li>
				<div>
					<select name="객실">
						<option value="">객실선택</option>
						<option value="standard">Standard</option>
						<option value="deluxe">Deluxe</option>
						<option value="suite">Suite</option>
					</select>
				</div>
			</li>
			<li>
				<div>낮은가격순</div>
			</li>
			<li>
				<div>높은가격순</div>
			</li>
		</ul>
		<!-- 객실 리스트 -->
		<ul class="room_item_wrap" id="roomItemWrap">
			
			<!-- 1 -->
			<!-- 객실 아이템 -->
			<li id="roomItem1">
				<div class="rsv_item">
					<!-- 객실 사진 -->
					<div>
						<img src="../img/reservation/room.png"/>
					</div>
					<!-- 객실명, 상세버튼 -->
					<div>
						<span class="font_con">Member Exclusive</span><br/>
						<span class="font_sub">회원전용 객실 할인</span><br/>
						<a href="#" onclick="clickPopup()">
							<span>혜택 및 이용안내</span>
							<svg class="bi bi-plus-circle" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							  <path fill-rule="evenodd" d="M8 3.5a.5.5 0 01.5.5v4a.5.5 0 01-.5.5H4a.5.5 0 010-1h3.5V4a.5.5 0 01.5-.5z" clip-rule="evenodd"/>
							  <path fill-rule="evenodd" d="M7.5 8a.5.5 0 01.5-.5h4a.5.5 0 010 1H8.5V12a.5.5 0 01-1 0V8z" clip-rule="evenodd"/>
							  <path fill-rule="evenodd" d="M8 15A7 7 0 108 1a7 7 0 000 14zm0 1A8 8 0 108 0a8 8 0 000 16z" clip-rule="evenodd"/>
							</svg>
						</a>
					</div>
					<!-- 가격, 숙박일 -->
					<div>
						<span class="font_main">243,000원</span><br/>
						<span class="font_sub">1박</span><br/>
					</div>
					<div class="rsv_btn_step1">
						<a href="#"><img src="../img/reservation/btn_rsv.jpg" alt="예약하기" class="btnRsvImg"/></a>
					</div>
				</div><!-- rsv_item -->
				<!-- 예약 상세: 배드타입 -->
				<div class="rsv_bed_wrap">
					<!-- 객실명 -->
					<div class="rsv_bed_roomName">Standard</div>
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div class="rsv_rd">
							<input type="radio" name="radioBed" id="selTwin1"/>
							<label for="selTwin1">
								<span>
									<img src="../img/reservation/twin.jpg" class="img_icon"/>
								</span>
								<span>Twin</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span >
								<span id="money">81,000</span>&nbsp;원
							</span>
						</div>
					</div><!-- 배드 아이템 -->
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div>
							<span>
								<input type="radio" name="radioBed" id="selDouble1"/>
							</span>
							<label for="selDouble1">
								<span>
									<img src="../img/reservation/double.jpg" class="img_icon"/>
								</span>
								<span>Double</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span>
								<strong>"81,000&nbsp;원"</strong>
							</span>
						</div>
					</div><!-- 배드 아이템 -->
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div>
							<span>
								<input type="radio" name="radioBed" id="selTwinTow1" />
							</span>
							<label for="selTwinTow1">
								<span>
									<img src="../img/reservation/twin.jpg" class="img_icon"/>
								</span>
								<span>Twin</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span>
								<strong>"81,000&nbsp;원"</strong>
							</span>
						</div>
					</div><!-- 배드 아이템 -->
				</div><!-- 예약 상세: 배드타입 -->
			</li><!-- 객실 아이템 -->
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<!-- 2 -->
			<!-- 객실 아이템 -->
			<li id="roomItem2">
				<div class="rsv_item">
					<!-- 객실 사진 -->
					<div>
						<img src="../img/reservation/room.png"/>
					</div>
					<!-- 객실명, 상세버튼 -->
					<div>
						<span class="font_con">Member Exclusive</span><br/>
						<span class="font_sub">회원전용 객실 할인</span><br/>
						<a href="#" onclick="clickPopup()">
							<span>혜택 및 이용안내</span>
							<svg class="bi bi-plus-circle" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							  <path fill-rule="evenodd" d="M8 3.5a.5.5 0 01.5.5v4a.5.5 0 01-.5.5H4a.5.5 0 010-1h3.5V4a.5.5 0 01.5-.5z" clip-rule="evenodd"/>
							  <path fill-rule="evenodd" d="M7.5 8a.5.5 0 01.5-.5h4a.5.5 0 010 1H8.5V12a.5.5 0 01-1 0V8z" clip-rule="evenodd"/>
							  <path fill-rule="evenodd" d="M8 15A7 7 0 108 1a7 7 0 000 14zm0 1A8 8 0 108 0a8 8 0 000 16z" clip-rule="evenodd"/>
							</svg>
						</a>
					</div>
					<!-- 가격, 숙박일 -->
					<div>
						<span class="font_main">243,000원</span><br/>
						<span class="font_sub">1박</span><br/>
					</div>
					<div class="rsv_btn_step1">
						<a href="#"><img src="../img/reservation/btn_rsv.jpg" alt="예약하기" class="btnRsvImg"/></a>
					</div>
				</div><!-- rsv_item -->
				<!-- 예약 상세: 배드타입 -->
				<div class="rsv_bed_wrap">
					<!-- 객실명 -->
					<div class="rsv_bed_roomName">Standard</div>
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div>
							<span>
								<input type="radio" name="radioBed" id="selTwin2"/>
							</span>
							<label for="selTwin2">
								<span>
									<img src="../img/reservation/twin.jpg" class="img_icon"/>
								</span>
								<span>Twin</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span>
								<strong>"81,000&nbsp;원"</strong>
							</span>
						</div>
					</div><!-- 배드 아이템 -->
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div>
							<span>
								<input type="radio" name="radioBed" id="selDouble2"/>
							</span>
							<label for="selDouble2">
								<span>
									<img src="../img/reservation/double.jpg" class="img_icon"/>
								</span>
								<span>Double</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span>
								<strong>"81,000&nbsp;원"</strong>
							</span>
						</div>
					</div><!-- 배드 아이템 -->
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div>
							<span>
								<input type="radio" id="selTwinTow2" name="radioBed"/>
							</span>
							<label for="selTwinTow2">
								<span>
									<img src="../img/reservation/twin.jpg" class="img_icon"/>
								</span>
								<span>Twin</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span>
								<strong>"81,000&nbsp;원"</strong>
							</span>
						</div>
					</div><!-- 배드 아이템 -->
				</div><!-- 예약 상세: 배드타입 -->
			</li><!-- 객실 아이템 -->
			
			<!-- 3 -->
			<!-- 객실 아이템 -->
			<li id="roomItem3">
				<div class="rsv_item">
					<!-- 객실 사진 -->
					<div>
						<img src="../img/reservation/room.png"/>
					</div>
					<!-- 객실명, 상세버튼 -->
					<div>
						<span class="font_con">Member Exclusive</span><br/>
						<span class="font_sub">회원전용 객실 할인</span><br/>
						<a href="#" onclick="clickPopup()">
							<span>혜택 및 이용안내</span>
							<svg class="bi bi-plus-circle" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							  <path fill-rule="evenodd" d="M8 3.5a.5.5 0 01.5.5v4a.5.5 0 01-.5.5H4a.5.5 0 010-1h3.5V4a.5.5 0 01.5-.5z" clip-rule="evenodd"/>
							  <path fill-rule="evenodd" d="M7.5 8a.5.5 0 01.5-.5h4a.5.5 0 010 1H8.5V12a.5.5 0 01-1 0V8z" clip-rule="evenodd"/>
							  <path fill-rule="evenodd" d="M8 15A7 7 0 108 1a7 7 0 000 14zm0 1A8 8 0 108 0a8 8 0 000 16z" clip-rule="evenodd"/>
							</svg>
						</a>
					</div>
					<!-- 가격, 숙박일 -->
					<div>
						<span class="font_main">243,000원</span><br/>
						<span class="font_sub">1박</span><br/>
					</div>
					<div class="rsv_btn_step1">
						<a href="#"><img src="../img/reservation/btn_rsv.jpg" alt="예약하기" class="btnRsvImg"/></a>
					</div>
				</div><!-- rsv_item -->
				<!-- 예약 상세: 배드타입 -->
				<div class="rsv_bed_wrap">
					<!-- 객실명 -->
					<div class="rsv_bed_roomName">Standard</div>
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div>
							<span>
								<input type="radio" name="radioBed" id="selTwin3"/>
							</span>
							<label for="selTwin3">
								<span>
									<img src="../img/reservation/twin.jpg" class="img_icon"/>
								</span>
								<span>Twin</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span>
								<strong>"81,000&nbsp;원"</strong>
							</span>
						</div>
					</div><!-- 배드 아이템 -->
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div>
							<span>
								<input type="radio" name="radioBed" id="selDouble3"/>
							</span>
							<label for="selDouble3">
								<span>
									<img src="../img/reservation/double.jpg" class="img_icon"/>
								</span>
								<span>Double</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span>
								<strong>"81,000&nbsp;원"</strong>
							</span>
						</div>
					</div><!-- 배드 아이템 -->
					<!-- 배드 아이템 -->
					<div class="rsv_bed_item">
						<div>
							<span>
								<input type="radio" name="radioBed" id="selTwinTow3" />
							</span>
							<label for="selTwinTow3">
								<span>
									<img src="../img/reservation/twin.jpg" class="img_icon"/>
								</span>
								<span>Twin</span>
							</label>
						</div>
						<div>
							<a href="#">비교함담기</a>
						</div>
						<div>
							<span>
								<a href="#">다른 날짜 요금&nbsp; &gt;</a>
							</span>
							<span>
								<strong>"81,000&nbsp;원"</strong>
							</span>
						</div>
					</div><!-- 배드 아이템 -->
				</div><!-- 예약 상세: 배드타입 -->
			</li><!-- 객실 아이템 -->
		</ul><!-- 객실 리스트 -->
	</div>
	
	<!-- 혜택및 이용 안내: 팝업창 -->
	<div class="popup" id="popup">
		<!-- title -->
		<div class="popup_head">
			<div class="popup_title">혜택 및 이용안내</div>
			<!-- close 버튼 -->
			<div>
				<a href="#" onclick="closePopup()">X</a>
			</div>
		</div>
		<!-- content -->
		<div class="popup_content">sdfsdf</div>
	</div>
	
</div><!-- rsv_container -->

<!-- 요금합계 -->
	<div class="charge_wrap">
		<div class="charge_content" >
			<div class="charge_box"id="chargeView">
				<div class="charge_total_box">
					<div class="charge_total_text"> 
						<p>요금합계</p>
						<p>부가가치세 포함</p>
					</div>
					<div class="charge_total_m" ><span id="cnt"></span>원</div>
				</div>
				<div class="charge_btn_box">
					<input type="submit" value="선택" class="charge_btn_size charge_btn_color1"
					onClick="location.href='reservation_option.html'"/>
				</div>
			</div>
		</div>
	</div><!-- 요금합계 -->
	<!-- 모달 -->
	<div id="modal"></div>
</section>
</body>
</html>