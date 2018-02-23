<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>게시글 작성</title>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@import url("<c:url value="/css/board/list.css"/>");</style>
<script>
$(function(){
	   regBtns();
});

var showBoard = function(board){
	   $(":input[name='usbTitle']").val($(board).data("usbTitle"));
	   $(":input[name='usbContent']").val($(board).data("usbContent"));
	   $(":input[name='userId']").val($(board).data("userId"));
	}

	var regBtns = function(){
	   var modal = $("#resultModal");// 결과창
	   var msg = $("#msg"); //결과 메세지
	   
	   var chkBoard=function(){ //게시물 작성 여부
		      if($(":input[name='usbTitle']").val()) return true;
		      else{
		    	  msg.text("제목을 입력하세요");
		    	  modal.modal("show");
		      }
		    /*  if($(":input[name='usbContent']").val()) return true;
		      else{
		    	  msg.text("내용을 입력하세요");
		    	  modal.modal("show");
		      }
		       if($(":input[name='userId']").val()) return true;
		      else{
		    	  msg.text("아이디를 입력하세요");
		    	  modal.modal("show");
		      } */
		   }
	   //등록버튼
	   $("#addBtn").bind("click",function(){
		   if(chkBoard()){
			   $.ajax({
				   	method:"post",
				  	url :"/cms/main/createboard",
					data : $("#boardForm").serialize(),
					success : function(result){
						if(result) {msg.text("게시물 등록 성공"); 
						menuUrl('main', urlForm);
						}
						else {msg.text("게시물 등록 실패");}
						//$("#listBtn").trigger("click");
					},
					error:function(a, b, errMsg){
						msg.text("게시물 등록 실패: "+errMsg);
					},
					complete:function(){
						modal.modal("show");
					}
			   });
		   }
	   });		   
	}
</script>
<body>
	<section id="post">
		<div class="container">
			<h3>게시글 작성</h3>
			<form id="boardForm">
				<div>
					제   목<input type="text" name="usbTitle" size="80"
						placeholder="제목을 입력해주세요"> <br>
					<br>
				</div>
				<div>
					내   용
					<input type="text" name="usbContent" style="width:600px; height:400px"
						placeholder="내용을 입력해주세요">
					<br>
					<br>
				</div>
				<c:if test="${sessionScope.user != null}">
					아이디<input type="text" name="userId"  size="25" value="${ sessionScope.user.loginId }" readonly>
					<%-- <c:choose>
						<c:when test="${sessionScope.user == null}">
						안녕하세요
						</c:when>
					</c:choose> --%>
				</c:if>
			</form>
			<div class="" style="width: 650px; text-align: center;">
				<button type="button" class="btn btn-default" id="addBtn"
				>확인</button>
				<button type="reset" class="btn btn-success btn-md" id="listBtn"
					onclick="menuUrl('main', urlForm)">취소</button>
			</div>
		</div>
		<div class="modal fade" id="resultModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" id="msg"></h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<%@ include file="../common/footer.jsp"%>