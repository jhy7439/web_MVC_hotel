$(function(){
	//슬라이드 이동하는 함수
	function slideMove(index){
		//이미지 이동
		
		var imgMove =-(index*600);
		
		$("#imgList").animate({marginLeft:imgMove+'px'},500);
		
		//텍스트이동
		$("#slideTxt>div").css("margin-left","0");
		$("#slideTxt>div").eq(index).delay(1000).animate({marginLeft:"500px"},500);
		
		//컨트롤 색상변경
		$("#control>div").removeClass("iconBlue");
		$("#control>div").eq(index).addClass("iconBlue");
	}
	
	
	$("#control>div").hover(function(){
		
		$(this).addClass("iconGray");
		
	},function(){
		$(this).removeClass("iconGray");
	});
	
	
	$("#control>div").on('click',function(){
		var i=$("#control>div").index(this);
		
		slideMove(i);
		
	});
	
	
	//난수 만들기 -> 처음 이동할 난수
	var idx = parseInt(Math.random()*6);
	slideMove(idx);
	
	
	
});