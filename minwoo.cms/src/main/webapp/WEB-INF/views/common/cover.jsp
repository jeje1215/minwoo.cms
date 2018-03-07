<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<style>@import url("<c:url value="/css/cover.css"/>");</style>
<script src="<c:url value="/js/cover.js"/>"></script>

   <div id="menutop">
      <ul class="nav navbar-nav navbar-right">
      	<c:if test="${sessionScope.user == null}">
         <li>
         	<a href="#" onclick="goUrl('user/join/userJoin', urlForm)">
         		<span class="glyphicon glyphicon-user"></span> Sign Up
            </a>
         </li>
         <li>
         	<a href="#" onclick="goUrl('user/login/coverLogin', urlForm)">
         		<span class="glyphicon glyphicon-log-in"></span> Login
           </a>
        </li>
        </c:if>
      </ul>
   </div>
   <div id="cover">
      <p class="covertitle" onclick="menuUrl('main', urlForm)" style="cursor:pointer;">
        Cafe's Management System
         <br>
      </p>
   </div>


<h4 id="thumbnails-custom-content">게시물 <!--Custom content--></h4>
  <div class="bs-example" data-example-id="thumbnails-with-custom-content">
    <div class="row">
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
           <div style="display:inline-block;" class="board1" id="boardList">           
          </div>           
        </div>        
      </div>      
      <div class="col-sm-6 col-md-4">
              <div class="thumbnail">
           <div style="display:inline-block;" class="board2" id="boardList2" >      
              </div>
        </div>
      </div>      
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
           <div style="display:inline-block;"class="board3" id="boardList3">
          </div>
        </div>
      </div>
     </div>

	<div class="container">
		<div class="header">
			<h3 class="text-muted"></h3>
		</div>
		<div class="jumbotron">
			<h1>CMS</h1>
			<p class="lead">개시판은 사람과 사람,오늘과 내일,네트워크와 네트워크가 연결되는 더 큰 세상을
				만들겠습니다. 이제 국내뿐 아니라 전 세계 이용자과 소통하는 새로운 경험과 가치를 통해 한 단계 진화된 연결을 만들어가고자
				합니다.</p>
			<p>
				<a class="btn btn-lg btn-success" href="#" role="button">팀원 소개▼</a>
			</p>
		</div>
		<div class="row marketing">
			<div class="col-lg-6">
				<h4>류민우</h4>
				<p>
					여자한테 인기 많은 팀장!입니다.<br> 팀에 발표를 담당하고 있습니다.
				</p>
				<h4>지은빈</h4>
				<p>
					팀에 얼짱!을 맡고 있는 품질관리자 입니다<br> 얼짱 답게
					메인,로그인,회원가입,관리자게시판,생성,수정,삭제,목록등 수많은 일을 해서 맡은일을 다 말할려면 2박3일이 필요할 정도로
					팀원의 전체적인 코딩품질을 높여 주었습니다.
				</p>
				<h4>조유나</h4>
				<p>
					다재다능을 맡고 있는 디자이너 입니다.<br> 수많은 재주로 팀의 디자인부터 시작해서 메세지함
					관리보내기,광고등록,수정,삭제를 개발하였습니다.
				</p>
			</div>
			<div class="col-lg-6">
				<h4>황유리</h4>
				<p>
					우리팀의 일본인 문서관리자!입니다.<br> 프로젝트에 필요한 모든 문서를 관리하며,게시글 생성,수정,삭제를 개발
					하였습니다.
				</p>
				<h4>남승창</h4>
				<p>
					저희팀 2번째 막내 말썽꾸러기남승창 입니다.<br> 회원정보수정,삭제를 개발하였습니다. 하였습니다.
				</p>
			</div>
		</div>
	</div>


	</body>
</html>