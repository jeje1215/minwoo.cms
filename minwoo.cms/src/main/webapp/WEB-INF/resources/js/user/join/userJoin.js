$(function() {
	$("#previousChk").click(function() {
		$("#idChk").val('N');
		$("#doubleChk").show();
		$("#previousChk").hide();
		$("#inputId").attr("readonly", false);
	});

	$("#doubleChk").click(
			function() {
				$.ajax({
					url : "/cms/join/idChk",
					method : "post",
					data : $("#joinForm").serialize(),
					success : function(result) {
						if (result == true) {
							$("#idChk").val('Y');
							$("#doubleChk").hide();
							$("#previousChk").show();
							$("#inputId").attr("readonly", true);

							$('#modalBody_one').html("사용가능한 아이디 입니다.");
							$('#myModal_one').modal();
						} else {
							$('#modalBody_one').html(
									"이미 존재하는 아이디입니다.\n다시 입력하시기 바랍니다.");
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

	$("#userJoin")
			.click(
					function() { // 회원가입
						var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
						var pwd = $("#inputPassword").val();
						var chkPwd = $("#inputPasswordCheck").val();
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


						if (!/^[a-zA-Z0-9]{6,16}$/.test(pwd)) {
							alert('비밀번호는 숫자와 영문자 조합으로 6~16자리를 사용해야 합니다.');
							pwd = "";
							return false;
						}
						var chk_num = upw.search(/[0-9]/g);
						var chk_eng = upw.search(/[a-z]/ig);

						if (chk_num < 0 || chk_eng < 0) {
							alert('비밀번호는 숫자와 영문자를 혼용하여야 합니다.');
							document.all.mPwd.value = "";
							document.all.mPwd2.value = "";
							return false;
						}

						if (pwd != chkPwd) {
							$('#modalBody_one').html("비밀번호가 일치하지 않습니다.");
							$('#myModal_one').modal();
							$("#inputPassword").val("");
							$("#inputPasswordCheck").val("");
							return false;
						} else {
							$
									.ajax({
										url : "/cms/join/userJoin",
										method : "post",
										data : $("#joinForm").serialize(),
										success : function(result) {
											if (result == true) {
												goUrl('user/join/userJoinEnd',
														urlForm);
											} else {
												$('#modalBody_one')
														.html(
																"회원가입이 실패하였습니다.\n다시 가입하시기 바랍니다.");
												$('#myModal_one').modal();
											}

										},
										error : function(a, b, errMsg) {
											$('#modalBody_one').html(
													"※ 실패 : " + errMsg);
											$('#myModal_one').modal();
										},
										complete : function() {
										}
									});
						}
					});

});
