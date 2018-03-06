	$(function update() {
		$.ajax({  
			type : "post",
			url : "listUsers",
			data : $("#userform").serialize(),
			success : function(data) {
				$("#inputEmail").val(data.userMail);
				$("#inputName").val(data.userNm);
				$("#inputNicname").val(data.userNic);
				$("#inputBirth").val(data.userBirth);
				$("#inputPwd").val(data.userPwd)
			},
		});
	});
	
	function go_update(){
			var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
			var pwd = $("#inputPassword").val();
			var chkPwd = $("#inputPasswordCheck").val();
			var chk_num = pwd.search(/[0-9]/g);
			var chk_eng = pwd.search(/[a-z]/ig);
			var chkId = $("#idChk").val();
			var mail = $("#inputEmail").val();
			var name = $("#inputName").val();
			var nic = $("#inputNic").val();
			var birth = $("#inputBirth").val();

			if (mail.length == 0 || mail == "이메일") {
				$('#modalBody_one').html("이메일을 정확히 입력해주세요.");
				$('#myModal_one').modal();
				return false;
			}

			if (!mail.match(regExp)) {
				$('#modalBody_one').html("이메일형식이 일치하지 않습니다.");
				$('#myModal_one').modal();
				return false;
			}

			if (!/^[a-zA-Z0-9]{6,12}$/.test(pwd)) {
				$('#modalBody_one').html("비밀번호는 숫자와 영문자 조합으로 6~12자리를 사용해야 합니다.");
				$('#myModal_one').modal();
				$("#inputPassword").val("");
				$("#inputPasswordCheck").val("");
				return false;
			}

			if (chk_num < 0 || chk_eng < 0) {
				$('#modalBody_one').html("비밀번호는 숫자와 영문자를 혼용하여야 합니다.");
				$('#myModal_one').modal();
				$("#inputPassword").val("");
				$("#inputPasswordCheck").val("");
				return false;
			}

			if (pwd != chkPwd) {
				$('#modalBody_one').html("비밀번호가 일치하지 않습니다.");
				$('#myModal_one').modal();
				$("#inputPassword").val("");
				$("#inputPasswordCheck").val("");
				return false;
			} 
			
			var str = "1234567890";
			for (i = 0; i < birth.length; i++) {
				if (str.indexOf(birth.charAt(i)) < 0) {
					$('#modalBody_one').html("생년월일은 숫자만 입력해야합니다.");
					$('#myModal_one').modal();
					return false;
				}
			}						
			
			if (birth.length != 8) {
				$('#modalBody_one').html("생년월일은 8자리로 입력해야합니다.");
				$('#myModal_one').modal();
				return false;
			} 	
			$.ajax({
				method : "post",
				url : "fixUserInfo",
				data : $("#userform").serialize(),
				success : function(result) {
					if (result){
						$('#modalBody_one').html("광고가 수정되었습니다.");
						$('#myModal_one').modal();
	                  }else{
	                	  $('#modalBody_one').html("광고 수정이 실패하였습니다. 관리자에게 문의하세요.");
	                	  $('#myModal_one').modal(); 
	                  }
					//menuUrl('user/update/updateEnd', urlForm);
				}
			});
	}

	function userDel() {
			var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
			var pwd = $("#inputPassword").val();
			var chkPwd = $("#inputPasswordCheck").val();
			var chk_num = pwd.search(/[0-9]/g);		
			var chk_eng = pwd.search(/[a-z]/ig);
			
		    $('#modalBody_two').html("탈퇴하시겠습니까?");
		    $('#myModal_two').modal();
	            $('#myModal_two').on('click', '#modalOk', function() {
                return true;
             }); 

			if (pwd != chkPwd) {
				$('#modalBody_one').html("비밀번호가 일치하지 않습니다.");
				$('#myModal_one').modal();
				$("#inputPassword").val("");
				$("#inputPasswordCheck").val("");
				return false;
			} 

			$.ajax({
				type : "post",
				url : "secede",
				data : $("#userform").serialize(),
				success : function(data) {
					go_Logout();
				},
			});
	}
		
	function go_Logout(){
		$.ajax({
			url : "/cms/login/logOut",
			method : "post",
			data : {},
			success : function(result) {
				if (result == true) {
					goUrl('common/cover', urlForm);
				} else{
					$('#modalBody_one').html("※ error-관리자에게 문의하세요.");
					$('#myModal_one').modal();
				}
			},
			error : function(a, b, errMsg) {
				$('#modalBody_one').html("※ 실패 : " + errMsg);
				$('#myModal_one').modal();
			}
		});
	}