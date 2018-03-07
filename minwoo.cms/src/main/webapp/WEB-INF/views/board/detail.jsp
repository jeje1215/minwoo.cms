<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<script src="<c:url value="/js/board/detail.js"/>"></script>

<section id="post">
   <div class="container">
   <br>
      <form id="upForm" name="upForm" method="post">
         <table class="table table-hover" style="font-size:14px;">
            <caption>${mvsubNm}</caption>
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
               <td><input value="${board_one.usbTitle}" name="usbTitle" style="width:400px;"/></td>
               </tr>
               <tr>
                  <td>작성자 </td>
                  <td>${board_one.userId}</td>
               </tr>
               <tr>
                  <td>내용</td>
                  <td>
                  	<textarea name="usbContent" style="width: 600px; height: 400px">${board_one.usbContent}</textarea>
                  </td>
               </tr>
            </tfoot>
         </table>
   </form>
      <div class="form-group">
         <div class="col-sm-12 text-right">
			<c:if test="${sessionScope.user != null}">
	     		<c:choose>
	     			 <c:when test="${ sessionScope.user.userLevel eq 'A' }">
			            <button class="btn btn-warning" onclick="updBtn()">수정</button>
			            <button class="btn btn-danger" onclick="delBtn()">
			                <i class="fa fa-times spaceLeft"></i>삭제
			            </button>
			         </c:when>
					<c:when test="${ sessionScope.user.loginId eq board_one.userId }">
			            <button class="btn btn-warning" onclick="updBtn()">수정</button>
			            <button class="btn btn-danger" onclick="delBtn()">
			                <i class="fa fa-times spaceLeft"></i>삭제
			            </button>
					</c:when>
			    </c:choose>
	        </c:if>
            <button type="reset" class="btn btn-primary"  id="listBtn" onclick="boardUrl('main2', urlForm, ${mvsubid});">
                <i class="fa fa-check spaceLeft"></i>취소
            </button>
         </div>
      </div>
   </section>
<c:if test="${sessionScope.user != null}">
	<%@ include file="comment.jsp"%>
</c:if>
<br><br>
<%@ include file="../common/footer.jsp"%>