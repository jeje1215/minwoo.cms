<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/header.jsp"%>
<%@ include file="../../menu/topMenu.jsp"%>
<%@ include file="../../menu/leftMenu.jsp"%>

<style>@import url("<c:url value="/css/user/manuser/manuser.css"/>");</style>
<script src="<c:url value="/js/user/manuser/manuser.js"/>"></script>

<section id="post">
   <div class="container">
      <div class="name">
    <i class="far fa-address-card"></i> 회원관리
      </div>
      <br>
		<div class="d1">
			<br>
			<form id="levelForm" method="post">
				<input name="checkVal" id="checkVal" style="display:none;">
				<div class="selectlevel" id="selectlevel">
					<select id="userLevel" name="userLevel">
						<option value="">선택</option>
						<option value="A">관리자</option>
						<option value="B">일반회원</option>
					</select>
				</div>
			</form>
		</div>
      <button class="btn btn-warning btn-md" id="testbtn" onclick="go_btn()">
         <i class="fas fa-wrench"></i>변경
      </button>
      <br><br>
		<div class="list">
	      <table class="table table-hover">
	         <thead>
	            <tr>
	               <td></td>
	               <th>닉네임(아이디)</th>
	               <th class="title">이름</th>
	               <th>이메일</th>
	               <th style="color: #EA990B;">등급</th>
	            </tr>
	         </thead>
	         <tbody>
	            <c:forEach items="${man_userlist}" var="manuserlist">
	               <tr>
	                  <td><input type="checkbox" id="cb1" name="level" value="${manuserlist.userId}"/></td>
	                  <td>${manuserlist.userId}</td> 
	                  <td>${manuserlist.userNm}</td>
	                  <td>${manuserlist.userMail}</td>
	                  <td>${manuserlist.userLevel}</td>
	               </tr>
	            </c:forEach>
	         </tbody>
	      </table>
  	 </div>
   <br> <br>
   <form id="pagingForm">
	<input name="currentPage" id="currentPage" style="display:none;">
	<input name="rowCnt" id="rowCnt" value="5" style="display:none;">
   </form>
	<jsp:include page="../../common/paging.jsp" flush="true">
	    <jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
	    <jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
	    <jsp:param name="startPageNo" value="${paging.startPageNo}" />
	    <jsp:param name="pageNo" value="${paging.pageNo}" />
	    <jsp:param name="endPageNo" value="${paging.endPageNo}" />
	    <jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
	    <jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
	</jsp:include>
</div>   

</section>
<%@ include file="../../common/footer.jsp"%>
