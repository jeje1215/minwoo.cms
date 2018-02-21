

/*$(document).ready(function() {

	$("#ulevel").on("change", function() {
		console.log($(this).val());
	});
});*/

/*$(document).ready(function(){
	$(":button#testbtn").bind("click", function(){
		$.ajax({
			method:"post",
			url:"/cms/user/manuser/manageUser/medit",
			data:{
				userLevel:$("#prompt").val(),
				userId:$("input:checkbox[name=chkList]:checked").val()
				},
				success:function(){
					console.log("선택완료");
				}
		});
	});
});*/

//$(function() { 
//	$("input[name=level]:checked").each(function() {
//		  var test = $(this).val(); 
//		  alert("벨류값확인 : " + test);
//	});
//});

	
function go_btn() {
	var arrayParam = new Array();
	var selchk = $("#userLevel option:selected").val();
	if (selchk == "") {
		alert("수정할 등급을 선택해주세요.");
		return false;
	}
	$("input[name=level]:checked").each(function() {
		var test = $(this).val();
		// alert("벨류값확인 : " + test);
		arrayParam.push($(this).val())
		//arrayParam.push("'"+$(this).val()+"'")
	});

	$("#checkVal").val(arrayParam);
	$.ajax({
		url : "manuser/manageUser/medit",
		method : "post",
		data : $("#levelForm").serialize(),
		success : function(result) {
			if (result == true) {
				menuUrl('manuser', urlForm);
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
}


$(document).ready(function() {
	// 초기 값 지정
	
});
