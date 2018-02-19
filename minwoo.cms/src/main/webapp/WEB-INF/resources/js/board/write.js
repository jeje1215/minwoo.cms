$(function(){
   regBtns();
});

var showBoard = function(board){
   $(":input[name='usbTitle']").val($(board).data("usbTitle"));
   $(":input[name='usbContent']").val($(board).data("usbContent"));
   $(":input[name='subId']").val($(board).data("subId"));
}

var regBtns = function(){
   var modal = $("#resultModal");// 결과창
   var msg = $("#msg"); //결과 메세지
   
   var chkBoard=function(){ //게시물 작성 여부
      if($(":input[name='usbTitle']").val()) return true;
      else{
    	  $('#modalBody_one').html("제목을 입력하세요.");
			$('#myModal_one').modal(); return false;
      }
      if($(":input[name='usbContent']").val()) return true;
      else{
    	  $('#modalBody_one').html("내용을 입력하세요.");
			$('#myModal_one').modal(); return false;
      }
      if($(":input[name='subId']").val()) return true;
      else{
    	  $('#modalBody_one').html("아이디를 입력하세요.");
			$('#myModal_one').modal(); return false;
      }
   }
   
   $("#addBtn").bind("click", function() {
		if (chkBoard()) {
			$.ajax({
				url :"createBoard",
				data : $("#boardForm").serialize(),
				success : function(result) {
					if (result){$('#modalBody_one').html("게시물이 등록되었습니다.");
					}else{$('#modalBody_one').html("등록에 실패했습니다.");}
					boardList();
				},
				error : function(a, b, errMsg) {
					//$('#modalBody_one').html("추가 실패!" + errMsg);
				},
				complete : function() {
					$('#myModal_one').modal();
				}
			});
		}
	});
}