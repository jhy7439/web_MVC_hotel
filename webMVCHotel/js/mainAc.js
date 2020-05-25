
$(function (){
	$("#mainAc>div").hover(function(){
		$(this).children("div").css("display","block").css("opacity","0.8");
		$(this).children("h1").css("display","none");
	},function(){
		$(this).children("div").css("display","none").css("opacity","1");
		$(this).children("h1").css("display","block");
	});
});

//
//$(function (){
//	$("#mainAc>div").hover(function(){
//		
//		
//		$(this).children("div").css("display","block");
//		
//	},function(){
//		$(this).children("div").css("display","none");
//	});
//});
//
