
function go_boardGubun(val) {
	if(val.value == 'M' || val == 'M'){
		$('#manboard').show();
		$('#subboard').hide();
	}else if(val.value == 'S' || val == 'S'){
		$('#manboard').hide();
		$('#subboard').show();
	}else{
		$('#manboard').hide();
		$('#subboard').hide();
	}
}

function go_edit(val, gubun){
	$("select[name=mabId]").val(val);
	$.ajax({
		url : "/cms/manboard/manageBoard/medit_list",
		method : "post",
		data : {mabId:val},
		success : function(board) {
			if(board != null){
				$("select[name=boardGubun]").val(gubun).attr("selected", "selected");
				go_boardGubun(gubun);
				$("input[name=mabNm]").val(board.mabNm);
			    $('input:radio[name=mabYn]:input[value=' + board.mabYn + ']').attr("checked", true);
			}
		},
		error : function(a, b, errMsg) {
			msg = "※ 실패 : " + errMsg;
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
			url = "/manboard/manageBoard/sadd";
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
					$('#modalBody_one').html("등록할 수 없습니다. 다시 확인해주세요.");
					$('#myModal_one').modal();
				}
			},
			error : function(a, b, errMsg) {
				msg = "※ 실패 : " + errMsg;
			}
		});

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
			url = "/manboard/manageBoard/sedit";
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
					$('#modalBody_one').html("등록할 수 없습니다. 다시 확인해주세요.");
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
});

function go_boardDel(){
	var gubun = $("select[name=boardGubun]").val();
	var url;
	if (gubun == "M") { //메인
		url = "/cms/manboard/manageBoard/mdel";
	}else if(gubun == "S"){ //서브
		url = "/manboard/manageBoard/sdel";
	}	
	$.ajax({
		url : url,
		method : "post",
		data : $("#manboardForm").serialize(),
		success : function(result) {
			if (result == 0) {
				menuUrl('manboard/manageBoard', urlForm)
			} else if(result == 1 ){
				$('#modalBody_one').html("서브 게시판이 존재해 메인 게시판을 삭제 할 수 없습니다.");
				$('#myModal_one').modal();
			}
		},
		error : function(a, b, errMsg) {
			msg = "※ 실패 : " + errMsg;
		}
	});
}

