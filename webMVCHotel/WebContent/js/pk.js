var scrollValue;
var tagImg =['../img/8126.jpg','../img/8132.png','../img/7867.png','../img/5648.png','../img/7920.jpg','../img/7867.png'];
var count=0;
$(function (){
	
		for(i=0;i<=5;i++){
			count++;
		$("#homeRoomPackageItem>div:nth-child("+count+")").append("<img src='"+tagImg[i]+"'/>");
		}
		
	$(window).scroll(function (){
			scrollValue = $(document).scrollTop();
		

	
	//3862
	
	if(scrollValue>=1966){
		$("#resPager").css("transform","translateY(-30px)").css("transition-duration","3s");
	}else if(scrollValue<1966){
		$("#resPager").css("transform","translateY(0px)").css("transition-duration","3s");
	}
	
	
	console.log(scrollValue);
	if(scrollValue>=600){
		//$("#moveImg").animate({marginTop:"30px"},"fast");
		//$("#moveImg").animate({transform:"translateY(30px)"});
		$("#homeRoomPackageItem>div:nth-child(1)>img").css("transform","translateY(30px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(1)>p").css("transform","translateX(-30px)").css("opacity","1").css("transition-duration","3s");
	}else if(scrollValue<600){
		//$("#moveImg").animate({marginTop:0},"fast");
		//$("#moveImg").animate({transform:"translateY(0px)"});
		$("#homeRoomPackageItem>div:nth-child(1)>img").css("transform","translateY(0px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(1)>p").css("transform","translateX(0px)").css("opacity","0").css("transition-duration","3s");
	}
	
	
	if(scrollValue>=1039){
		//$("#moveImg").animate({marginTop:"30px"},"fast");
		//$("#moveImg").animate({transform:"translateY(30px)"});
		$("#homeRoomPackageItem>div:nth-child(2)>img").css("transform","translateY(30px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(2)>p").css("transform","translateX(30px)").css("opacity","1").css("transition-duration","3s");
	}else if(scrollValue<1039){
		//$("#moveImg").animate({marginTop:0},"fast");
		//$("#moveImg").animate({transform:"translateY(0px)"});
		$("#homeRoomPackageItem>div:nth-child(2)>img").css("transform","translateY(0px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(2)>p").css("transform","translateX(0px)").css("opacity","0").css("transition-duration","3s");
	}
	if(scrollValue>=1839){
		//$("#moveImg").animate({marginTop:"30px"},"fast");
		//$("#moveImg").animate({transform:"translateY(30px)"});
		$("#homeRoomPackageItem>div:nth-child(3)>img").css("transform","translateY(30px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(3)>p").css("transform","translateX(-30px)").css("opacity","1").css("transition-duration","3s");
	}else if(scrollValue<1839){
		//$("#moveImg").animate({marginTop:0},"fast");
		//$("#moveImg").animate({transform:"translateY(0px)"});
		$("#homeRoomPackageItem>div:nth-child(3)>img").css("transform","translateY(0px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(3)>p").css("transform","translateX(0px)").css("opacity","0").css("transition-duration","3s");
	}
	
	
	if(scrollValue>=2379){
		//$("#moveImg").animate({marginTop:"30px"},"fast");
		//$("#moveImg").animate({transform:"translateY(30px)"});
		$("#homeRoomPackageItem>div:nth-child(4)>img").css("transform","translateY(30px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(4)>p").css("transform","translateX(30px)").css("opacity","1").css("transition-duration","3s");
	}else if(scrollValue<2379){
		//$("#moveImg").animate({marginTop:0},"fast");
		//$("#moveImg").animate({transform:"translateY(0px)"});
		$("#homeRoomPackageItem>div:nth-child(4)>img").css("transform","translateY(0px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(4)>p").css("transform","translateX(0px)").css("opacity","0").css("transition-duration","3s");
	}
	if(scrollValue>=2979){
		//$("#moveImg").animate({marginTop:"30px"},"fast");
		//$("#moveImg").animate({transform:"translateY(30px)"});
		$("#homeRoomPackageItem>div:nth-child(5)>img").css("transform","translateY(30px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(5)>p").css("transform","translateX(-30px)").css("opacity","1").css("transition-duration","3s");
	}else if(scrollValue<2979){
		//$("#moveImg").animate({marginTop:0},"fast");
		//$("#moveImg").animate({transform:"translateY(0px)"});
		$("#homeRoomPackageItem>div:nth-child(5)>img").css("transform","translateY(0px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(5)>p").css("transform","translateX(0px)").css("opacity","0").css("transition-duration","3s");
	}
	
	
	if(scrollValue>=3579){
		//$("#moveImg").animate({marginTop:"30px"},"fast");
		//$("#moveImg").animate({transform:"translateY(30px)"});
		$("#homeRoomPackageItem>div:nth-child(6)>img").css("transform","translateY(30px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(6)>p").css("transform","translateX(30px)").css("opacity","1").css("transition-duration","3s");
	}else if(scrollValue<3579){
		//$("#moveImg").animate({marginTop:0},"fast");
		//$("#moveImg").animate({transform:"translateY(0px)"});
		$("#homeRoomPackageItem>div:nth-child(6)>img").css("transform","translateY(0px)").css("transition-duration","3s");
		$("#homeRoomPackageItem>div:nth-child(6)>p").css("transform","translateX(0px)").css("opacity","0").css("transition-duration","3s");
	}
	
	
	
	
	});
});
	
	
//	$("#moveImg").animate({marginTop:"30px"},2000);
	//$("#RoomPackageDescription").animate({opacity:1},3000);	






