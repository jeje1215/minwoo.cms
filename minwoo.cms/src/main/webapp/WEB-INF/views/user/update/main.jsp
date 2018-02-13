<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../../common/header.jsp"%>
<%@ include file="../../menu/topMenu.jsp"%>
<%@ include file="../../menu/leftMenu.jsp"%>

<script>
  
</script>


<body>
   <section id="post">
      <div class="container">
         <div class="col-md-12" style="font-family: HY강B";>
            <div class="page-header">
               <h3>회원정보수정</h3>
            </div>
            <form class="form-horizontal">
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputId">ID</label>
                  <div class="col-sm-6">
                     loginId
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputEmail" type="email" required
                        placeholder="이메일">
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputPassword" type="password"
                        required placeholder="비밀번호">
                     <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
                     확인</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputPasswordCheck"
                        type="password" required placeholder="비밀번호 확인">
                     <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputName">이름</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputName" type="text" required
                        placeholder="이름">
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputNicname">닉네임</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputNicname" type="text" required
                        placeholder="닉네임">
                  </div>
               </div>
               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputBirth">생년월일</label>
                  <div class="col-sm-6">
                     <input class="form-control" id="inputBirth" type="date" required
                        placeholder="생년월일">
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputAgree">약관
                     동의</label>
                  <div class="col-sm-6" data-toggle="buttons">
                     <label class="btn btn-warning active"> <input id="agree"
                        type="checkbox" autocomplete="off" chacked required> <span
                        class="fa fa-check"></span>
                     </label> <a href="#">이용약관</a> 에 동의 합니다.
                  </div>
               </div>
               <div class="form-group">
                  <div class="col-sm-12 text-center">
                     <button class="btn btn-primary" type="submit" data-toggle="modal"
                  data-target="#myModal3">
                        회원수정<i class="fa fa-check spaceLeft"></i>
                     </button>
                     <button class="btn btn-danger" type="submit" data-toggle="modal"
                  data-target="#myModal4">
                        회원탈퇴<i class="fa fa-times spaceLeft"></i>
                     </button>
                  </div>
               </div>
            </form>

         </div>


      </div>
   </section>

<%@ include file="../../common/footer.jsp"%>