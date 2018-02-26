<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@importurl("<c:url value="/css/board/list.css"/>");</style>
<script src="<c:url value="/js/board/write.js"/>"></script>
<script>
$(function(){
	   regBtns();
});
/* $("#btnUpdete").click(function() {
	var title = $("#title").val();
	var content = $("#content").val();
	var writer = $("#writer").val();
	if (title == "") {
		alert("제목을 입력하세요");
		document.form1.title.focus();
		return;
	}
	if (content == "") {
		alert("내용을 입력하세요");
		document.form1.content.focus();
		return;
	}
	if (writer == "") {
		alert("이름을 입력하세요");
		document.form1.writer.focus();
		return;
	}
	
} */
var regBtns = function(){
	 var modal = $("#resultModal");// 결과창
	   var msg = $("#msg"); //결과 메세지
}
	   
	   
function delBtn(){ //삭제버튼
		$.ajax({
			url : "/cms/board/secede",
			method : "post",
			data : $("#delForm").serialize(),
			success : function(result) {
				if (result){
					$('#modalBody_one').html("삭제 성공");
					$('#myModal_one').modal();
				}else{
					$('#modalBody_one').html("삭제 실패");
					$('#myModal_one').modal();
				}
			},
			error : function(a, b, errMsg) {
				$('#modalBody_one').html("삭제 땡"+errMsg);
				$('#myModal_one').modal();
			}
		});
}


</script>

<body>
	<div class="container">
		<br> <br>
		<div class="container">
			<h3>게시글 작성</h3>
			<form id="delForm">
			<table id="detailBoard" width="800" border="6" bordercolor="black">
				
				
				<tr>
					<td id="title" style="width: 90px;">작성일</td>
					<td>${board_one.regDate}</td>
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
			<br> <br> <br> <br>
			</form>
			<div class="" style="width: 650px; text-align: center;">
			<button type="button" class="btn btn-danger" onclick="delBtn()">삭제</button>
			<button type="reset" class="btn btn-success btn-md" id="listBtn"
				onclick="menuUrl('main', urlForm)">취소</button>
		</div>
		</div>
	</div>
</body>
<%@ include file="../common/footer.jsp"%>