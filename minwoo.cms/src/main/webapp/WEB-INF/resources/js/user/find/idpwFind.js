$(document).ready(function(){ 
    $("#userMail_id").keydown(function (key) {
        if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
        	$('#idFind').trigger('click');
        }
    });
    $("#userMail_pwd").keydown(function (key) {
        if(key.keyCode == 13){
        	$('#pwdFind').trigger('click');
        }
    });    
});
	$(function() {
		$("#idFind").bind("click", function() { //아이디 찾기
			var userNm = $("input[name=userNm]").val();
			var userMail = $("#userMail_id").val();
			if(userNm == "" || userNm.length == 0){
				$('#modalBody_one').html("이름을 정확히 입력해 주세요."); 
				$('#myModal_one').modal();
			}else{
				if(userMail == "" || userMail.length == 0){
					$('#modalBody_one').html("이메일을 정확히 입력해 주세요."); 
					$('#myModal_one').modal();
				}else{
					$.ajax({
						url : "find/idFind", 
						method : "post",
						data : $("#findIdForm").serialize(),
						success : function(user) {
							if (user.resultCode == 1) {
								$('#modalBody_one').html("입력하신 정보와 일치하는 \n회원정보가 없습니다."); 
								$('#myModal_one').modal();
							} else if (user.resultCode == 2) {
								$('#modalBody_one').html("회원님의 ID는 "+user.userId+" 입니다."); 
								$('#myModal_one').modal();
							} else{
								$('#modalBody_one').html("※ error-관리자에게 문의하세요."); 
								$('#myModal_one').modal();
							}
						},
						error : function(a, b, errMsg) {
							$('#modalBody_one').html("※ 실패 : " + errMsg); 
							$('#myModal_one').modal();
						},
						complete:function(){
						}
					});
				}
			}
		});
		

		$("#pwdFind").bind("click", function() { //비밀번호 찾기
			var userId = $("input[name=userId]").val();
			var userMail = $("#userMail_pwd").val();
			if(userId == "" || userId.length == 0){
				$('#modalBody_one').html("ID를 정확히 입력해 주세요."); 
				$('#myModal_one').modal();
			}else{
				if(userMail == "" || userMail.length == 0){
					$('#modalBody_one').html("이메일을 정확히 입력해 주세요."); 
					$('#myModal_one').modal();
				}else{
					$.ajax({
						url : "find/pwFind", 
						method : "post",
						data : $("#findPwForm").serialize(),
						success : function(user) {
							if (user.resultCode == 1) {
								$('#modalBody_one').html("입력하신 정보와 일치하는 \n회원정보가 없습니다."); 
								$('#myModal_one').modal();
							} else if (user.resultCode == 2) {
								$('#modalBody_one').html("회원님의 비밀번호는 "+user.userPwd+" 입니다."); 
								$('#myModal_one').modal();
							} else{
								$('#modalBody_one').html("※ error-관리자에게 문의하세요."); 
								$('#myModal_one').modal();
							}
						},
						error : function(a, b, errMsg) {
							$('#modalBody_one').html("※ 실패 : " + errMsg); 
							$('#myModal_one').modal();
						},
						complete:function(){
						}
					});
				}
			}
		});		
	});