<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<style>@import url("<c:url value="/css/board/list.css"/>");
</style>
<script>
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
	   $("#listBtn").bind("click",function() {
	      var boardList = $("#boardList"); //게시판 목록
	      var tr;
	      var input;
	      var etc;
	      boardList.empty();

	      $.ajax({
	         url : "cms/main/listboards",
	         success : function(boards) {
	        	 $(boards).each(function(idx, board) {
	               tr = $("<tr></tr>");
	               td = $("<td><name='usbId' value='"
	                     + board.usbId+ "'xxxxonClick='showBoard(this)'/>"
	                     + board.usbId+ "</td>");
	               td2 = $("<td>"+ board.usbTitle+ "</td><td>"+ board.usbContent
	                     + "</td><td>"+ board.userId+ "</td><td>"+ board.regDate
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
		});
	}
</script>
<section id="post">
   <div class="container">
      <br>
      <table class="table table-hover">
         <thead>
            <tr>
               <th>번호</th>
               <th>제목</th>
               <th >내용</th>
               <th>작성자</th>
               <th>날짜</th>
               <th><b>조회수</b></th>
            </tr>
         </thead>
         <tbody id=boardList style="word-break:break-all">
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
         <div class="modal fade" id="resultModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" id="msg"></h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
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