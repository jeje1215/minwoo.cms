<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@importurl("<c:url value="/css/board/detail.css"/>");</style>
<script src="<c:url value="/js/board/write.js"/>"></script>
<script>

	$(function() {
		regBtns();
	});

	var showBoard = function(board) {
		$(":input[name='usbTitle']").val($(board).data("usbTitle"));
		$(":input[name='usbContent']").val($(board).data("usbContent"));
	}
	var showCom = function(comments) {
		$(":input[id='chkcom']").val($(comments).data("comContent"));

	}

	var regBtns = function() {
		var modal = $("#resultModal");// 결과창
		var msg = $("#msg"); //결과 메세지

		var chkCom = function() { // 댓글 글 여부    
			if ($(":input[id='chkcom']").val())
				return true;
			else {
				$('#modalBody_one').html("내용을 입력하세요!");
				$('#myModal_one').modal();

			}
		}

		function updBtn() { //수정 버튼	
			console.log("안녕하세요");

			$.ajax({
				url : "fixBoard",
				method : "post",
				data : $("#upForm").serialize(),
				success : function(result) {
					if (result) {
						$('#modalBody_one').html("수정 성공");
						$('#myModal_one').modal();
						$('#myModal_one').on('click', '#modalOk', function() {
							menuUrl('main', urlForm);
						});
					} else {
						$('#modalBody_one').html("수정 실패");
						$('#myModal_one').modal();
					}
				},
				error : function(a, b, errMsg) {
					$('#modalBody_one').html("수정 실패" + errMsg);
					$('#myModal_one').modal();
				}
			});
		}

		function delBtn() { //삭제버튼
			var board = $("#boardId").val();

			$.ajax({
				url : "del",
				method : "post",
				data : {
					usbId : board
				},
				success : function(result) {
					if (result) {
						$('#modalBody_one').html("삭제 성공");
						$('#myModal_one').modal();
						$('#myModal_one').on('click', '#modalOk', function() {
							menuUrl('main', urlForm);
						});
					} else {
						$('#modalBody_one').html("삭제 실패");
						$('#myModal_one').modal();
					}
				},
				error : function(a, b, errMsg) {
					$('#modalBody_one').html("삭제 땡" + errMsg);
					$('#myModal_one').modal();
				}
			});
		}

		$("#addBtn").bind("click", function() {
				$.ajax({
					method : "post",
					url : "comsend",
					data : $("#comSend").serialize(),
					success : function(result) {
						if (result) {
							$('#modalBody_one').html("등록되었습니다.");
							$('#myModal_one').modal();

						} else {
							msg1.text("등록 취소");
						}
						$("#listBtn").trigger("click");
					},
					error : function(a, b, errMsg1) {  
						alert(errMsg1);
					}
				});
		});
	}
</script>

<body>
	<section id="post">
		<div class="container">
			<br>
			<form id="upForm" name="upForm" method="post">
				<table class="table table-hover" style="font-size: 14px;">
					<caption>게시글</caption>

					<thead>

					</thead>
					<tr>
						<td>작성일</td>
						<td>${board_one.regDate}</td>
					</tr>

					<tr>
						<td style="display: none;"><input value="${board_one.usbId}"
							id="boardId" name="usbId" /></td>
					</tr>


					<tfoot>
						<td>제 목</td>
						<td><input value="${board_one.usbTitle}" name="usbTitle" /></td>
						</tr>
						<tr>
							<td>작성자</td>
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
					<button class="btn btn-warning" onclick="updBtn()">
					<i class="glyphicon glyphicon-refresh"></i>수정</button>
					<button class="btn btn-danger" onclick="delBtn()">
						<i class="fa fa-times spaceLeft"></i>삭제
					</button>
					<button type="reset" class="btn btn-primary" id="listBtn"
						onclick="menuUrl('main', urlForm)">
						<i class="fa fa-check spaceLeft"></i>취소
					</button>
				</div>
			</div>

			<form id="comSend">
				<br> <br>
				<legend>댓글</legend>
				<input type="text" class="input-small" name="userId" id="userId"
					value="${sessionScope.user.loginId}" placeholder="아이디"> <br>
				<input name="usbId" value="${board_one.usbId}"
					style="display: none;"> <br>
				<textarea class="form-control col-lg-12" rows="1" placeholder="댓글내용"
					name="comContent" id="chkcom" value="">
				</textarea>
				<br> <br>
				<div class="col-sm-12 text-right">
					<br>
					<button class="btn btn-primary" type="button" id="addBtn">
						댓글 <i class="fas fa-plus"></i>
					</button>
				</div>
			</form>
		</section>
</body>
<%@ include file="../common/footer.jsp"%>