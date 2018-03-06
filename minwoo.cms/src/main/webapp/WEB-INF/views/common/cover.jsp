<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<style>@import url("<c:url value="/css/cover.css"/>");</style>

   <div id="menutop">
      <ul class="nav navbar-nav navbar-right">
      	<c:if test="${sessionScope.user == null}">
         <li>
         	<a href="#" onclick="goUrl('user/join/userJoin', urlForm)">
         		<span class="glyphicon glyphicon-user"></span> Sign Up
            </a>
         </li>
         <li>
         	<a href="#" onclick="goUrl('user/login/coverLogin', urlForm)">
         		<span class="glyphicon glyphicon-log-in"></span> Login
           </a>
        </li>
        </c:if>
      </ul>
   </div>
   <div id="cover">
      <p class="covertitle" onclick="menuUrl('main', urlForm)" style="cursor:pointer;">
        Cafe's Management System
         <br>
      </p>
   </div>

	<div class="container">
		<div style="display:inline-block" class="left" id="boardList"></div>
		<div style="display:inline-block" class="center" id="boardList2"></div>
	</div>

<%-- <%@ include file="/WEB-INF/views/board/list.jsp"%> --%>


        
<!-- <table> -->
<!--       <tr> -->
<!--          <td>게시글 1</td> -->
<!--          <td>게시글 2</td> -->
<!--          <td>게시글 3</td> -->
<!--       </tr> -->
<!-- </table> -->
</body>
</html>