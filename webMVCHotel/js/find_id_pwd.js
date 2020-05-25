$(function(){
	$("#telChk").click(function(){
		$("#telChk").css('border', 'none').css('border-top', '2px solid #9C836A').css('border-left', '2px solid #9C836A').css('border-right', '2px solid #9C836A');
		$("#emailChk").css('border', 'none').css('border-bottom', '2px solid #9C836A').css('border-top', '1px solid gray').css('border-right', '1px solid gray');
		$("#showTel").show();
		$("#showEmail").hide();
	});
		
	$("#emailChk").click(function(){
		$("#telChk").css('border', 'none').css('border-bottom', '2px solid #9C836A').css('border-top', '1px solid gray').css('border-left', '1px solid gray');
		$("#emailChk").css('border', 'none').css('border-top', '2px solid #9C836A').css('border-left', '2px solid #9C836A').css('border-right', '2px solid #9C836A');
		$("#showTel").hide();
		$("#showEmail").show();
	});
});