$(function(){
	//메인매뉴바
	$("#menu>li").hover(function(){
		$(this).children("ul").css("display","block");
	},function(){
		$(this).children("ul").css("display","none");
	});
	
	//침대 등록 submit 유효성
	$("#bedFrm").submit(function(){
		if($("#bed_type").val() == ""){
			alert("침대타입을 입력하세요.");
			return false;//submit 이벤트 중지
		}
		if($("#price").val() == ""){
			alert("금액을 입력하세요.");
			return false;//submit 이벤트 중지
		}	
	});
	

	//침대 추가요금 3자리마다  ,//금액 입력 시 숫자만 표기//포커스가 사라지면 콤마를 추가하여 금액 표기
	$('#price').on('focus',function(){
		var rate = $('#price').val();
		if(!isEmpty(rate)){
			rate = rate.replace(/,/g,'');
			$('#price').val(rate);
		}
	});
	
	$('#price').on('blur',function(){
		var rate = $('#price').val();
		if(!isEmpty(rate) && isNumeric(rate)){
			rate = currencyFormatter(rate);
			$('#price').val(rate);
		}
	});
	//숫자만 입력
	$("#price").on("keyup", function() {
	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	
	//침대타입 글자수 제한
	$('#bed_type').keyup(function(){ 
		if ($(this).val().length > $(this).attr('maxlength')) {
			alert('제한길이 초과'); 
			$(this).val($(this).val().substr(0, $(this).attr('maxlength'))); 
		} 
	});
	
	 //메인이미지 업로드(미리보기 1개)
     $("#mainImgInp").change(function(){
       readImgURL(this);
     })
	   
	 //서브이미지 input 폼추가
     var maxInput = 10;//최대 개수
     var extcnt =0;//최초 카운트 1
     
     $(document).on("click","#btnAddImg",function(){

    	 var fieldHTML = '<div class="inpBox"><input type="file" name="subImgInp'+extcnt+'" id="subImgInp'+extcnt+'"' 
         +'"accept="image/png, image/jpeg, image/gif, image/bmp, image/jpg"/>'
         +'<div id="subImgs'+extcnt+'" class="img_wrap"><img src="" alt="서브이미지" name="subImg'+extcnt+'" id="subImg'+extcnt+'"/></div><button type="button">삭제</button></div>';
    	 
    	 if($("#mainImg").attr("src")=="" || $("#mainImg").attr("src")==null){
			alert("메인 이미지를 등록하세요.");
			return false;
    	 }
    	 $("#inpWrap").css("display","block");
           if(extcnt < maxInput){
        	   extcnt++; // 숫자 증가
        	   console.log("extcnt ="+extcnt);
               $('#inpWrap').append(fieldHTML); // Add field
           }else{
              alert("이미지는 최대 10개까지 업로드 가능합니다.");
              return false;
           }
       });
     
     //서브 폼 이미지 미리보기
     $("#inpWrap").on('change','.inpBox>input', function(){
    	//input 아이디 구한다
    	 var inpId= $(this).attr("id");
    	 readSubImgURL(this, inpId);
     });
     
   //서브이미지 input 폼 삭제
   $("#inpWrap").on('click','.inpBox>button', function(){
	   $(this).parent('div').remove(); // Remove field
       extcnt--; // 카운트 감소
       if(extcnt==0){
    	   $("#inpWrap").css("display","none");
       }
   });
   

});


//서브 이미지 업로드 핸들러 이미지 업로드
function readSubImgURL(input, inpId){
   var url = input.value;
   var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
   var inp = document.getElementById(inpId);
   var divFrm = inp.nextSibling;
   var img = divFrm.childNodes;

   if(input.files && input.files[0] &&
   (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")){
      var reader = new FileReader();
      //img 비우기
     $(img).empty();
      reader.onload = function(e){
    	  //img 채우기
    	 $(img).attr("src", e.target.result);
      }
      
      reader.readAsDataURL(input.files[0]);
   }
}


//메인 이미지 업로드(미리보기 1개)
function readImgURL(input){

   var url = input.value;
   var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
   if(input.files && input.files[0] &&
   (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")){
      var reader = new FileReader();
      $("#mainImg").empty();
      reader.onload = function(e){
         $("#mainImg").attr("src", e.target.result);
      }
      
      reader.readAsDataURL(input.files[0]);
   }
}

//null check
function isEmpty(value){
	if(value.length == 0 || value==null){
		return true;
	}else{
		return false;
	}
}

// Number check with Regular expression
function isNumeric(value){
	var regExp = /^[0-9]+$/g;
	return regExp.test(value);
}

//숫자 세자리 마다 콤마를 추가하여 금액 표기 형태로 변환
function currencyFormatter(amount){
	return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
}



//영어,한글 
function regExpChk(obj, maxByte){
	var reg = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|\*]+$/;
	var check_num = /[0-9]/;
    var check_spc = /[~!@#$%^&*()_+|<>?:{}]/;//특수문자
    var bed_type = document.getElementById("bed_type").value;
    
	if (check_spc.test(bed_type) || check_num.test(bed_type) ){
		console.log("유효성 테스트");
		document.getElementById("bed_type").value ="";
		alert("숫자와 특수문자는 입력할 수 없습니다.");
	    return false;
   }
	
	//글자수 체크
	var strValue = obj.value;
	var strLen = strValue.length;
	var totalByte =0
	var len = 0;
	var oneChar ="";
	var str2 ="";
	//한글 2바이트, 영문 1바이트
	for(var i =0; i<strLen; i++){
		oneChar = strValue.charAt(i);
		if(escape(oneChar).length>4){//escape함수: 한글이면  자리수 6자리로 변환
			totalByte +=2;
		}else{
			totalByte++;
		}
		//입력한 문자 길이보다 넘치면 잘라낸다
		if(totalByte <= maxByte){
			len = i + 1;
		}
	}
	
	//넘어가는 글자는 자른다.
	if(totalByte > maxByte){
		alert(maxByte+"자를 초과 입력 할 수 없습니다.");
		str2 = strValue.substr(0, len);
		obj.value =str2;
		korEnChk(obj, 4000);
	}	
}

//숫자만 입력
function inputNumChk(){
	var chk_num = /[0-9]/;	// 숫자 
	var chk_eng = /[a-zA-Z]/;	// 문자 
	var chk_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
	var chk_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크
	
	if((chk_num.test(str)) && 
		!(chk_eng.test(str)) && 
		!(chk_spc.test(str)) && 
		!(chk_kor.test(str))){
		return true;
	}else{
		alert("숫자만 입력 가능합니다.");
		return false;
	}
}
//객실타입 정규식
var reg = /html/i;
function rTypeRegExpChk(){
	reg = /^[a-zA-Z]{1}\w{5,30}$/;
	if(!reg.test(document.getElementById("room_type").value)){
		alert("객실타입은 첫번쨰 문자는 영문자(대소상관없이), 영,숫자만 허용, 5~30글자까지 허용합니다.");
		return false;
	}
	//위치 검사 : 한글만 허용, 2~20글자 까지
	reg = /^[가-힣|ㄱ-ㅎ|0-9]{2,20}$/;
	if(!reg.test(document.getElementById("room_loc").value)){//없으면
		alert("위치 한글만 2~20글자까지 가능합니다.");
		return false;
	}
	
	return true;
	
}


//이미지 미리보기 삭제
//$(document).on("click","#subImgs>div",function(){
//		 if (confirm("정말 삭제하시겠습니까??") == true){    //확인
//			 //서버파일지우기
//			 //var f = $(this).childen("img").attr("src");
//			 $(this).remove();
//			 
//		 }
//});	



//다중 이미지 업로드(미리보기 여러개)
//var imgs =[];
//
//$("#subImgInp").on("change", function(e){
//   // 이미지 정보들을 초기화
//   imgs =[];
//   $("#subImgInp").empty();
//   $("#subImgs>div").remove();
//   files = e.target.files;
//   console.log(files);
//   var filesArr = Array.prototype.slice.call(files);
//
//   console.log(filesArr);
//   var index=0;
//   filesArr.forEach(function(f){
//      if(f.type.match("image/png|image/gif|image/jpeg|image/bmp|image/jpg") 
//            && f.size<2097152){
//         
//     	imgs.push(f);
//         
//     	var reader = new FileReader();
//         reader.onload = function(e){
//            var imgThumb = '<div class="img_box" id="subImg'+index+'"><img src="'+e.target.result+'"></div>';
//            $("#subImgs").append(imgThumb);
//            index++;
//         }
//         reader.readAsDataURL(f);
//      }else{
//         alert("2mb이하 이미지 파일만 업로드 가능합니다.");
//         $('#subImgInp').val('');
//         return false;
//      }
//   });
//});//다중 이미지 업로드(미리보기 여러개)