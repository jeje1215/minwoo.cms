<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../../common/header.jsp"%>
<%@ include file="../../menu/topMenu.jsp"%>
<%@ include file="../../menu/leftMenu.jsp"%>
<%@ include file="../../common/modal.jsp"%>
<style>@import url("<c:url value="/css/user/update/update.css"/>");</style>

   <section id="post">
      <div class="container">
         <div class="col-md-12" style="font-family: HY강B";>
            <div class="page-header">
               <h3>회원정보수정</h3>
            </div>
            <form class="form-horizontal"id="userform">
         <input type="text" name="userId" value="${ sessionScope.user.loginId }" style="display:none;">
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputId">ID</label>
                  <div class="col-sm-6">
                     ${ sessionScope.user.loginId }
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputEmail" type="email"
                        placeholder="이메일" name="userMail">
                  </div>
                  
               </div>

               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputPassword" type="password" 
                         placeholder="비밀번호" name="userPwd">
                     <p class="help-block">숫자, 영문자 포함 6자 이상 12자 이하</p>
                  </div>
               </div>
               
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
                     확인</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputPasswordCheck" 
                        type="password"  placeholder="비밀번호 확인" name="userPwd1">
                     <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
                  </div>
               </div>
               
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputName">이름</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputName" type="text"   
                        placeholder="이름" name="userNm">
                  </div>
               </div>
               
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputNicname">닉네임</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputNicname" type="text" 
                        placeholder="닉네임" name="userNic">
                  </div>
               </div>
               
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputBirth">생년월일</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputBirth" type="text" maxlength="8"
                  	 	required  placeholder="생년월일" name="userBirth">
                  </div>
               </div>
					감자~감자~ 왕감자~
               <div class="form-group">
                  <div class="col-sm-12 text-center">
                     <button class="btn btn-primary" id="userUpdate">
                        회원수정<i class="fa fa-check spaceLeft"></i>
                     </button>
                     <button class="btn btn-danger" >
                        회원탈퇴<i class="fa fa-times spaceLeft"></i>
                     </button>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </section>
<script>

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
// 		$("#submit").bind("click", function() {
// 			$.ajax({
// 				method : "post",
// 				url : "fixUserInfo",
// 				data : $("#userform").serialize(),
// 				success : function(result) {
				    
// 				}
// 			});
// 		});
// 	});
	
		$("#userUpdate").bind("click", function() {
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
					if (result == true) {
						goUrl('user/update/main',urlForm);
					} else {
						$('#modalBody_one').html("회원가입이 실패하였습니다.\n다시 가입하시기 바랍니다.");
						$('#myModal_one').modal();
					}
				}
			});
		});
	});
</script>   
<%@ include file="../../common/footer.jsp"%>