
$(function (){
	$("#menubar>li").hover(function(){
		
		
		$(this).children("ul").css("display","block");
		
	},function(){
		$(this).children("ul").css("display","none");
	});
});


