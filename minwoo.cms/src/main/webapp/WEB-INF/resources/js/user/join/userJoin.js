
	$(function() {
		$("#userJoin").bind("click", function() { //회원가입
			var pwd = $("#inputPassword").val();
			var chkPwd = $("#inputPasswordCheck").val();
			if(pwd != chkPwd){
				$('#modalBody_one').html("비밀번호가 일치하지 않습니다."); 
				$('#myModal_one').modal();
				$("#inputPassword").val("");
				$("#inputPasswordCheck").val("");
			}else{
				$.ajax({
					url : "join/userJoin",
					method : "post",
					data : $("#joinForm").serialize(),
					success : function(result) {
						alert(result);
					},
					error : function(a, b, errMsg) {
						$('#modalBody_one').html("※ 실패 : " + errMsg);
						$('#myModal_one').modal();
					},
					complete : function() {
					}
				});
			}
		});
	
	});