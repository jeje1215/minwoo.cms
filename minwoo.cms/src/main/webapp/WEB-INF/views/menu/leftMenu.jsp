<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
$(function(){
	$("#accordian h3").click(function(){
		$("#accordian ul ul").slideUp();
		if(!$(this).next().is(":visible")){
			$(this).next().slideDown();
		}
	})
}) 
</script>     
	<nav class="aside">
		<%@ include file="../user/login/login.jsp"%>
<!-- 			<div class="a">
				<h3>오늘 개소식!</h3>
				<a href="#">New <span class="badge">5</sapn></a><br> <a href="#">은빈이
					남친 사귄 횟수<span class="badge">10</sapn>
				</a><br> <a href="#">updates<span class="badge">2</sapn></a><br>
			</div>	 -->		
		<div id="accordian">
			<ul>
				<li class="active">
					<h3>공지사항</h3>
					<ul>
						<li><a href="#">게시판공지사항</a></li>
					</ul>
				</li>
				<li>
					<h3>
						연예 게시판<span class="plus">+</span>
					</h3>
					<ul>
						<li><a href="#">방탄소년단</a></li>
						<li><a href="#">트와이스</a></li>
						<li><a href="#"></a></li>
					</ul>
				</li>
				<li>
					<h3>
						시사 게시판 <span class="plus">+</span>
					</h3>
					<ul>
						<li><a href="#">경제</a></li>
						<li><a href="#">사회</a></li>
						<li><a href="#">문화</a></li>
					</ul>
				</li>
				<li>
					<h3>
						게임 게시판 <span class="plus">+</span>
					</h3>
					<ul>
						<li><a href="#">배틀그라운</a></li>
						<li><a href="#">오버워치</a></li>
						<li><a href="#">스타크래프트</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="ad">
			<h3>광고 넣는 부분.</h3>
		</div>
	</nav>
<!-- </div>	 -->