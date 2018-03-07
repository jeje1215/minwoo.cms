$(function(){
	   boardList();
});

var showBoard = function(board){
   $(":input[name='usbId']").val($(board).data(usbId));
   $(":input[name='usbTitle']").val($(board).data(usbTitle));
   $(":input[name='usbContent']").val($(board).data(usbContent));
   $(":input[name='userId']").val($(board).data(userId));
   $(":input[name='regDate']").val($(board).data(regDate));
   $(":input[name='usbCnt']").val($(board).data(usbCnt));
}


function boardList(){
      var boardList = $("#boardList"); //게시판 목록
      var tr;
      var input;
      var etc;
      boardList.empty();

      $.ajax({
         url : "cms/main/listboards",
         success : function(boards) {
        	 $(boards).each(function(idx, board) {
				var nowDate = new Date(board.regDate);
				month = ''+(nowDate.getMonth()+1);
				day = ''+nowDate.getDate();
				year = nowDate.getFullYear();
				if(day.length<2) day = '0' + day;
				if(month.length < 2) month = '0' + month;	 
				
			     tr = $("<tr></tr>");
			     td = $("<td ><name='usbId' value='"
			           + board.usbId+ "onClick='showBoard(this)'/>"
			           + board.usbId+ "</td>");
			     td2 = $("<td style='cursor:pointer;' onclick='goviewUrl(\"board/detail\", listForm, "+board.usbId+")'>"
			  		   + board.usbTitle+ "</td><td style='cursor:pointer;' onclick='go_mes(\""+board.userId+"\");'>"
			       		+ board.userId+ "</td><td>"+ [year,month,day].join('-')
			           + "</td><td>"+ board.usbCnt+"</td>");
			     
			     boardList.append(tr.append(td).append(td2));
			     td.find("input").data("usbTitle",board.usbTitle);
			     td.find("input").data("usbContent",board.usbContent);
			     td.find("input").data("userId",board.userId);
            });
         },
 		 complete : function() {
 			   $(":input[name='usbId']").val("");
 			   $(":input[name='usbTitle']").val("");
 			   $(":input[name='usbContent']").val("");
 			   $(":input[name='userId']").val("");
 			   $(":input[name='regDate']").val("");
 		}
      });
	}
	
function go_mes(id){
	$("#mesId").val(id);
	window.open('<c:url value="/message"/>','window','location=no, directories=no,resizable=no,status=no,toolbar=no,menubar=no, width=700,height=700,left=0, top=0, scrollbars=yes');
	return false;
}	