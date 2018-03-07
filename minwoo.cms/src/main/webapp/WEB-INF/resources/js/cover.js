$(function(){
	   boardList();
});

function boardList(){
      var boardList = $("#boardList"); //게시판 목록
      var tr;
      var input;
      var etc;
      boardList.empty();

      $.ajax({
         url : "cms/main/listboards",
         success : function(boards) {
        	 var i = 0;
        	 $(boards).each(function(idx, board) {
        		 if(i==2){
					 var nowDate = new Date(board.regDate);
					 month = ''+(nowDate.getMonth()+1);
					 day = ''+nowDate.getDate();
					 year = nowDate.getFullYear();
					 if(day.length<2) day = '0' + day;
					 if(month.length < 2) month = '0' + month;	 
						 
					   table = $("<table></table>");/*
					   td = $("<tr><td><name='usbId' value='"
					         + board.usbId+ "onClick='showBoard(this)'/>"
					         + board.usbId+ "</td></tr>");
					   td2 = $("<td style='cursor:pointer;' onclick='goviewUrl(\"board/detail\", listForm, "+board.usbId+")'>"
							   + board.usbTitle+ "</td><td>"
					     		+ board.userId+ "</td><td>"+ [year,month,day].join('-')
					         + "</td><td>"+ board.usbCnt+"</td>");*/
					   table_title = $("<tr><td>제목:<name='usbId' value='"
					   + board.usbId+ "onClick='showBoard(this)'/>"
					   + board.usbTitle+ "</td></tr>");
					   table_content = $("<tr><td>내용:"
					   + board.usbContent+ "</td></tr>");
					   boardList.append(table.append(table_title).append(table_content));
        		 }
               i++;
        	 });
         }
    });
}

//

$(function(){
	   boardList2();
});

function boardList2(){
   var boardList = $("#boardList2"); //게시판 목록
   var tr;
   var input;
   var etc;
   boardList.empty();

   $.ajax({
      url : "cms/main/listboards",
      success : function(boards) {
     	 var i = 0;
     	 $(boards).each(function(idx, board) {
     		 if(i==3){
					 var nowDate = new Date(board.regDate);
					 month = ''+(nowDate.getMonth()+1);
					 day = ''+nowDate.getDate();
					 year = nowDate.getFullYear();
					 if(day.length<2) day = '0' + day;
					 if(month.length < 2) month = '0' + month;	 
						 
					   table = $("<table></table>");/*
					   td = $("<tr><td><name='usbId' value='"
					         + board.usbId+ "onClick='showBoard(this)'/>"
					         + board.usbId+ "</td></tr>");
					   td2 = $("<td style='cursor:pointer;' onclick='goviewUrl(\"board/detail\", listForm, "+board.usbId+")'>"
							   + board.usbTitle+ "</td><td>"
					     		+ board.userId+ "</td><td>"+ [year,month,day].join('-')
					         + "</td><td>"+ board.usbCnt+"</td>");*/
					   table_title = $("<tr><td>제목:<name='usbId' value='"
					   + board.usbId+ "onClick='showBoard(this)'/>"
					   + board.usbTitle+ "</td></tr>");
					   table_content = $("<tr><td>내용:"
					   + board.usbContent+ "</td></tr>");
					   boardList.append(table.append(table_title).append(table_content));
     		 }
            i++;
     	 });
      }
 });
}


