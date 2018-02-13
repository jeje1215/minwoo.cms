
function go_boardGubun(val,yn) {
	$('#manboard').hide();
	$('#subboard').hide();
	$('#addBoard').show();
	if(val.value == 'M' || val == 'M'){
		$('#manboard').show();
	}else if(val.value == 'S' || val == 'S'){
		$('#subboard').show();
	}
	
	if(yn == 'N'){
		$('#addBoard').hide();
	}
}

function go_edit(val, gubun){
	$("select[name=mabId]").val(val);
	$("input[name=subId]").val(val);
	var url;
	if (gubun == "M") { //메인
		url = "/cms/manboard/manageBoard/medit_list";
	}else if(gubun == "S"){ //서브
		url = "/cms/manboard/manageBoard/sedit_list";
	}	
	$.ajax({
		url : url,
		method : "post",
		data : {boardId:val},
		success : function(board) {
			if(board != null){
				$("select[name=boardGubun]").val(gubun).attr("selected", "selected");
				if(gubun == "M"){
					$("input[name=mabNm]").val(board.mabNm);
				    $('input:radio[name=mabYn]:input[value=' + board.mabYn + ']').attr("checked", true);
				}else if (gubun == "S"){
					$("select[name=mabId]").val(board.mabId).attr("selected", "selected");
					$("input[name=subNm]").val(board.subNm);
				    $('input:radio[name=subYn]:input[value=' + board.subYn + ']').attr("checked", true);
				}
			}
		},
		error : function(a, b, errMsg) {
			msg = "※ 실패 : " + errMsg;
		},
		complete:function(){
			$('#editBoard').show();
			$('#delBoard').show();
			$('#cancelBoard').show();
			$("select[name=boardGubun]").val(gubun).attr("selected", "selected");
			$("select[name=boardGubun]").attr("disabled", true);
			go_boardGubun(gubun,'N');
		}
	});
}

$(function() {
	$("#addBoard").click(function() {
		var gubun = $("select[name=boardGubun]").val();
		var name;
		var url;
		if (gubun == "M") { //메인
			name = $("input[name=mabNm]").val();
			url = "/cms/manboard/manageBoard/madd";
		}else if(gubun == "S"){ //서브
			name = $("input[name=subNm]").val();
			url = "/cms/manboard/manageBoard/sadd";
		}
		if (name == "" || name.length == 0) {
			$('#modalBody_one').html("게시판 명을 입력해주세요.");
			$('#myModal_one').modal();
			return false;
		}
		
		addBoardproc(gubun);
	

	});
	

	$("#editBoard").click(function() {
		var gubun = $("select[name=boardGubun]").val();
		var name;
		var url;
		if (gubun == "M") { //메인
			name = $("input[name=mabNm]").val();
			url = "/cms/manboard/manageBoard/medit";
		}else if(gubun == "S"){ //서브
			name = $("input[name=subNm]").val();
			url = "/cms/manboard/manageBoard/sedit";
		}
		if (name == "" || name.length == 0) {
			$('#modalBody_one').html("게시판 명을 입력해주세요.");
			$('#myModal_one').modal();
			return false;
		}
		$.ajax({
			url : url,
			method : "post",
			data : $("#manboardForm").serialize(),
			success : function(result) {
				if (result == true) {
					menuUrl('manboard/manageBoard', urlForm)
				} else {
					$('#modalBody_one').html("수정할 수 없습니다. 다시 확인해주세요.");
					$('#myModal_one').modal();
				}
			},
			error : function(a, b, errMsg) {
				msg = "※ 실패 : " + errMsg;
			}
		});
	});	
	
	$("#delBoard").click(function() {
		$('#modalBody_two').html("게시판을 삭제하시겠습니까?");
		$('#myModal_two').modal();
	});		
	
	$("#cancelBoard").click(function(){
		menuUrl('manboard/manageBoard', urlForm)
	});
});

function addBoardproc(gubun){
	if (gubun == "M") { //메인
		url = "/cms/manboard/manageBoard/medit";
		$.ajax({
			url : url,
			method : "post",
			data : $("#manboardForm").serialize(),
			success : function(result) {
				if (result == true) {
					menuUrl('manboard/manageBoard', urlForm)
				} else {
					$('#modalBody_one').html("등록할 수 없습니다. 다시 확인해주세요.");
					$('#myModal_one').modal();
				}
			},
			error : function(a, b, errMsg) {
				msg = "※ 실패 : " + errMsg;
				alert(msg);
			}
		});
	}else if(gubun == "S"){ //서브

		url = "/cms/manboard/manageBoard/sedit";
		$.ajax({
			url : url,
			method : "post",
			data : {"mabId":$("select[name=mabId]").val(), "subNm":$("input[name=subNm]").val(), "subYn":"Y", "userId":$("input[name=user_id]").val()} ,
			success : function(result) {
				if (result == true) {
					menuUrl('manboard/manageBoard', urlForm)
				} else {
					$('#modalBody_one').html("등록할 수 없습니다. 다시 확인해주세요.2");
					$('#myModal_one').modal();
				}
			},
			error : function(a, b, errMsg) {
				msg = "※ 실패 : " + errMsg;
				alert(msg);
			}
		});		
	}
}

function go_boardDel(){
	var gubun = $("select[name=boardGubun]").val();
	var url;
	if (gubun == "M") { //메인
		url = "/cms/manboard/manageBoard/mdel";
	}else if(gubun == "S"){ //서브
		url = "/cms/manboard/manageBoard/sdel";
	}	
	$.ajax({
		url : url,
		method : "post",
		data : $("#manboardForm").serialize(),
		success : function(result) {
			if (result == 0) {
				menuUrl('manboard/manageBoard', urlForm)
			}else{
				$('#modalBody_one').html("서브게시판이 등록되어 삭제할 수 없습니다.");
				$('#myModal_one').modal();
			}
		},
		error : function(a, b, errMsg) {
			msg = "※ 실패 : " + errMsg;
		}
	});
}

