$(function(){
	$("#moreBtn").on({mouseenter:function(){
		$(this).css("color", "gray").css("background-color", "white");
	}, mouseleave:function(){
		$(this).css("color", "white").css("background-color", "transparent");
	}});
		
	$("#btnGroup>button").on({mouseenter:function(){
		$(this).css("color", "black").css("font-weight", "bold");
	}, mouseleave:function(){
		$(this).css("color", "gray").css("font-weight", "");
	}});
});