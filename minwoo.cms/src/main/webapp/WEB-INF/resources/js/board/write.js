//top,left 메뉴 존재하는 페이지 이동시 사용하는 url 이동
function goviewUrl(url, frm, idx) {
	$('input[name=usbId]').val(idx);
	frm.action = "/cms/"+url;
	frm.submit();
}

$(function(){
	   regBtns();
});

var showBoard = function(board){
	   $(":input[name='usbTitle']").val($(board).data("usbTitle"));
	   $(":input[name='usbContent']").val($(board).data("usbContent"));
	   $(":input[name='userId']").val($(board).data("userId"));
	}

	var regBtns = function(){
	   var modal = $("#resultModal");// 결과창
	   var msg = $("#msg"); //결과 메세지
	   
	   var chkBoard=function(){ //게시물 작성 여부
		      if($(":input[name='usbTitle']").val()) return true;
		      else{
		    	  $('#modalBody_one').html("제목을 입력하세요!");
				    $('#myModal_one').modal();
		      }
		    /*  if($(":input[name='usbContent']").val()) return true;
		      else{
		    	  msg.text("내용을 입력하세요");
		    	  modal.modal("show");
		      }
		       if($(":input[name='userId']").val()) return true;
		      else{
		    	  msg.text("아이디를 입력하세요");
		    	  modal.modal("show");
		      } */
		   }
	   //등록버튼
	   $("#addBtn").bind("click",function(){
		   if(chkBoard()){
			   $.ajax({
				   	method:"post",
				  	url :"/cms/main/createboard",
					data : $("#boardForm").serialize(),
					success : function(result){
						if(result) {
						 $('#modalBody_one').html("등록 성공");
				         $('#myModal_one').modal();
				         $('#myModal_one').on('click', '#modalOk', function() {
					       	menuUrl('main', urlForm);
					         }); 
						}else {
						$('#modalBody_one').html("등록 실패");
			            $('#myModal_one').modal();
			            }
					},
					error:function(a, b, errMsg){
						$('#modalBody_one').html("등록 실패!"+errMsg);
			            $('#myModal_one').modal();
					}
			   });
		   }
	   });		   
	}
