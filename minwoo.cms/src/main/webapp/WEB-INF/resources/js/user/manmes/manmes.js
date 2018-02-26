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
    
    $(function(){
        var mesList = $("#mesList");  // 쪽지 목록
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
                  
                    td = $("<td><input type='checkbox' name='mesId' value='"
                          +mes.mesId+"'onClick='showMes(this)'/>"
                          +""
                          +"</td>");
                    td2 = $("<td>"+mes.userNic+"</td><td>"+mes.userNm+"</td><td>"+mes.userMail+"</td><td>"+mes.mesContent+"</td> ");
                    
                    mesList.append(tr.append(td).append(td2));      
                    td.find("input").data("userNic", mes.userNic);
                });                    
            }
        });    
    });
    
    $(function(){
	    $("#delBtnMes").bind("click", function(){
	    	var arrayParam = new Array();    	
	    	$("input[name='mesId']:checked").each(function() {
	    		var test = $(this).val();
	    		arrayParam.push($(this).val());
	    	});	    	
		    $("#checked").val(arrayParam);
			$.ajax({
				url : "delMess",
				method :"post",
				data : $("#mesFom").serialize(),
				success : function(result) {
					if (result == true) {			
					    $('#modalBody_one').html("삭제되었습니다.");
					    $('#myModal_one').modal();
			            $('#myModal_one').on('click', '#modalOk', function() {
			                menuUrl('user/manmes', urlForm);
			             }); 
					} else {
						$('#modalBody_one').html("삭제할수 없습니다.");
						$('#myModal_one').modal();
					}
					//menuUrl('manuser', urlForm);
				},
				error : function(a, b, errMsg) {
					msg = "※ 실패 : " + errMsg;
					//alert(msg);
				}
			});
	    });                    
    })
}
