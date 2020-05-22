
$(function (){
	
	
	
	//var imgChangCnt=1;//예약하기 버튼 이미지 변경 cnt
	$(".btnRsvImg").click(function(){
		 var imgTag = $(this).attr("src");
		 
		//예약하기 버튼 이미지 변경
		if(imgTag.indexOf("btn_rsv")!=-1){//닫기로 변경
			$(this).attr("src","../img/reservation/btn_close.jpg");
			//배드선택 div 열기
			$(this).closest(".rsv_item").next().css("display","block");
			//imgChangCnt=0;
			 return false;//a태그 #링크 움직임 막기 용도
		}else if(imgTag.indexOf("btn_close")!=-1){//예약하기로 변경
			$(this).attr("src","../img/reservation/btn_rsv.jpg");
			//배드선택 div 닫기
			$(this).closest(".rsv_item").next().css("display","none");
			//imgChangCnt=1;
			 return false;//a태그 #링크 움직임 막기 용도
		}
	});
	
	 // 라디오버튼 클릭시 이벤트 발생
    $(".room_item_wrap input:radio").click(function(){
    	
    	//테두리 색상 변경
        if($(this).is(":checked")){
        	
           $(".rsv_bed_item").css("border-top","1px solid #dcdcdc").css("border-bottom","1px solid #dcdcdc")
           .css("border-left","1px solid #dcdcdc").css("border-right","1px solid #dcdcdc");
        	$(this).closest(".rsv_bed_item").css("border","2px solid #856f56");
          // radio 버튼의 value 값이 1이라면 활성화
           //나머지 라디오 버튼 border 초기화
        	$("#chargeSelect").css("display","block");
        }
	
    });
    
    
  //조식, 디너 cnt
	//cnt 감소
	$('#btnMinus1').click(function(){
		var stat = $('#brfAdultCnt').text();
		var num = parseInt(stat,10);
		num--;
    	
		if(num<=-1){
    		alert('더이상 줄일수 없습니다.');
    		num =0;
    	}
		$('#brfAdultCnt').text(num);
	});
	$('#btnMinus2').click(function(){
		var stat = $('#dinnerAdultCnt').text();
		var num = parseInt(stat,10);
		num--;
    	
		if(num<=-1){
    		alert('더이상 줄일수 없습니다.');
    		num =0;
    	}
		$('#dinnerAdultCnt').text(num);
	});
	$('#btnMinus3').click(function(){
		var stat = $('#brfChildCnt').text();
		var num = parseInt(stat,10);
		num--;
    	
		if(num<=-1){
    		alert('더이상 줄일수 없습니다.');
    		num =0;
    	}
		$('#brfChildCnt').text(num);
	});
	$('#btnMinus4').click(function(){
		var stat = $('#dinnerChildCnt').text();
		var num = parseInt(stat,10);
		num--;
    	
		if(num<=-1){
    		alert('더이상 줄일수 없습니다.');
    		num =0;
    	}
		$('#dinnerChildCnt').text(num);
	});
	
	//cnt 증가
	$('#btnPlus1').click(function(){
		
    	var stat = $('#brfAdultCnt').text();
    	var num = parseInt(stat,10);
    	num++;

    	if(num>50){
	    	alert('더이상 늘릴수 없습니다.');
	    	num=50;
	    }
	    $('#brfAdultCnt').text(num);
    });
	$('#btnPlus2').click(function(){
			
	    	var stat = $('#dinnerAdultCnt').text();
	    	var num = parseInt(stat,10);
	    	num++;
	
	    	if(num>50){
		    	alert('더이상 늘릴수 없습니다.');
		    	num=50;
		    }
		    $('#dinnerAdultCnt').text(num);
	    });
	$('#btnPlus3').click(function(){
		
		var stat = $('#brfChildCnt').text();
		var num = parseInt(stat,10);
		num++;
	
		if(num>50){
	    	alert('더이상 늘릴수 없습니다.');
	    	num=50;
	    }
	    $('#brfChildCnt').text(num);
	});
	$('#btnPlus4').click(function(){
		
		var stat = $('#dinnerChildCnt').text();
		var num = parseInt(stat,10);
		num++;
	
		if(num>50){
	    	alert('더이상 늘릴수 없습니다.');
	    	num=50;
	    }
	    $('#dinnerChildCnt').text(num);
	});
	 
	//달력
		$('.rsv_chk').daterangepicker({
		    opens: 'left'
		  }, function(start, end, label) {
		    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
		    $("#chkInDate").text(start.format('YYYY-MM-DD'));
		    $("#chkOutDate").text(end.format('YYYY-MM-DD'));
		  });

});


var now = new Date();


//popup 메뉴
function clickPopup(){
	document.getElementById("popup").style.display ="block";//공지창
	document.getElementById("modal").style.display = "block";//모달이 보이게 한다.
	document.body.style.overflow ="hidden";
}
//공지사항 창 닫기
function closePopup(){
	document.getElementById("popup").style.display = "none";
	document.getElementById("modal").style.display = "none";
	document.body.style.overflow ="scroll";
}

//객실인원예약 토글
function rsvToggle(){
	
	 var div = document.getElementById("rsvRoomPeoBox");
	 if(div.style.display=="none"){
		 div.style.display = "block";
	 }else{
		 div.style.display = "none";
	 }
}
