<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
	<nav class="aside">
		<%@ include file="../user/login/login.jsp"%>
			<!-- 			
			<div class="a">
				<h3>오늘 개소식!</h3>
				<a href="#">New <span class="badge">5</sapn></a><br> <a href="#">은빈이
					남친 사귄 횟수<span class="badge">10</sapn>
				</a><br> <a href="#">updates<span class="badge">2</sapn></a><br>
			</div>	 
			-->		
		<div id="accordian">
			<!-- home 메뉴  -->
			<ul id="menu_home">
				<li>
					<c:forEach items="${man_boardlist}" var="manlist">
						<c:if test="${manlist.mabYn eq 'Y'}">
							<h3>
								${manlist.mabNm}<span class="plus">+</span>
							</h3>
							<ul>
								<c:forEach items="${sub_boardlist}" var="sublist">
									<c:if test="${manlist.mabId eq sublist.mabId and sublist.subYn eq 'Y'}">
										<li><a href="#" onclick="go_boardList(${sublist.subId})">${sublist.subNm}</a></li>
									</c:if>
								</c:forEach>
							</ul>
						</c:if>
					</c:forEach>
				</li>
			</ul>
			<!-- mypage 메뉴 -->
			<ul id="menu_mypage" style="display:none">
				<li>
					<h3 onclick="menuUrl('update', urlForm)" style="cursor:pointer;">회원정보</h3>
				</li>
				<li>
					<h3 onclick="menuUrl('user/manmes', urlForm)" style="cursor:pointer;">메시지함</h3>
				</li>
			</ul>			
			<!-- setting 메뉴 -->
			<ul id="menu_setting" style="display:none">
				<li class="active">
					<h3 onclick="menuUrl('manboard/manageBoard', urlForm)" style="cursor:pointer;">관리자게시판</h3>
				</li>
				<li>
					<h3 onclick="menuUrl('manuser', urlForm)" style="cursor:pointer;">회원관리</h3>
				</li>
<!-- 				<li>
					<h3>
						접속통계<span class="plus">+</span>
					</h3>
					<ul>
						<li><a href="#">일일</a></li>
						<li><a href="#">주간</a></li>
						<li><a href="#">월간</a></li>
					</ul>
				</li> -->
				<li>
					<h3 onclick="menuUrl('manad', urlForm)" style="cursor:pointer;">
						광고관리
					</h3>
				</li>				
			</ul>
		</div>
		<div class="ad">
			<c:forEach items="${ads_img}" var="ad">
				<h3>
					<a href="${ad.adsUrl}" target="_blank">
						<img src="<c:url value="/upload/${ad.adsFile}"/>" style="width:200px;height:100px;">
					</a>
				</h3>
			</c:forEach>
		</div>
	</nav>
<!-- </div>	 -->