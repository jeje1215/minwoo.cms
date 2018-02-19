$(function(){
    regBtns();
    adList();
});
 
 var showAd = function(ad){
   $(":input[name='adsCompany']").val($(ad).data("adsCompany"));
   $(":input[name='adsMan']").val($(ad).data("adsMan"));
   $(":input[name='adsMoney']").val($(ad).data("adsMoney"));
   $(":input[name='adsStartDate']").val($(ad).data("adsStartDate"));
   $(":input[name='adsEndDate']").val($(ad).data("adsEndDate"));
   $(":input[name='userId']").val($(ad).data("userId"));
   $(":input[name='adsUrl']").val($(ad).data("adsUrl"));
 }
 
var regBtns = function(){
    var modal = $("#resultModal");  // 추가, 수정, 삭제 결과 창
    var msg = $("#msg");            // 결과 메세지
        
   var chkAd = function(){
        if($(":input[name='adsCompany']").val()) return true;
        else {
			$('#modalBody_one').html("광고 이름을 확인하세요.");
			$('#myModal_one').modal(); return false;
        }             
        if($(":input[name='adsMan']").val()) return true;
        else {
			$('#modalBody_one').html("관리자이름을 확인하세요.");
			$('#myModal_one').modal(); return false;
        }
        if($(":input[name='adsMoney']").val()) return true;
        else {
			$('#modalBody_one').html("금액 숫자로 입력하세요.");
			$('#myModal_one').modal(); return false;
        }
        if($(":input[name='adsStartDate']").val()) return true;
        else {
			$('#modalBody_one').html("광고시작일 확인하세요.");
			$('#myModal_one').modal(); return false;
        }
        if($(":input[name='adsEndDate']").val()) return true;
        else {
			$('#modalBody_one').html("광고종료일 확인하세요.");
			$('#myModal_one').modal(); return false;
        }
        if($(":input[name='userId']").val()) return true;
        else {
			$('#modalBody_one').html("광고작성자을 확인하세요.");
			$('#myModal_one').modal(); return false;
        }
        if($(":input[name='adsUrl']").val()) return true;
        else {
			$('#modalBody_one').html("광고Url을 확인하세요.");
			$('#myModal_one').modal(); return false;
        }
    }
 
	$("#addBtn").bind("click", function() {
			if (chkAd()) {
				$.ajax({
					url :"adjoin",
					data : $("#adFormAdd").serialize(),
					success : function(result) {
						if (result){$('#modalBody_one').html("광고가 등록되었습니다.");
						}else{$('#modalBody_one').html("광고 등록이 실패하였습니다. 관리자에게 문의하세요.");}
						adList();
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

		$("#delBtnAd").bind("click", function() {
			$('#modalBody_manad').html("광고를 삭제하시겠습니까?");
			$('#myModal_manad').modal();
		});
		
	    $("#updateBtn").bind("click", function(){
	    	var ad = $("input:radio[id='adadid']:checked").val();
	    	$("input[name=adsId_tmp]").val(ad);
				
	    	$('input[name=adadid]').val(ad);
			if (ad == undefined) {
				$('#modalBody_one').html("수정할 광고를 선택해주세요.");
				$('#myModal_one').modal(); return false;

			} else {
				$.ajax({
					url : "fixAdInfo",
					data : $("#adFormAdd").serialize(),
					//adsId:ad.val(), adsCompany:$("input[name='name']").val()},
					success : function(result) {
						if (result){$('#modalBody_one').html("광고가 수정되었습니다.");
						}else{$('#modalBody_one').html("광고 수정이 실패하였습니다. 관리자에게 문의하세요.");}
						adList();
					},
					error : function(a, b, errMsg) {
						$('#modalBody_one').html("빈칸을 확인하세요.");
					},
					complete : function() {
						$('#myModal_one').modal(); 
					}
				});
			}
		});
	}

function adList(){
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
                td = $("<td><input type='radio' name='adsId' id='adadid'value='"
                      +ad.adsId+"'onClick='showAd(this)' style='cursor:pointer;'/>"
                      +"</td>");
                td2 = $("<td>"+ad.adsCompany+"</td><td>"+ad.adsMan+"</td><td>"+ad.adsMoney+"</td><td>"+ad.adsStartDate+"</td><td>"+ad.adsEndDate+"</td><td>"+ad.userId+"</td><td>"+ad.adsUrl+"</td>"
                  );
                x++;
                adList.append(tr.append(td).append(td2));      
                td.find("input").data("adsCompany", ad.adsCompany);
                td.find("input").data("adsMan", ad.adsMan);
                td.find("input").data("adsMoney", ad.adsMoney);
                td.find("input").data("adsStartDate", ad.adsStartDate);
                td.find("input").data("adsEndDate", ad.adsEndDate);
                td.find("input").data("userId", ad.userId);
                td.find("input").data("adsUrl", ad.adsUrl);
            });                    
        },
		complete : function() {
			   $(":input[name='adsCompany']").val("");
			   $(":input[name='adsMan']").val("");
			   $(":input[name='adsMoney']").val("");
			   $(":input[name='adsStartDate']").val("");
			   $(":input[name='adsEndDate']").val("");
			   $(":input[name='adsUrl']").val("");
		}
    });    
}

function go_adDel(){
	var ad = $("input:radio[id='adadid']:checked").val();
	if (ad == undefined) {
		$('#modalBody_one').html("삭제할 광고를 선택해주세요.");
		$('#myModal_one').modal(); return false;
	} else {
		$.ajax({
			url : "delad",
			data : {
				adsId : ad
			},
			success : function(result) {
				if (result){ $('#modalBody_one').html("광고가 삭제되었습니다.");
				}else{ $('#modalBody_one').html("광고 삭제가 실패하였습니다. 관리자에게 문의하세요.");}
				adList();
			},
			error : function(a, b, errMsg) {
				//msg.text("삭제 실패!" + errMsg);
				$('#modalBody_one').html("등록오류입니다. 관리자에게 문의하세요.");
			},
			complete : function() {
				$('#myModal_one').modal(); 
			}
		});
	}
}