
function go_boardGubun(val) {
	if(val.value == 'M'){
		$('#manboard').show();
		$('#subboard').hide();
	}else if(val.value == 'S'){
		$('#manboard').hide();
		$('#subboard').show();
	}else{
		$('#manboard').hide();
		$('#subboard').hide();
	}
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
				alert(result);
				if (result == true) {
					alert("성공");
				} else {
					alert("실패");
				}
			},
			error : function(a, b, errMsg) {
				msg = "※ 실패 : " + errMsg;
			}
		});

	});
});


