<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<style>@import url("<c:url value="/css/board/list.css"/>");
</style>
<script src="<c:url value="/js/board/list.js"/>"></script>
<script>
//js로따로 빼면 오류나는 함수
function go_mes(id){
	$("#mesId").val(id);
	window.open('<c:url value="/message"/>','window','location=no, directories=no,resizable=no,status=no,toolbar=no,menubar=no, width=700,height=700,left=0, top=0, scrollbars=yes');
	return false;
}	
function go_joinmv(){
    $('#modalBody_two').html("회원가입 페이지로 이동하시겠습니까?");
    $('#myModal_two').modal();
    $('#myModal_two').on('click', '#modalOk', function() {
    	goUrl('user/join/userJoin', urlForm);
   }); 	
}
</script>
<c:choose>
	<c:when test="${ mvsubid == null }">
		<c:choose>
			<c:when test="${ sessionScope.user == null}">
				<section id="post">
				   <div class="container">
			 		<div class="jumbotron">
		        		<h2><img src="<c:url value="/img/list.png"/> " align="left">Cms 개시판</h2>
		        		<p>지금 당장 가입하세요!</p>
		        		<p>놀라운 세상을 경험 할 수 있습니다.</p>
		        		<p>
		          			<a class="btn btn-lg btn-primary" href="#" onclick="go_joinmv()" role="button">가입하기</a>
		        		</p>
		     		 </div>
				   </div>
				  </section>
			</c:when>
			<c:when test="${ sessionScope.user != null}">
				<section id="post">
				   <div class="container">
						여기다~ 만들어줘여
					</div>
				</section>
			</c:when>
		</c:choose>
	</c:when>
	<c:when test="${ mvsubid != null }">
		<section id="post">
		   <div class="container">${mvsubNm}
		      <br>
		         <form name="listForm" method="post">
		         	<input name="usbId" value="" style="display:none;">
					<input type="text" style="display:none;" id="mesId" value="">
					<input type="text" style="display:none;" name="selmvsubid" value="${mvsubid}">
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
			               onclick="boardUrl('board/write', urlForm, ${mvsubid});" >
			               등록 <i class="fas fa-plus"></i>
			            </button>
		            </c:if>
		         </div>
		         <br> <br>
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
	</c:when>
</c:choose>
