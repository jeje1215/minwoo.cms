<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../common/modal.jsp"%>

<style>@import url("<c:url value="/css/message/msg.css"/>");</style>
 <script>

 $(function(){
     regBtns();
 });
 
// var showCom = function(comments){
//     $(":input[id='chkcom']").val($(comments).data("comContent"));
   
//  }
 
 var regBtns = function(){
 //    var modal = $("#resultModal");  // 추가, 수정, 삭제결과창
 //    var msg1 = $("#msg1");            // 결과메세지
        
//      var chkCom = function(){ // 댓글 글 여부    
//          if($(":input[id='chkcom']").val()) return true;
//          else {
//          	   $('#modalBody_one').html("내용을 입력하세요!");
//  			    $('#myModal_one').modal();
       
//          }
//      }
    
    //버튼클릭시이벤트
    $("#listBtn").bind("click", function(){
        var userList = $("#userList");  // 회원목록
        var tr
        var input
        var etc
        userList.empty();
    });
    
    $("#comsend").bind("click", function(){
//         if(chkcom()){
               $.ajax({
            	   method:"post",
                   url:"comsend",                
                   data:$("#comsend").serialize(),
                   success:function(result){                    
                       if(result) {
					    $('#modalBody_two').html("쪽지가 보내졌습니다!");
					    $('#myModal_two').modal();
//    			            $('#myModal_two').on('click', '#modalOk', function() {
// 			                window.close();
// 			             }); 
                       }else {
                    	   msg1.text("발신불가");
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
        
    });
}

//  $(function(){
// 	    regBtns();
// 	});
	 
// 	var showCom = function(comments){
// 	    $(":input[id='chkcom']").val($(comments).data("comContent"));
// 	}
	 
// 	var regBtns = function(){
// 	    var modal = $("#resultModal");  // 추가, 수정, 삭제 결과 창
// 	    var msg = $("#msg");            // 결과 메세지
	        
// // 	    var chkCom = function(){ // 회원 이름 입력 여부    
// // 	        if($(":input[id='chkcom']").val()) return true;
// // 	        else {
// // 	            msg.text("회원 이름을 입력하세요.");
// // 	            modal.modal("show");
// // 	        }
// // 	    }
	    
// 	    //버튼 클릭시 이벤트
// 	    $("#listBtn").bind("click", function(){
// 	        var userList = $("#userList");  // 회원목록
// 	        var tr;
// 	        var input;
// 	        var etc;
	        
// 	        userList.empty();
	        

// 	    });
	    
// 	    $("#addBtn").bind("click", function(){
// // 	        if(chkCom()){
// 	            $.ajax({
// 	            	   method:"post",
// 	                   url:"comsend",                
// 	                   data:$("#comsend").serialize(),
// 	                   success:function(result){                 
// 	                       if(result) msg.text("추가 성공");
// 	                       else msg.text("추가 실패");
// 	                       $("#listBtn").trigger("click");
// 	                   },
// 	                   error:function(a, b, errMsg){
// 	                       msg.text("추가 실패: " + errMsg);                
// 	                   },
// 	                   complete:function(){
// 	                       modal.modal("show");                    
// 	                   }
// 	               });
// // 	        }
// 	    });
    
    
    

// 	}


</script>

<body>
<form id="comsend">
<div id="header">댓글</div>
	
		<div class="form-group">

			<input type="text" name="userId" id="userId" value="${sessionScope.user.loginId}"
				class="form-control col-lg-2" data-rule-required="true"
				placeholder="아이디" maxlength="10">
		</div>
<!-- 		<div class="form-group"> -->
<!-- 			<input type="password" id="commentParentPassword" -->
<!-- 				name="commentParentPassword" class="form-control col-lg-2" -->
<!-- 				data-rule-required="true" placeholder="패스워드" maxlength="10"> -->
<!-- 		</div> -->
		<div class="form-group">
			<button type="button"
				class="btn btn-default" id="addBtn">댓글등록</button>
		</div> 
			
		
		<textarea id="commentParentText" class="form-control col-lg-12"
			style="width: 100%" rows="4" placeholder="댓글" name="comContent" id="chkcom" value="">
			
			</textarea>



</form>
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


</body>
<%@ include file="../common/footer.jsp"%>