<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@import url("<c:url value="/css/board/list.css"/>");</style>

<body>
	<div id="wrap" class="container">
		<br>
		<br>
		<div id="board">
			<table id="detailBoard" width="800" border="6" bordercolor="black" >

				<tr>
					<td id="title" style="width: 90px;">작성일</td>
					<td>2018.02.26</td>
				</tr>

				<tr>
					<td style="width: 90px;">작성자</td>
					<td>${board_one.userId}</td>
				</tr>

				<tr>
					<td style="width: 90px;">제 목</td>
					<td>${board_one.usbTitle}</td>
				</tr>

				<tr>
					<td style="width: 90px;">내 용</td>
					<td>${board_one.usbContent}</td>
				</tr>
			</table>
		</div>
	</div>
</body>
<%@ include file="../common/footer.jsp"%>