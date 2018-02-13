<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../../common/header.jsp"%>
<%@ include file="../../menu/topMenu.jsp"%>
<%@ include file="../../menu/leftMenu.jsp"%>

<script>
$.ajax({

	   type:"GET",

	   url:"select.jsp",  //세션아이디로 검색한 내용을 불러오는 JSP

	        data: "",        //jsp에서 저장된 세션아이디 사용

	  dataType: "JSON",

	  success:function(data){   //data라는 변수에 값 받아옴

	    console.log(data);

	    $("#id").val(data.memid);  //html의 id="id"에 받아온 값을 넣어 뿌려줌 

	    $("#name").val(data.memnm);

	    $("#pnum").val(data.mempnum);

	    $("#email").val(data.mememail);

	     },

	     error:function(request,status,error){

	          alert("code:"+request.status+"\n"+"message:"

	            +request.responseText+"\n"+"error:"+error);

	   }

	 });

	





	//회원가입 버튼 누르면 유효성 검사

	function update() {

	 var login_id  = $("#id").val(); //id값을 변수에 저장

	 var login_pw  = $("#password").val();

	 var login_pw2  = $("#password_chk").val();

	 var login_name  = $("#name").val();

	 var login_pnum  = $("#pnum").val();

	 var login_email = $("#email").val();

	 var login_gen  = $(':radio[name="gender"]:checked').val();



	 //패스워드 입력여부 검사

	 if(login_pw == ""){

	  alert("비밀번호를 입력하세요");

	  login_pw.focus();

	  return

	 };

	 

	 //패스워드 길이체크

	 if (login_pw.length<6 || login_pw.length>8) {

	  alert("패스워드를 6~8자 까지 입력해주세요.")

	  login_pw.focus();

	  login_pw.select();

	  return

	 };

	 

	 //패스워드와 패스워드 확인 일치여부 체크

	 if (login_pw != login_pw2) {

	  alert("패스워드가 일치하지않습니다");

	  login_pw ="";

	  login_pw2 ="";

	  return

	 };

	 

	 //전화번호 입력여부 검사

	 if(login_pnum == ""){ 

	  alert("전화번호를 입력하세요");

	  login_pnum.focus();

	  return

	 };

	 

	 //전화번호 길이체크

	 if (login_pnum.length<10 || login_pnum.length>11) {

	  alert("전화번호를 다시 입력해 주세요.");

	  login_pw.focus();

	  login_pw.select();

	  return

	 };

	 

	 //이메일 입력여부 검사

	 if(login_email == ""){ 

	  alert("이메일을 입력하세요");

	  login_email.focus();

	  return

	 };

	 

	 //@,'.' 가 들어간 형식에 맞는 이메일 인지 검사

	 if (((login_email.indexOf('@')) <=0) && (login_email.indexOf('.')<=0)){

	  alert("정상적인 이메일이 아닙니다.");

	  login_email = "";

	  login_email.focus();

	  return;

	 };

	};



	//전화번호 숫자만 입력가능하게 함

	$(function(){

	 $(document).on("keyup", "input:text[numberOnly]", 

	   function() {$(this).val( $(this).val().replace(/[^0-9]/gi,"") );});

	});



	//초기화 버튼

	function reset() {

	 

	 var login_id  = document.getElementById("id"); 

	 var login_pw  = document.getElementById("password");

	 var login_pw2  = document.getElementById("password_chk");

	 var login_name  = document.getElementById("name");

	 var login_pnum = document.getElementById("pnum");

	 var login_email = document.getElementById("email");

	 

	 alert("초기화")

	 login_id.value =""

	 login_pw.value =""

	 login_pw2.value =""

	 login_name.value =""

	 login_pnum.value =""

	 login_email.value =""

	 return

	};



	//수정완료  버튼 누를때 실행

	function update() {

	 alert("수정하시겠습니까?");

	 var login_id  = $("#id").val();     // text란에 있는 값을 변수로 저장

	 var login_pw  = $("#password").val();

	 var login_pw2  = $("#password_chk").val();

	 var login_name  = $("#name").val();

	 var login_pnum  = $("#pnum").val();

	 var login_email = $("#email").val();

	 

	 if(login_pw == login_pw2 && login_pw != ""){   //비밀번호가 서로 일치 할때 실행

	  $.ajax({

	   type:"GET",

	   url:"update.jsp",

	   data: {   //컬럼네임에 입력한 값 담기

	          "memid"  : login_id,

	          "mempw"  : login_pw,

	          "mempnum"  : login_pnum,

	          "mememail"  : login_email,

	            },

	   dataType: "JSON",

	   success:function(data){    //data라는 변수에 값 받아옴

	    console.log(data);

	    alert("수정되었습니다. 다시 로그인 해주세요");

	    $("#update_form").submit();  //빈 폼을 만들어 페이지 이동

	      },

	      error:function(request,status,error){

	           alert("code:"+request.status+"\n"+"message:"

	             +request.responseText+"\n"+"error:"+error);

	    }

	   });

	  }else{

	   alert("패스워드를 확인 해주세요")

	  }

	}
	
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
</body>
<%@ include file="../../common/footer.jsp"%>