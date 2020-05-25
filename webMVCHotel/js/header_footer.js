var scrollValue;
$(function (){
	$("#menubar>li").hover(function(){
		
		
		$(this).children("ul").css("display","block");
		
	},function(){
		$(this).children("ul").css("display","none");
	});
	
	
	
	$(window).scroll(function (){
		scrollValue = $(document).scrollTop();
	
if(scrollValue>=200){
	
	$("#crown>a>img").attr("src","img/logo2.PNG");
	$("#crown>a>img").css("width","100%").css("height","40px").css("background-color","none").css("margin-top","-5px");
	$("#menubar>li").css("width","15.8%").css("float","left");
	$("#menubar>li:nth-child(4)").css("width","50px");
	$("#menubar>li").css("text-align","center");
	
}else if(scrollValue<200){
	
	$("#crown>a>img").attr("src","img/logo1.PNG").css("width","100%").css("height","60px").css("background-color","none").css("margin-top","-20px");
	$("#menubar>li").css("width","13.7%").css("text-align","center").css("float","left").css("transition-duration","0.5s");
}
	});
});


