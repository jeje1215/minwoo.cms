<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@importurl("<c:url value="/css/board/detail.css"/>");</style>
<script src="<c:url value="/js/board/write.js"/>"></script>
<script>
$(function(){
      regBtns();
});

var showBoard = function(board){
	   $(":input[name='usbTitle']").val($(board).data("usbTitle"));
	   $(":input[name='usbContent']").val($(board).data("usbContent"));
}

var regBtns = function(){
    var modal = $("#resultModal");// 결과창
    var msg = $("#msg"); //결과 메세지
}

function updBtn(){ //수정 버튼	
	console.log("안녕하세요");

	      $.ajax({
	         url:"fixBoard",
	         method:"post",
	         data :$("#upForm").serialize(),
	         success : function(result) {
	            if (result){
	           	 $('#modalBody_one').html("수정 성공");
			   	 $('#myModal_one').modal();
			  	  $('#myModal_one').on('click', '#modalOk', function() {
					menuUrl('main', urlForm);
					}); 
				}else{
	               $('#modalBody_one').html("수정 실패");
	               $('#myModal_one').modal();
	            }
	      },
	      error : function(a, b, errMsg) {
	            $('#modalBody_one').html("수정 실패"+errMsg);
	            $('#myModal_one').modal();
	         }
	   });
	}
      
function delBtn(){ //삭제버튼
   var board = $("#boardId").val();
   
      $.ajax({
         url : "del",
         method:"post",
         data : {usbId:board},
         success : function(result) {
            if (result){
               $('#modalBody_one').html("삭제 성공");
               $('#myModal_one').modal();
               $('#myModal_one').on('click', '#modalOk', function() {
	                menuUrl('main', urlForm);
	             }); 
            }else{
               $('#modalBody_one').html("삭제 실패");
               $('#myModal_one').modal();
            }
         },
         error : function(a, b, errMsg) {
            $('#modalBody_one').html("삭제 땡"+errMsg);
            $('#myModal_one').modal();
         }
      });
}


</script>

<body>
<section id="post">
   <div class="container">
   <br>
      <form id="upForm" name="upForm" method="post">
         <table class="table table-hover" style="font-size:14px;">
            <caption>게시글</caption>
           
            <thead>

            </thead>
           <tr>
               <td>작성일</td>
                <td>${board_one.regDate} </td>
            </tr>
            
            <tr>
                  <td style="display: none;"><input value="${board_one.usbId}"
                     id="boardId" name="usbId" /></td>
               </tr>
            
            
            <tfoot>
               <td>제 목</td>
               <td><input value="${board_one.usbTitle}" name="usbTitle"/></td>
               </tr>
               <tr>
                  <td>작성자 </td>
                  <td>${board_one.userId}</td>
               </tr>
               <tr>
                  <td>내용</td>
                  <td><textarea name="usbContent" rows="10" cols="100">${board_one.usbContent}</textarea></td>
               </tr>
               
            </tfoot>
         </table>
	</form>

   
      <div class="form-group">
         <div class="col-sm-12 text-right">
   			
   			
   			<button class="btn btn-warning" onclick="updBtn()">수정</button>
            <button class="btn btn-danger" onclick="delBtn()">
                <i class="fa fa-times spaceLeft"></i>삭제
            </button>
            <button type="reset" class="btn btn-primary"   id="listBtn" onclick="menuUrl('main', urlForm)">
                <i class="fa fa-check spaceLeft"></i>취소
            </button>
         </div>
      </div>

   
   </section>
</body>
<%@ include file="../common/footer.jsp"%>