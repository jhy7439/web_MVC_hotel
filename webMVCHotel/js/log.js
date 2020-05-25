$(function(){
	

 var txt = "Javascript and html and css";
	//정규표현식
	var reg = /html/i; 
	
	var result = reg.test(txt);
	


 	function emailChk(){
 		alert("정상적으로 이메일을 발송하였습니다. \n이메일에 포함된 인증 링크를 통해 가입을 게속 진행하실 수 있습니다.");
 	}
 
 var txt = "Javascript and html and css";
	//정규표현식
	var reg = /html/i; 
	
	var result = reg.test(txt);
	
	function regExpChk(){
		// ^ : 처음부터 ,  $ : 끝까지
		//아이디 검사 : 첫번째문자는 영문자, 영, 숫자, _만 허용, 5~20글자까지 허용
		reg = /^[a-zA-Z]{1}\w{4,19}$/; // [a-zA-Z0-9_] = \w: 영어 대소문자,숫자,_
		
		if(!reg.test(document.getElementById("id").value)){
			alert("아이디 첫번째문자는 영문자, 영, 숫자, _만 허용, 5~20글자까지만 허용합니다.");
			return false;
		}
		
		//비밀번호 검사 : 첫번째문자는 영문자, 영, 숫자, _만 허용, 8~16글자까지 허용
		reg = /^[a-zA-Z]{1}\w{7,15}$/; // [a-zA-Z0-9_] = \w: 영어 대소문자,숫자,_
		
		if(!reg.test(document.getElementById("pw1").value)){
			alert("비밀번호는 첫번째문자는 영문자, 영, 숫자, _만 허용, 8~16글자까지만 허용합니다.");
			return false;
		}
		
		//비밀번호확인 검사 : 첫번째문자는 영문자, 영, 숫자, _만 허용, 8~16글자까지 허용
		/*
		reg = /^[a-zA-Z]{1}\w{7,15}$/; // [a-zA-Z0-9_] = \w: 영어 대소문자,숫자,_
		
		if(!reg.test(document.getElementById("pw2").value)){
			alert("비밀번호확인은 첫번째문자는 영문자, 영, 숫자, _만 허용, 8~16글자까지만 허용합니다.");
			return false;
		}
		*/
		
		//이름검사 : 한글이여야한다. 2~5글자 까지
		reg = /^[가-힣]{2,5}$/;
		if(!reg.test(document.getElementById("kname").value)){
			alert("이름은 2~5글자까지 가능합니다.");
			return false;
		}
		
		//출생연도1~4숫자
		reg = /^[0-9]\w{0,3}$/;
		if(!reg.test(document.getElementById("year").value)){
			alert("출생연도는 숫자 1~4까지만 허용합니다.");
			return false;
		}
		
		//핸드폰1
		reg = /^\d{3}$/;
		if(!reg.test(document.getElementById("t1").value)){
			alert("휴대번호 앞 번호는 3자리 이어야 합니다.");
			return false;
		}
		
		//핸드폰2
		reg = /^\d{3,4}$/;
		if(!reg.test(document.getElementById("t2").value)){
			alert("휴대번호 중간 번호는 3,4자리 이어야 합니다.");
			return false;
		}
		
		//핸드폰3
		reg = /^\d{4}$/;
		if(!reg.test(document.getElementById("t3").value)){
			alert("휴대번호 뒷 번호는 4자리 이어야 합니다.");
			return false;
		}
		
		//이메일   8~12자  @  			2~10자 .   
		reg = /^\w{8,20}[@][a-zA-Z]{2,10}[.][a-zA-Z]{2,3}([.][a-zA-Z]{2,3})?$/;
		
		if(!reg.test(document.getElementById("e").value)){
			alert("이메일을 잘못입력하셨습니다.");
			return false;
		}
	} 


$(function(){  
	$("#allCheck").click(function(){ //전체선택 체크박스 클릭
		var s=$("#allCheck").prop("checked");//만약 전체 선택 체크박스가 체크된상태일경우 
		$("#frame input[type=checkbox]").prop("checked",s); //해당화면에 전체 checkbox들을 체크해준다
	});
});

});