<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>

<style>@import url("<c:url value="/css/manad/manad.css"/>");</style>	
<body>
<script>
   $(function() {
      $("#accordian h3").click(function() {
         $("#accordian ul ul").slideUp();
         if (!$(this).next().is(":visible")) {
            $(this).next().slideDown();
         }
      })
   })
   
$(function(){
    regBtns();
});
 
var showAd = function(ad){
    $(":input[name='name']").val($(ad).data("adsCompany"));
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
                $(ads).each(function(idx, ad){        
                    tr = $("<tr></tr>");
                    td = $("<td><input type='radio' name='adId' value='"
                          +ad.adsId+"'onClick='showAd(this)'/>"
                          +"&nbsp;&nbsp;&nbsp;"
                          +ad.adsId+"</td>");
                    td2 = $("<td>"+ad.adsCompany+"</td><td>"+ad.adsMan+"</td><td>"+ad.adsMoney+"</td><td>"+ad.adsStartDate+"</td><td>"+ad.adsEndDate+"</td>"
                    		
                    
                    );
                    
                    adList.append(tr.append(td).append(td2));      
                    td.find("input").data("adsCompany", ad.adsCompany);
                });                    
            }
        });    
    }); 
}
   
   
</script>


<body>
<!-- 	<header> -->
<!-- 		<img style="width: 300px; height: 95px; margin-left: 39%;" -->
<!-- 			src="../res/img/logo.png"> -->

<!-- 		<nav class="navbar navbar-default navbar-fixed"> -->
<!-- 			<ul class="nav navbar-nav"> -->
<!-- 				<li><a href="#"><span class="glyphicon glyphicon-home"> -->
<!-- 							HOME </span></a></li> -->
<!-- 				<li><a href="#"><span class="glyphicon glyphicon-heart"><b> -->
<!-- 								MYPAGE </b></span></a></li> -->
<!-- 				<li class="active"><a href="#"><span -->
<!-- 						class="glyphicon glyphicon-cog"><b> SETTING </b></span></a></li> -->
<!-- 				         <li><a href="#"><span class="glyphicon glyphicon-earphone"><b>
<!--                      CONTACT </b></span> </a></li> --> -->
<!-- 			</ul> -->
<!-- 		</nav> -->
<!-- 	</header> -->

<!-- 	<nav class="aside"> -->

<!-- 		<div class="profile"> -->
<!-- 			<div class="pricing-table pricing-three-column row"> -->
<!-- 				<div class="plan col-sm-4 col-lg-4"> -->
<!-- 					<div class="plan-name-bronze"> -->
<!-- 						<img src="../res/img/pro.jpg" style="width: 90px; height: 90px"> -->
<!-- 						<h5> -->
<!-- 							<i class="fa fa-child" aria-hidden="true" style="float: center"></i> -->
<!-- 							남승창님! -->
<!-- 						</h5> -->
<!-- 						<p>CMS에오신것을환영합니다.</p> -->

<!-- 					</div> -->
<!-- 					<ul class="pro"> -->
<!-- 						<li class="plan-feature"><i class="far fa-calendar-alt" -->
<!-- 							aria-hidden="true"></i> 가입일:</li> -->
<!-- 						<li class="plan-feature"><i class="fas fa-chart-line" -->
<!-- 							aria-hidden="true"></i> 회원등급:</li> -->
<!-- 						<li class="plan-feature"><i class="far fa-edit" -->
<!-- 							aria-hidden="true"></i> 게시글:</li> -->
<!-- 						<div class="row"> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								style="width: 80px;"> -->
<!-- 								<i class="fa fa-paw" aria-hidden="true"></i>MyPage -->
<!-- 							</button> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								style="background-color: #ffc4d7; width: 80px;"> -->
<!-- 								<i class="fas fa-sign-in-alt" aria-hidden="true"></i>Logout -->
<!-- 							</button> -->
<!-- 						</div> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->


<!-- 		<div id="accordian"> -->
<!-- 			<ul> -->
<!-- 				<li class="active"> -->
<!-- 					<h3>게시판관리</h3> -->
<!-- 					<ul> -->
<!-- 						<li><a href="#"></a></li> -->
<!-- 					</ul> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<h3> -->
<!-- 						회원관리<span class="plus">+</span> -->
<!-- 					</h3> -->
<!-- 					<ul> -->
<!-- 						<li><a href="#"></a></li> -->
<!-- 						<li><a href="#"></a></li> -->
<!-- 						<li><a href="#"></a></li> -->
<!-- 					</ul> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<h3> -->
<!-- 						접속통계 <span class="plus">+</span> -->
<!-- 					</h3> -->
<!-- 					<ul> -->
<!-- 						<li><a href="#"></a></li> -->
<!-- 						<li><a href="#"></a></li> -->
<!-- 						<li><a href="#"></a></li> -->
<!-- 					</ul> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<h3> -->
<!-- 						광고 등록<span class="plus">+</span> -->
<!-- 					</h3> -->
<!-- 					<ul> -->
<!-- 						<li><a href="#" -->
<!-- 							onclick="javascript:location.href='./01.html'">광고 등록</a></li> -->
<!-- 						<li><a href="#" -->
<!-- 							onclick="javascript:location.href='./02.html'">광고 관리</a></li> -->
<!-- 					</ul> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</div> -->

<!-- 	</nav> -->

	<section id="post">
		<div class="container">
			<br>
			<div class="d1">
				<select>
					<option value="">매체</option>
					<option value="제목">광고 종류</option>
					<option value="날짜">시작일</option>
					<option value="조회수">만료일</option>
					<option value="조회수">금액</option>
					<option value="조회수">관리자</option>
				</select>
				<div class="form">
					<input type="text" placeholder="검색어 입력">
					<button type="submit"></button>
				</div>
			</div>


			<h4>Cms.광고관리</h4>
			<div class="btn-group-center">
				<button type="button" class="btn btn-primary btn-md" id="addBtn">
					<i class="glyphicon glyphicon-ok"></i> 등록
				</button>
				<button type="button" class="btn btn-success btn-md" id="listBtn">
					<i class="glyphicon glyphicon-list-alt"></i> 목록
				</button>
				<button type="button" class="btn btn-warning btn-md" id="updateBtn">
					<i class="glyphicon glyphicon-refresh"></i> 수정
				</button>
				<button type="button" class="btn btn-danger btn-md" id="delBtn">
					<i class="glyphicon glyphicon-trash"></i> 삭제
				</button>
			</div>
			<br>

			<div class="modal fade" id="resultModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title" id="msg"></h4>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>




		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>광고이름</th>
					<th>광고관리자</th>
					<th>광고금액</th>
					<th>광고시작일</th>
					<th>광고종료일</th>

				</tr>
			</thead>
			<tbody id="adList">
			</tbody>
		</table>


		<div class="form-group-right">
			<div class="col-sm-12 text-right">
				<button type="button" class="btn btn-primary pull-right"
					data-toggle="modal" data-target="#myModal">
					등록 <i class="fas fa-plus"></i>
				</button>
			</div>
			<br> <br>
			<div class="text-center">
				<ul class="pagination">
					<li class="disabled"><a href="#"><span
							class="glyphicon glyphicon-chevron-left"></span></a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h5 class="modal-title" id="myModalLabel">등록되었습니다. 광고관리 메뉴로
							이동합니다.</h5>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal"
							onclick="javascript:location.href='./02.html'">확인</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../common/footer.jsp"%>