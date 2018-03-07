<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<style>@import url("<c:url value="/css/board/list.css"/>");
</style>
<script src="<c:url value="/js/board/write.js"/>"></script>
<script src="<c:url value="/js/board/list.js"/>"></script>
<section id="post">
   <div class="container">
      <br>
         <form name="listForm">
         	<input name="usbId" value="" style="display:none;">
			<input type="text" style="display:none;" id="mesId" value="">
         </form>
      <table class="table table-hover">
         <thead>
            <tr>
               <th>번호</th>
               <th>제목</th>
               <th>작성자</th>
               <th style="color: #EA990B;">날짜</th>
               <th style="color: #EA990B;"><b>조회수</b></th>
            </tr>
         </thead>
         <tbody id=boardList style="word-break:break-all">
         </tbody>
      </table>


      <div class="form-group">
         <div class="col-sm-12 text-right">
           <!--  <button type="button" class="btn btn-success btn-md" id="listBtn">
               <i class="glyphicon glyphicon-list-alt"></i> 목록
            </button> -->
            <c:if test="${sessionScope.user != null}">
	            <button class="btn btn-primary" type="submit"
	               onclick="menuUrl('board/write', urlForm)">
	               등록 <i class="fas fa-plus"></i>
	            </button>
            </c:if>
         </div>
         <br> <br>
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
<!--          <div class="text-center">
            <ul class="pagination">
               <li class="disabled"><a href="#"><span
                     class="glyphicon glyphicon-chevron-left"></span></a></li>
               <li class="active"><a href="#">1</a></li>
               <li><a href="#">2</a></li>
               <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
            </ul>
         </div> -->
      </div>
   </div>
</section>