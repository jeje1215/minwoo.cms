
	$(function() {
		$("#doubleChk").bind("click", function(){
			$.ajax({
				url : "join/idChk",
				method : "post",
				data : $("#joinForm").serialize(),
				success : function(result) {
					alert("ddd");
					if(result == true){
						$('#modalBody_one').html("사용가능한 아이디 입니다."); 
						$('#myModal_one').modal();
					}else{
						$('#modalBody_one').html("이미 존재하는 아이디입니다.\n다시 입력하시기 바랍니다."); 
						$('#myModal_one').modal();
					}
				},
				error : function(a, b, errMsg) {
					$('#modalBody_one').html("※ 실패 : " + errMsg);
					$('#myModal_one').modal();
				},
				complete : function() {
				}
			});
			
		});
		
		
		$("#userJoin").bind("click", function() { //회원가입
			var pwd = $("#inputPassword").val();
			var chkPwd = $("#inputPasswordCheck").val();
			var chkId = $("#idChk").val();
			if(chkId == 'N'){
				$('#modalBody_one').html("아이디 중복체크를 하지 않았습니다."); 
				$('#myModal_one').modal();
				return false;
			}
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
						if(result == true){
							$('#modalBody_one').html("회원가입이 성공하였습니다."); 
							$('#myModal_one').modal();
						}else{
							$('#modalBody_one').html("회원가입이 실패하였습니다.\n다시 가입하시기 바랍니다."); 
							$('#myModal_one').modal();
						}
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