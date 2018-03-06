<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<style>@import url("<c:url value="/css/board/comment.css"/>");
</style>
 <script>

 $(function(){
     regBtns();
 });
 
var showCom = function(comments){
    $(":input[id='chkcom']").val($(comments).data("comContent"));
   
 }
 
 var regBtns = function(){
 //    var modal = $("#resultModal");  // 추가, 수정, 삭제결과창
 //    var msg1 = $("#msg1");            // 결과메세지
        
     var chkCom = function(){ // 댓글 글 여부    
         if($(":input[id='chkcom']").val()) return true
         else {
         	   $('#modalBody_one').html("내용을 입력하세요!");
 			    $('#myModal_one').modal();
       
         }
     }
    
    //버튼클릭시이벤트
//     $("#listBtn").bind("click", function(){
//         var userList = $("#userList");  // 회원목록
//         var tr
//         var input
//         var etc
//         userList.empty();
//     });
    
    $("#addBtn").bind("click", function(){
        if(chkCom()){
               $.ajax({
            	   method:"post",
                   url:"comsend",                
                   data:$("#comSend").serialize(),
                   success:function(result){                    
                       if(result) {
                    	   $('#modalBody_one').html("댓글등록되었습니다.");
   						$('#myModal_one').modal();

                       }else {
                    	   msg1.text("등록 취소");
                       }
                       $("#listBtn").trigger("click");
                   },
                   error:function(a, b, errMsg1){
                       //msg1.text("발신불가: " + errMsg1);                
                   },
                   complete:function(){
                       //modal.modal("show");                    
                   }
               });
        }
    });
}
 


</script>

<body>

<!-- 댓글 등록 -->
 
<form id="comSend">

    <legend>댓글</legend>
      <input type="text" class="input-small" 
      name="userId" id="userId" value="${sessionScope.user.loginId}" placeholder="아이디" > 
      <br>
    
 <input name="usbId"  value="${board_one.usbId}" >
<br>
	<textarea class="form-control col-lg-12" 
	 rows="2" placeholder="댓글내용" name="comContent" id="chkcom"  value="">
		</textarea>
		<br>
		<div class="col-sm-12 text-right">
			<br>
            <button class="btn btn-primary" type="button"
               id="addBtn">
               댓글 <i class="fas fa-plus"></i>
            </button>
            </div>

 </form>
</body>

