
	$(function(){
		$("#innerImg").bxSlider({
			mode: 'horizontal'//화면전환 방식( 기본='horizontal', 'vertical', 'fade')
			,slideWidth:1280 //슬라이드 폭
			,slideHeight:150 //슬라이드 높이
			
			//,speed:2000 //변환속도
			,auto: true // 자동시작(true, false)
			//,randomStart : true // 시작슬라이드 랜덤 
			,captions:false // 설명표시()->title속성의 값을 설명으로 표시한다.
			//,ticker:true// 자막처럼 움직임 true, false
			,infiniteLoop:false//반복여부 true, false
			//,adaptiveHeight:true//이미지크기에 따라 높이 조절
			,hideControlOnEnd:true//처음과 마지막 컨트롤러 표시여부 true, false
			,controls:false
			//easing
			,useCSS:true// easing사용여부(true:사용, false:사용안함)
			
			//,onSliderLoad:function(){//슬라이드가 로딩이 완료 되면 호출되는 함수
			//	alert("onSliderLoad에서 호출됨");
			//}
			,onSlideAfter:function(){//슬라이드가 움직인후 호출되는 함수
				console.log("onSliderAfter에서 실행됨...");
				}
		});
		

		
		
		
		
		
		
		
		
		
		
		
		
		
	});