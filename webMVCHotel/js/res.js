	$(function(){
		var count=0;	
		var i=0;
		var plus=1;
		$("#resPagerContent>p>span").text(count+plus+"/"+"5");
		$("#resPagerTitle>h1").text('아시안 라이브 - 가족 모임을 위한 완벽한 식사');
		$("#resPagerContent>p>button:first-child").on("click",function(){
			
			i =-(count*510);
			count--;
			
			$("#imgList>img").animate({top:i+'px'});
			
			if(count<=-1){
				count=0;
				plus--;
				if(plus==0){
					plus=1;
				}
			}
		
			$("#resPagerContent>p>span").text(count+plus+"/"+"5");
			if(count+plus==1){
				$("#resPagerTitle>h1").text('아시안 라이브 - 가족 모임을 위한 완벽한 식사');
			
			}else if(count+plus==2){
				$("#resPagerTitle>h1").text('이탈리아의 풍미를 더한 피아토 우니코');
			
			}else if(count+plus==3){
				$("#resPagerTitle>h1").text('프리마베라 애프터눈 티');
			
			}else if(count+plus==4){
				$("#resPagerTitle>h1").text('루카 셰프가 선보이는 이달의 시그니처 디너');
	
			}else if(count+plus==5){
				$("#resPagerTitle>h1").text('‘섬머 프리미엄 빙수’');
		
			}
			
						
		});
		$("#resPagerContent>p>button:nth-child(3)").on("click",function(){

			
			count+=1;
			i = -(count*510);
			$("#imgList>img").animate({top:i+'px'});
			if(count>=4){
				count=3;
				plus++;
				if(plus==3){
					plus=2;
				}
			}
			
			$("#resPagerContent>p>span").text(count+plus+"/"+"5");
			
			if(count+plus==1){
				$("#resPagerTitle>h1").text('아시안 라이브 - 가족 모임을 위한 완벽한 식사');
			
			}else if(count+plus==2){
				$("#resPagerTitle>h1").text('이탈리아의 풍미를 더한 피아토 우니코');
			
			}else if(count+plus==3){
				$("#resPagerTitle>h1").text('프리마베라 애프터눈 티');
			
			}else if(count+plus==4){
				$("#resPagerTitle>h1").text('루카 셰프가 선보이는 이달의 시그니처 디너');
	
			}else if(count+plus==5){
				$("#resPagerTitle>h1").text('‘섬머 프리미엄 빙수’');
		
			}
			
		});
		
		
		
	});
	
	
	
	
	
	
	
	
	
	