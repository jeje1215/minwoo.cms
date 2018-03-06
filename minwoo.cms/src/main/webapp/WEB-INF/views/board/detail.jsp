<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<script src="<c:url value="/js/board/detail.js"/>"></script>

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
<%@ include file="comment.jsp"%>
<%@ include file="../common/footer.jsp"%>