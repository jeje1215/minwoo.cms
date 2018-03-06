$(function(){
    regBtns();
	var parentId = opener.document.getElementById( "mesId" ).value;
	$("#chk11").val(parentId);
});
var showMsg = function(msg){
    $(":input[id='chk11']").val($(msg).data("mesGetId"));
   
}
 
var regBtns = function(){
//    var modal = $("#resultModal");  // 추가, 수정, 삭제결과창
//    var msg1 = $("#msg1");            // 결과메세지
        
    var chkName = function(){ // 회원이름입력여부   
        if($(":input[id='chk11']").val()) return true;
        else {
        	   $('#modalBody_one').html("받는 사람 입력하세요!");
			    $('#myModal_one').modal();
       
        }
    }
    
    //버튼클릭시이벤트
    $("#listBtn").bind("click", function(){
        var userList = $("#userList");  // 회원목록
        var tr
        var input
        var etc
        userList.empty();
    });
    
    $("#sendMsg").bind("click", function(){
        if(chkName()){
               $.ajax({
            	   method:"post",
                   url:"sendmsg",                
                   data:$("#msgSend").serialize(),
                   success:function(result){                    
                       if(result) {
					    $('#modalBody_two').html("쪽지가 보내졌습니다!");
					    $('#myModal_two').modal();
   			            $('#myModal_two').on('click', '#modalOk', function() {
			                window.close();
			             }); 
                       }else {
                    	   msg1.text("발신불가");
                       }
                       $("#listBtn").trigger("click");
                   },
                   error:function(a, b, errMsg1){
                       //msg1.text("발신불가: " + errMsg1);                
                   },
                   complete:function(){
                       //modal.modal("show");                    
                   }
               });
        }
    });
}

