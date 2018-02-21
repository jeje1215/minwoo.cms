<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/header.jsp"%>
<%@ include file="../../menu/topMenu.jsp"%>
<%@ include file="../../menu/leftMenu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>@import url("<c:url value="/css/user/manmes/manmes.css"/>");</style>
<script>
$(function(){
    regBtns();
});
 
var showMes = function(mes){
    $(":input[name='name']").val($(mes).data("userNic"));
}
 
var regBtns = function(){
    var modal = $("#resultModal");  // 추가, 수정, 삭제 결과 창
    var msg = $("#msg");            // 결과 메세지
        
    var chkName = function(){ // 회원 이름 입력 여부    
        if($(":input[name='name']").val()) return true;
        else {
            msg.text("회원 이름을 입력하세요.");
            modal.modal("show");
        }
    }
    
    //버튼 클릭시 이벤트
    $("#listBtn").bind("click", function(){
        var mesList = $("#mesList");  // 회원목록
        var tr;
        var input;
        var etc;
        var mes=$("#userId").val();
        
        mesList.empty();
        
        $.ajax({        	
            url:"listMess",
            method:"post",
            data:{userId:mes},
            success:function(mess){
                $(mess).each(function(idx,mes){        
                    tr = $("<tr></tr>");
                  
                    td = $("<td><input type='radio' name='mesId' value='"
                          +mes.mesId+"'onClick='showMes(this)'/>"
                          +""
                          +mes.mesId+"</td>");
                    td2 = $("<td>"+mes.userNic+"</td><td>"+mes.userNm+"</td><td>"+mes.userMail+"</td><td>"+mes.mesContent+"</td> ");
                    
                    mesList.append(tr.append(td).append(td2));      
                    td.find("input").data("userNic", mes.userNic);
                });                    
            }
        });    
    });
}

</script>


<body>
	<section id="post">
		<div class="container">

			<br>
			<!-- 			<div class="d1"> -->
			<!-- 				<select> -->
			<!-- 					<option value="">매체</option> -->
			<!-- 					<option value="제목">광고 종류</option> -->
			<!-- 					<option value="날짜">시작일</option> -->
			<!-- 					<option value="조회수">만료일</option> -->
			<!-- 					<option value="조회수">금액</option> -->
			<!-- 					<option value="조회수">관리자</option> -->
			<!-- 				</select> -->
			<!-- 				<div class="form"> -->
			<!-- 					<input type="text" placeholder="검색어 입력"> -->
			<!-- 					<button type="submit"></button> -->
			<!-- 				</div> -->
			<!-- 			</div> -->


			<h3>Cms.메세지함</h3>
	
				<button type="button" class="btn btn-success btn-md" id="listBtn">
					<i class="glyphicon glyphicon-list-alt"></i> 목록
				</button>

				<button type="button" class="btn btn-danger btn-md" id="delBtnAd">
					<i class="glyphicon glyphicon-trash"></i> 삭제
				</button>
			</div>

			<br>

			<table class="table table-hover">
				<thead>
					<tr>
						<th></th>
						<th>닉네임(아이디)<input type="text" name="userId" id="userId" value="${sessionScope.user.loginId}" style="display:none";></th>
						<th>이름</th>
						<th>이메일</th>
						<th>메세지</th>
						
					</tr>
				</thead>
				<tbody id="mesList">

				</tbody>
			</table>

	
		</div>
	</section>

<%@ include file="../../common/footer.jsp"%>