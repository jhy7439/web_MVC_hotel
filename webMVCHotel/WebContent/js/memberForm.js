$(function (){	
	//
	$("#idSet").click(function(){
		opener.document.getElementById("user_id").value= $("#idSerch").text() ;
		opener.document.getElementById("idStatus").value= "Y";
		self.close();
	});
	
	
	
	//중복검사하지않은 아이디는 N으로 변경한다.
	$("#user_id").keyup(function(){
		$("#idStatus").val("N");
	});
	
	//유효성검사
	$("#memberFrm").on("submit",function(){
		//아이디
		if($("#idStatus").val()== "N"){
			alert("아이디를 중복체크를하세요.");
			return false;
		}
		if($("#userpwd").val()== "" ||$("#userpwd2").val() == ""){
			alert('비밀번호를 입력하세요..');
			return false;
		}
		if($("#userpwd").val() != $("#userpwd2").val()){
			alert("비밀번호가 일치하지않습니다.");
			return false;
		}
		if($("#username").val()== ""){
			alert('이름을 입력하세여');
			return false;
		}
		if($("#tel2").val()== "" ||$("#tel3").val() == ""){
			alert('전화번호를 입력하세요');
			return false;
		}
	});
});