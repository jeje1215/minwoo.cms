<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<style>@import url("<c:url value="/css/message/msg.css"/>");</style>
<script src="<c:url value="/js/message/message.js"/>"></script>
<body>
<form id="msgSend">
	<div class="box">
		<div class="letterpage">
			<div id="header">쪽지보내세요!</div>
			<label for="who" class="recipient"> 받는사람	</label>
			<input type="text" name="mesGetId" id="chk11" value="" >	
			<hr>
			<div class="writing_area">
				<textarea id="writeNote" name="mesContent" style="resize: none;" rows="12" cols="64">		
				</textarea>

			</div>
			<div class="let">
				<button type="button" class="btn btn-info" id="sendMsg"
					style="background-color: #ff80a0;"  >
					<span class="glyphicon glyphicon-envelope"
						style="font-family: HY강B;" >
						쪽지보내기</span>
				</button>
			
			</div>
		</div>

	</div>
		<input type="text" name="userId"  id="userId" value="${sessionScope.user.loginId}"  style="display:none;">	
</form>

  <div class="modal fade"  id="resultModal"  tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">     </button>
                 <h4 class="modal-title" id="msg1"></h4>
           </div>
             <div class="modal-footer">
               <button type="button" class="btn btn-primary" data-dismiss="modal"  
                 onclick="window.close();">확인</button>

               <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
            </div>
         </div>
      </div>
 </div>  
</body>