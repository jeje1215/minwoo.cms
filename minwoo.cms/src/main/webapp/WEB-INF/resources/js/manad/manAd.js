$(function(){
    regBtns();
});
 
 var showAd = function(ad){
   $(":input[name='name']").val($(ad).data("adsCompany"));
 }
 
var regBtns = function(){
    var modal = $("#resultModal");  // 추가, 수정, 삭제 결과 창
    var msg = $("#msg");            // 결과 메세지
        
   var chkAd = function(){
        if($(":input[name='adsCompany']").val()) return true;
        else {
            msg.text("광고 이름을 확인하세요.");
          modal.modal("show");
        }             
        if($(":input[name='adsMan']").val()) return true;
        else {
            msg.text("관리자이름을 확인하세요..");
          modal.modal("show");
        }
        if($(":input[name='adsMoney']").val()) return true;
        else {
            msg.text("금액 숫자로 입력하세요.");
          modal.modal("show");
        }
        if($(":input[name='adsStartDate']").val()) return true;
        else {
            msg.text("광고시작일 확인하세요.");
          modal.modal("show");
        }
        if($(":input[name='adsEndDate']").val()) return true;
        else {
            msg.text("광고종료일 확인하세요.");
          modal.modal("show");
        }
        if($(":input[name='userId']").val()) return true;
        else {
            msg.text("광고작성자을 확인하세요.");
          modal.modal("show");
        }
        if($(":input[name='adsUrl']").val()) return true;
        else {
            msg.text("광고Url을 확인하세요.");
          modal.modal("show");
        }
    }
 
   
    //버튼 클릭시 이벤트
    $("#listBtn").bind("click", function(){
        var adList = $("#adList");  // 광고목록
        var tr;
        var input;
        var etc;        
        adList.empty();
        
        $.ajax({
            url:"listads",
            success:function(ads){
            	var x = 1;
                $(ads).each(function(idx, ad){    
                    tr = $("<tr></tr>");
                    td = $("<td>"+x+"<input type='radio' name='adsId' id='adadid'value='"
                          +ad.adsId+"'onClick='showAd(this)'/>"
                          +"</td>");
                    td2 = $("<td>"+ad.adsCompany+"</td><td>"+ad.adsMan+"</td><td>"+ad.adsMoney+"</td><td>"+ad.adsStartDate+"</td><td>"+ad.adsEndDate+"</td><td>"+ad.userId+"</td><td>"+ad.adsUrl+"</td>"
                      );
                    
                    x++;
                    
                    adList.append(tr.append(td).append(td2));      
                    td.find("input").data("adsCompany", ad.adsCompany);
                });                    
            }
        });    
    }); 

	$("#addBtn").bind("click", function() {
			if (chkAd()) {
				$.ajax({
					url :"adjoin",
					data : $("#adFormAdd").serialize(),
					success : function(result) {
						if (result)
							msg.text("추가 성공!");
						else
							msg.text("추가 실패");
						$("#listBtn").trigger("click");
					},
					error : function(a, b, errMsg) {
						msg.text("추가 실패!" + errMsg);
					},
					complete : function() {
						modal.modal("show");
					}
				});
			}

		});

		$("#delBtnAd").bind("click", function() {
			var ad = $("input:radio[id='adadid']:checked").val();
			if (ad == undefined) {
				modal.modal("show");
				msg.text("선택하세요.")
			} else {
				$.ajax({
					url : "delad",
					data : {
						adsId : ad
					},
					success : function(result) {
						if (result)
							msg.text("삭제 성공!");
						else
							msg.text("삭제 실패");
						$("#listBtn").trigger("click");
					},
					error : function(a, b, errMsg) {
						msg.text("삭제 실패!" + errMsg);
					},
					complete : function() {
						modal.modal("show");
					}
				});
			}
		});
		
	    $("#updateBtn").bind("click", function(){
	    	var ad = $("input:radio[id='adadid']:checked").val();
	    	$("input[name=adsId_tmp]").val(ad);
				
	    	$('input[name=adadid]').val(ad);
			if (ad == undefined) {
				modal.modal("show");
				msg.text("선택하세요.")

			} else {
				$.ajax({
					url : "fixAdInfo",
					data : $("#adFormAdd").serialize(),
					//adsId:ad.val(), adsCompany:$("input[name='name']").val()},
					success : function(result) {
						if (result)
							msg.text("수정 성공");
						else
							msg.text("수정 실패");
						$("#listBtn").trigger("click");
					},
					error : function(a, b, errMsg) {
						msg.text("빈칸을 확인하세요. ");
					},
					complete : function() {
						modal.modal("show");
					}
				});
			}
		});
	}