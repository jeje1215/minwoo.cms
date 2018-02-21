

$(function(){
    regBtns();
    adList();
	var fileTarget = $('.filebox .upload-hidden');
	fileTarget.on('change', function() {
		if (window.FileReader) {
			var filename = $(this)[0].files[0].name;
		} else {
			var filename = $(this).val().split('/').pop().split('\\').pop();
		}
		$(this).siblings('.upload-name').val(filename);
	});    
});
 
 var showAd = function(ad){
   $(":input[name='adsCompany']").val($(ad).data("adsCompany"));
   $(":input[name='adsMan']").val($(ad).data("adsMan"));
   $(":input[name='adsMoney']").val($(ad).data("adsMoney"));
   $(":input[name='adsStartDate']").val($(ad).data("adsStartDate"));
   $(":input[name='adsEndDate']").val($(ad).data("adsEndDate"));
   $(":input[name='userId']").val($(ad).data("userId"));
   $(":input[name='adsUrl']").val($(ad).data("adsUrl"));
   $(":input[name='adsFile']").val($(ad).data("adsFile"));

   $("#viewFile").val($(ad).data("adsFile"));

   $("#addBtn").hide();
   $("#updateBtn").show();
   $("#delBtnAd").show();
   $("#adlist_bin").show();
 }
 
var regBtns = function(){
    var modal = $("#resultModal");  // 추가, 수정, 삭제 결과 창
    var msg = $("#msg");            // 결과 메세지
        
   var chkAd = function(){
	   var msg = "";
	   var finYn = "Y";
	   if($(":input[name='adsCompany']").val() == ""){
		   msg = "광고 이름을 확인하세요.";finYn = "N";
	   }
	   if($(":input[name='adsMan']").val() == ""){
		   msg = "관리자 이름을 확인하세요.";finYn = "N";
	   }  
	   if($(":input[name='adsMoney']").val() == ""){
		   msg = "광고금액을 확인하세요.";finYn = "N";
	   }  
	   if($(":input[name='adsStartDate']").val() == ""){
		   msg = "광고시작일을 확인하세요.";finYn = "N";
	   }  
	   if($(":input[name='adsEndDate']").val() == ""){
		   msg = "광고종료일을 확인하세요.";finYn = "N";
	   } 
	   if($(":input[name='adsUrl']").val() == ""){
		   msg = "광고Url을 확인하세요.";finYn = "N";
	   } 
	   if($("#viewFile").val() || $("#viewFile").val() == "파일선택"){
		   msg = "광고파일을 확인하세요.";finYn = "N";
	   } 

	   
	   if (finYn == "N"){
		    $('#modalBody_one').html(msg);
		    $('#myModal_one').modal(); return false;
	   } 
   }
 
   $("#addBtn").bind("click", function() {
         if (chkAd()) {
            var formData = new FormData($("#adFormAdd")[0]);
            //var formData = new FormData($("form")[0]);
            $.ajax({
               method:"post",
               url :"adjoin",
               data : formData, //$("#adFormAdd").serialize(),
               processData:false, //no serialize
               contentType:false, //multipart/formdata
               success : function(result) {
                  if (result){$('#modalBody_one').html("광고가 등록되었습니다.");
                  }else{$('#modalBody_one').html("광고 등록이 실패하였습니다. 관리자에게 문의하세요.");}
                  adList();
               },
               error : function(a, b, errMsg) {
                  $('#modalBody_one').html("추가 실패!" + errMsg);
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
                td2 = $("<td>"+ad.adsCompany+"</td><td>"+ad.adsMan+"</td><td>"+ad.adsMoney+"</td><td>"+ad.adsStartDate+"</td><td>"+ad.adsEndDate+"</td><td>"+ad.adsUrl+"</td><td>"+ad.adsFile+"</td>"
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
                td.find("input").data("adsFile", ad.adsFile);
               // alert(ad.adsFile);
            });                    
        },
      complete : function() {
            $(":input[name='adsCompany']").val("");
            $(":input[name='adsMan']").val("");
            $(":input[name='adsMoney']").val("");
            $(":input[name='adsStartDate']").val("");
            $(":input[name='adsEndDate']").val("");
            $(":input[name='adsUrl']").val("");
            $(":input[name='adsFile']").val("");
            
            $("#addBtn").show();
            $("#updateBtn").hide();
            $("#delBtnAd").hide();
            $("#adlist_bin").hide();
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