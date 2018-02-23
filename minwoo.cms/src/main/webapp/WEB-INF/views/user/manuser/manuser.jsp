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
        <i class="fas fa-user-plus"></i>회원관리
      </div>
      <br>
		<div class="d1">
			<!--  <div class="form">
            <input type="text" placeholder="검색어 입력">
            <button type="submit" class="1"></button>
      		</div> -->
			<br> <br> <br> <br>
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

      <button class="btn btn-warning btn-md" id="testbtn" onclick="go_btn()">
         <i class="fas fa-wrench"></i>변경
      </button>
   </div>

   <br> <br>
<!--    <div class="text-center">
      <ul class="pagination">
         <li class="disabled"><a href="#"><span
               class="glyphicon glyphicon-chevron-left"></span></a></li>
         <li><a href="#">1</a></li>
         <li><a href="#">2</a></li>
         <li><a href="#">3</a></li>
         <li><a href="#">4</a></li>
         <li class="active"><a href="#">5</a></li>
         <li><a href="#">6</a></li>
         <li><a href="#">7</a></li>
         <li><a href="#">8</a></li>
         <li><a href="#">9</a></li>
         <li><a href="#">10</a></li>
         <li><a href="#"><span
               class="glyphicon glyphicon-chevron-right"></span></a></li>
      </ul>
   </div> -->
</div>   

</section>
<%@ include file="../../common/footer.jsp"%>
