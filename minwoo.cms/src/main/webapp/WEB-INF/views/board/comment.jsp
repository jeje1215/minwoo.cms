<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<style>@import url("<c:url value="/css/board/comment.css"/>");
</style>
 <script>

 $(function(){
     regBtns2();
 });
 
 	function goviewUrl(url, frm, idx) {
		$('input[name=usbId]').val(idx);
		frm.action = "/cms/"+url;
		frm.submit();
	} 
 
	var showCom = function(comments){
	    $(":input[id='chkcom']").val($(comments).data("comContent"));
	}
	 var regBtns2 = function(){
	     var chkCom = function(){   
	         if($(":input[id='chkcom']").val()) return true
	         else {
	 	 			$('#modalBody_one').html("내용을 입력하세요!");
					$('#myModal_one').modal();
	         }
	     }
	    $("#addBtn2").bind("click", function(){
	    	var usbId = $("input[name=usbId]").val();
	        if(chkCom()){
	               $.ajax({
	            	   method:"post",
	                   url:"comsend2",                
	                   data:$("#comSend").serialize(),
	            		success:function(result){
							if(result){
								goviewUrl('board/detail', listForm, usbId);
							}
	               		}
	                  });
	           		}
	       	});
	   }
	 function delComment(comid){
		 $("input[name=comId]").val(comid);
	     var usbId = $("input[name=usbId]").val();
         $.ajax({
      	   method:"post",
             url:"comsend_del",                
             data:$("#comDel").serialize(),
      		success:function(result){
					if(result){
						goviewUrl('board/detail', listForm, usbId);
					}
         		}
            });
     	}	
</script>

<form name="listForm">
	<input name="usbId" value="" style="display:none;">
	<input type="text" style="display:none;" id="mesId" value="">
</form>
	<div>
		<form id="comSend">
			<legend>댓글</legend>
				작성자 : ${sessionScope.user.loginId}
			<input type="text" class="input-small" 
			name="userId" id="userId" value="${sessionScope.user.loginId}" style="display:none;">  <br>
			<input name="usbId" value="${board_one.usbId}" style="display:none;"><br>
			<textarea class="form-control col-lg-12" 
			 placeholder="댓글내용" name="comContent" id="chkcom"  style="width:790px;height:80px;">
			</textarea>	
			<button class="btn btn-primary" type="button" id="addBtn2" style="margin-left:15px;margin-top:25px;">
			   댓글 <i class="fas fa-plus"></i>
			</button>	
		</form>
	</div>
	<div>
	

	
	
	
		<form id="comDel">
		<input type="text" style="display:none" name="comId">
		<table class="type03">
			<c:forEach items="${comment_list}" var="comlist">
				<tr>
					<th scope="row">작성자 : ${comlist.userId}</th>
					<td id="c">내용 : ${comlist.comContent}</td>
					<td>
					
	     			 	<c:choose>
	     			 		<c:when test="${ sessionScope.user.userLevel eq 'A' }">
								<button class="btn btn-danger" onclick="delComment(${comlist.comId})">
			              		  <i class="fa fa-times spaceLeft"></i>삭제
			            		</button>
	     			 		</c:when>
	     			 		<c:when test="${ sessionScope.user.loginId eq comlist.userId }">
								<button class="btn btn-danger" onclick="delComment(${comlist.comId})">
			              		  <i class="fa fa-times spaceLeft"></i>삭제
			            		</button>
	     			 		</c:when>
	     			 	</c:choose>
					</td>
				</tr>
			</c:forEach>
		</table>
		</form>
	</div>

