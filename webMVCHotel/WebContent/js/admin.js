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
		if($("#bed_rate").val() == ""){
			alert("추가금액을 입력하세요.");
			return false;//submit 이벤트 중지
		}
		
	});
	

	//침대 추가요금 3자리마다  ,//금액 입력 시 숫자만 표기//포커스가 사라지면 콤마를 추가하여 금액 표기
	$('#bed_rate').on('focus',function(){
		var rate = $('#bed_rate').val();
		if(!isEmpty(rate)){
			rate = rate.replace(/,/g,'');
			$('#bed_rate').val(rate);
		}
	});
	
	$('#bed_rate').on('blur',function(){
		var rate = $('#bed_rate').val();
		if(!isEmpty(rate) && isNumeric(rate)){
			rate = currencyFormatter(rate);
			$('#bed_rate').val(rate);
		}
	});
	//숫자만 입력
	$("#bed_rate").on("keyup", function() {
	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	});
	//침대타입 글자수 제한
	$('#bed_type').keyup(function(){ 
		if ($(this).val().length > $(this).attr('maxlength')) {
			alert('제한길이 초과'); 
			$(this).val($(this).val().substr(0, $(this).attr('maxlength'))); 
		} 
	});
	
	//이미지 업로드(미리보기 1개)
	   //var sel_file;
	   //$("#mImgInput").on("change", handleImgFileSelect);
	   $("#mainImgInp").change(function(){
	      readImgURL(this);
	   })
	   
	   //다중 이미지 업로드(미리보기 여러개)
	   var imgs =[];
	   $("#subImgInp").on("change", function(e){
	      // 이미지 정보들을 초기화
	      imgs =[];
	      $("#subImgs").empty();
	      
	      var files = e.target.files;
	      var filesArr = Array.prototype.slice.call(files);
	      
	      filesArr.forEach(function(f){
	         if(f.type.match("image/png|image/gif|image/jpeg|image/bmp|image/jpg") 
	               && f.size<2097152){
	            
	        	imgs.push(f);
	            var reader = new FileReader();
	            reader.onload = function(e){
	               var imgThumb = '<div class="img_wrap"><img src="'+e.target.result+'"></div>';
	               $("#subImgs").append(imgThumb);
	            }
	            reader.readAsDataURL(f);
	         }else{
	            alert("2mb이하 이미지 파일만 업로드 가능합니다.");
	            $('#subImgInp').val('');
	            return false;
	         }
	      });
	   });//다중 이미지 업로드(미리보기 여러개)
	
	   
	 //다중 이미지 업로드(미리보기 여러개)
	   
	   $("#subImgInp").on("change", function(e){
	      // 이미지 정보들을 초기화
	      imgs =[];
	      $("#subImgs").empty();
	      
	      var files = e.target.files;
	      var filesArr = Array.prototype.slice.call(files);
	      
	      filesArr.forEach(function(f){
	         if(f.type.match("image/png|image/gif|image/jpeg|image/bmp|image/jpg") 
	               && f.size<2097152){
	            
	        	imgs.push(f);
	            var reader = new FileReader();
	            reader.onload = function(e){
	               var imgThumb = '<div class="img_wrap"><img src="'+e.target.result+'"></div>';
	               $("#subImgs").append(imgThumb);
	            }
	            reader.readAsDataURL(f);
	         }else{
	            alert("2mb이하 이미지 파일만 업로드 가능합니다.");
	            $('#subImgInp').val('');
	            return false;
	         }
	      });
	   });//다중 이미지 업로드(미리보기 여러개)
	
	
});

//이미지 업로드 핸들러 이미지 업로드(미리보기 1개)
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




