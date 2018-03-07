$(function(){
      regBtns();
});

var showBoard = function(board){
      $(":input[name='usbTitle']").val($(board).data("usbTitle"));
      $(":input[name='usbContent']").val($(board).data("usbContent"));
}

var regBtns = function(){
    var modal = $("#resultModal");// 결과창
    var msg = $("#msg"); //결과 메세지
}

function updBtn(){ //수정 버튼   

         $.ajax({
            url:"fixBoard",
            method:"post",
            data :$("#upForm").serialize(),
            success : function(result) {
               if (result){
                  $('#modalBody_one').html("수정 성공");
                $('#myModal_one').modal();
                $('#myModal_one').on('click', '#modalOk', function() {
               menuUrl('main', urlForm);
               }); 
            }else{
                  $('#modalBody_one').html("수정 실패");
                  $('#myModal_one').modal();
               }
         },
         error : function(a, b, errMsg) {
               $('#modalBody_one').html("수정 실패"+errMsg);
               $('#myModal_one').modal();
            }
      });
   }
      
function delBtn(){ //삭제버튼
   var board = $("#boardId").val();
   
      $.ajax({
         url : "del",
         method:"post",
         data : {usbId:board},
         success : function(result) {
            if (result){
               $('#modalBody_one').html("삭제 성공");
               $('#myModal_one').modal();
               $('#myModal_one').on('click', '#modalOk', function() {
                   menuUrl('main', urlForm);
                }); 
            }else{
               $('#modalBody_one').html("삭제 실패");
               $('#myModal_one').modal();
            }
         },
         error : function(a, b, errMsg) {
            $('#modalBody_one').html("삭제 땡"+errMsg);
            $('#myModal_one').modal();
         }
      });
}
