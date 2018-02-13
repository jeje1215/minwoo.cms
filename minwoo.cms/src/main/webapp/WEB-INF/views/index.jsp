<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function(){
    $("#popbutton").click(function(){
        $('div.modal').modal();
    })
})

</script>

<script src="<c:url value="/js/common.js"/>"></script>
</head>

<body>
	<form name="urlForm" method="post"><input type="text" name="url" id="mvUrl" style="display:none;"></form>

	<button class="btn btn-default" id="popbutton" >모달출력버튼</button>
	<br />

	<div class="modal fade" id="layerpop">

		<div class="modal-dialog">

			<div class="modal-content">

				<!-- header -->

				<div class="modal-header">

					<!-- 닫기(x) 버튼 -->

					<button type="button" class="close" data-dismiss="modal">×</button>

					<!-- header title -->

					<h4 class="modal-title">Header</h4>

				</div>

				<!-- body -->

				<div class="modal-body">Body</div>

				<!-- Footer -->

				<div class="modal-footer">

					Footer

					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>

				</div>

			</div>

		</div>

	</div>


	<button type="button" onclick="goUrl('common/cover', urlForm)">이동</button>
</body>

</html>

