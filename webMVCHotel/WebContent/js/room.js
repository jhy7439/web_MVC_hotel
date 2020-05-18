
$(function (){
	$("#menubar>li").hover(function(){
		
		
		$(this).children("ul").css("display","block");
		
	},function(){
		$(this).children("ul").css("display","none");
	});
});

//슬라이더 룸
$(function(){
	
	$("#slider").bxSlider({
	
	mode: 'horizontal',
	slideWidth:1280, //슬라이드 폭
	slideHeight:400,//슬라이드 높이
	speed:2000,//변환속도
	auto: true, //자동시작(true, false)
	randomStart : true, //시작 슬라이드랜덤
	infiniteLoop:false,//반복여부 true, false
	hideControlOnEnd:true//처음과 마지막 컨트롤러 표시여부 true,false
	});
});


$(function(){
	//다이얼로그 이벤트 등록
	$("#dialogOpen").click(function(){
		$("#dialog").dialog('open');
	});
	//다이얼로그 플러그인 셋팅
	$("#dialog").dialog({
		autoOpen : false//실행시 자동 열림설정(true, false)
		,buttons :{
			submit : function(){
				
				var date = $("#event-date").val();
				$("#text").val(date);
				
				//$(".text").append("<p>"+date+":"+ name+"</p>");
				//등록한 일정 초기화
				
				$("#event-date").val('');
			},
			reset:function(){
				
				$("#event-date").val('');
			},
			close:function(){
				
				$("#event-date").val('');
				$("#dialog").dialog('close');//다이얼로그 창닫기
			}
		}//buttons
		,modal: true
		//,overly:{opacity: 0.5, background:'#000'}
	});
	
	//날짜 입력박스 datepicker 셋팅
	$("#event-date").datepicker({
		dateFormat : 'yy년 mm월 dd일',
		numberOfMonths : 3
	});
});

$(function(){
	//다이얼로그 이벤트 등록
	$("#dialogOpen1").click(function(){
		$("#dialog1").dialog('open');
	});
	//다이얼로그 플러그인 셋팅
	$("#dialog1").dialog({
		autoOpen : false//실행시 자동 열림설정(true, false)
		,buttons :{
			submit : function(){
				
				var date = $("#event-date1").val();
				$("#text1").val(date);
				
				//$(".text").append("<p>"+date+":"+ name+"</p>");
				//등록한 일정 초기화
				
				$("#event-date1").val('');
			},
			reset:function(){
				
				$("#event-date1").val('');
			},
			close:function(){
				
				$("#event-date1").val('');
				$("#dialog1").dialog('close');//다이얼로그 창닫기
			}
		}//buttons
		,modal: true
		//,overly:{opacity: 0.5, background:'#000'}
	});
	
	//날짜 입력박스 datepicker 셋팅
	$("#event-date1").datepicker({
		dateFormat : 'yy년 mm월 dd일',
		numberOfMonths : 3
	});
});



$(function(){
	//다이얼로그 이벤트 등록
	$("#dialogOpen").click(function(){
		$("#dialog").dialog('open');
	});
	//다이얼로그 플러그인 셋팅
	$("#dialog").dialog({
		autoOpen : false//실행시 자동 열림설정(true, false)
		,buttons :{
			submit : function(){
				var name = $("#event-name").val();
				var date = $("#event-date").val();
				
				$("#result").append("<p>"+date+":"+ name+"</p>");
				//등록한 일정 초기화
				$("#event-name").val('');
				$("#event-date").val('');
			},
			reset:function(){
				$("#event-name").val('');
				$("#event-date").val('');
			},
			close:function(){
				$("#event-name").val('');
				$("#event-date").val('');
				$("#dialog").dialog('close');//다이얼로그 창닫기
			}
		}//buttons
		,modal: true
		//,overly:{opacity: 0.5, background:'#000'}
	});
	
	//날짜 입력박스 datepicker 셋팅
	$("#event-date").datepicker({
		dateFormat : 'yy년 mm월 dd일',
		numberOfMonths : 3
	});
});
