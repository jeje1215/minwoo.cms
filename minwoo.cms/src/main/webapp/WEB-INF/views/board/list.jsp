<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<style>@import url("<c:url value="/css/board/list.css"/>");
</style>
<script>
$(function(){
	   regBtns();
	   boardList();
});

	var showBoard = function(board){
	   $(":input[name='name']").val($(board).data(usbTitle));
	}

	var regBtns = function(){
	    var modal = $("#resultModal");  // 추가, 수정, 삭제 결과 창
	    var msg = $("#msg");  // 결과 메세지
	
	}  
	function boardList(){
	   $("#listBtn").bind("click",function() {
	      var boardList = ("#boardList");
	      var tr;
	      var input;
	      var etc;
	      boardList.empty();

	      $.ajax({
	         url : "listBoards",
	         success : function(boards) {
	           var x=1;
	        	 $(boards).each(function(idx, board) {
	               tr = $("<tr></tr>");
	               td = $("<td><input name='usbId' id='usbusbid'value='"
	                     + board.usbId+ "'onClick='showBoard(this)' style='cursor:pointer;'/>"
	                     + board.usbId+ "</td>");
	               td2 = $("<td>"+ board.usbTitle+ "</td><td>"+ board.usbContent
	                     + "</td><td>"+ board.subId+ "</td><td>"+ board.regDate
	                     + "</td><td>"+ board.usbCnt+"</td>");

	               boardList.append(tr.append(td).append(td2));
	               td.find("input").data("usbId",board.usbId);
	               td.find("input").data("usbTitle",board.usbTitle);
	               td.find("input").data("usbContent",board.usbContent);
	               td.find("input").data("subId",board.subId);
	               td.find("input").data("regDate",board.regDate);
	            });
	         },
	 		 complete : function() {
	 			   $(":input[name='usbId']").val("");
	 			   $(":input[name='usbTitle']").val("");
	 			   $(":input[name='usbContent']").val("");
	 			   $(":input[name='subId']").val("");
	 			   $(":input[name='regDate']").val("");
	 		}
	      });
		});
	}
</script>
<section id="post">
   <div class="container">
      <div class="name">
         <i class="fa fa-envelope" aria-hidden="true"></i>공지사항
      </div>
      <br>
      <div class="d1">
         <select>
            <option value="">선택</option>
            <option value="제목">제목</option>
            <option value="날짜">날짜</option>
            <option value="조회수">조회수</option>
         </select>
         <div class="form">
            <input type="text" placeholder="검색어 입력">
            <button type="submit"></button>
         </div>
      </div>


      <table class="table table-hover">
         <thead>
            <tr>
               <th>번호</th>
               <th class="title">제목</th>
               <th>작성자</th>
               <th style="color: #EA990B;">날짜</th>
               <th style="color: #EA990B;"><b>조회수</b></th>
            </tr>
         </thead>
         <tbody id=boardList>

         </tbody>
      </table>


      <div class="form-group">
         <div class="col-sm-12 text-right">
            <button type="button" class="btn btn-success btn-md" id="listBtn">
               <i class="glyphicon glyphicon-list-alt"></i> 목록
            </button>
            <button class="btn btn-primary" type="submit"
               onclick="menuUrl('board/write', urlForm)">
               등록 <i class="fas fa-plus"></i>
            </button>
         </div>
         <br> <br>
         <div class="text-center">
            <ul class="pagination">
               <li class="disabled"><a href="#"><span
                     class="glyphicon glyphicon-chevron-left"></span></a></li>
               <li class="active"><a href="#">1</a></li>
               <li><a href="#">2</a></li>
               <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
            </ul>
         </div>
      </div>
   </div>
</section>