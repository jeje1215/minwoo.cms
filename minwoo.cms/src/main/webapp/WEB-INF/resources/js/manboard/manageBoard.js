
$(function() {
	var frm = $("#manboardForm").serialize();
	manboardList(frm);
/*	$.ajax({
		url : "/cms/manboard/manageBoard/list",
		method : "post",
		data : $("#manboardForm").serialize(),
		success : function(user) {
			if (user.resultCode == 1) {
				msg = "※ 일치하는 아이디가 없습니다.";
				$("input[name=loginId]").focus();
			}
		},
		error : function(a, b, errMsg) {
			msg = "※ 실패 : " + errMsg;
			alert(msg);
		}
	});*/
});

function manboardList(frm) {
	alert(">>>>");
	frm.action = "/cms/manboard/manageBoard/list";
	frm.submit();
}
