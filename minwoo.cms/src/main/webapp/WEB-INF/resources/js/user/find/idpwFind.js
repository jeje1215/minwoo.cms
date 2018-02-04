
	$(function() {
		$("#idFind").bind("click", function() {
			var id = $("input[name=loginId]").val();
			var pwd = $("input[name=loginPw]").val();
			var msg;
			if(id == "" || id.length == 0){
				msg = "※ 아이디를 정확히 입력해 주세요.";
				$("input[name=loginId]").val('');
				$("input[name=loginId]").focus();
			}else{
				if(pwd == "" || pwd.length == 0){
					msg = "※ 비밀번호를 정확히 입력해 주세요.";
					$("input[name=loginPw]").val('');
					$("input[name=loginPw]").focus();
				}else{
					$.ajax({
						url : "login/loginChk",
						method : "post",
						data : $("#loginForm").serialize(),
						success : function(user) {
							if (user.resultCode == 1) {
								msg = "※ 일치하는 아이디가 없습니다.";
								$("input[name=loginId]").focus();
							} else if (user.resultCode == 2) {
								msg = "※ 비밀번호가 틀렸습니다.";
								$("input[name=loginPw]").val('');
								$("input[name=loginPw]").focus();
							} else if (user.resultCode == 0) {
								goUrl('main', urlForm);
							} else{
								msg = "※ error-관리자에게 문의하세요.";
							}
						},
						error : function(a, b, errMsg) {
							msg = "※ 실패 : " + errMsg;
						},
						complete:function(){
							$("#loginTxt").html("");
							$("#loginTxt").html(msg);
						}
					});
				}
			}
			$('#loginTxt').css('color', 'red');
			$("#loginTxt").html(msg);
		});
	});