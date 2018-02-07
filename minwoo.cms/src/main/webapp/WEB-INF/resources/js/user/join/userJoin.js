
	$(function() {
		$("#previousChk").click(function(){
			$("#idChk").val('N');
			$("#doubleChk").show();
			$("#previousChk").hide();
			$("#inputId").attr("readonly", false); 
		});
		
		$("#doubleChk").click(function(){
			$.ajax({
				url : "/cms/join/idChk",
				method : "post",
				data : $("#joinForm").serialize(),
				success : function(result) {
					if(result == true){
						$("#idChk").val('Y');
						$("#doubleChk").hide();
						$("#previousChk").show();
						$("#inputId").attr("readonly", true); 

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
		
		
		$("#userJoin").click(function() { //회원가입
			var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
			var pwd = $("#inputPassword").val();
			var chkPwd = $("#inputPasswordCheck").val();
			var chkId = $("#idChk").val();
			var mail = $("#inputEmail").val();
			var name = $("#inputName").val();
			var nic = $("#inputNic").val();
			var birth = $("#inputBirth").val();

		  //이메일 형식에 맞지않으면
			if(mail.length == 0 || mail == "이메일"){
				$('#modalBody_one').html("이메일을 정확히 입력해주세요."); 
				$('#myModal_one').modal();
				return false;
			}
			
			if (!mail.match(regExp)) {
				$('#modalBody_one').html("이메일형식이 일치하지 않습니다."); 
				$('#myModal_one').modal();
				return false;
			}			
			
			if(pwd != chkPwd){
				$('#modalBody_one').html("비밀번호가 일치하지 않습니다."); 
				$('#myModal_one').modal();
				$("#inputPassword").val("");
				$("#inputPasswordCheck").val("");
				return false;
			}else{
				//alert("ajax 전");
				$.ajax({
					url : "/cms/join/userJoin",
					method : "post",
					data : $("#joinForm").serialize(),
					success : function(result) {
						//alert("hello");
						if(result == true){
							goUrl('user/join/userJoinEnd', urlForm);
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
	