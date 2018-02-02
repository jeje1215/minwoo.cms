<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>@import url("<c:url value="/css/board/list.css"/>");</style>	
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
				<tbody>
					<tr>
						<td>3</td>
						<td onclick="javascript:location.href='./02.html'"
							style="cursor: pointer;">hello쀼삑</td>
						<td onclick="goPop();" style="cursor: pointer;">승창</td>
						<td>2018-01-09</td>
						<td>10</td>
					</tr>
					<tr>
						<td>2</td>
						<td onclick="javascript:location.href='./02.html'"
							style="cursor: pointer;">안녕하세요쀼삑</td>
						<td>유리</td>
						<td>2018-01-09</td>
						<td>151</td>
					</tr>
					<tr>
						<td>1</td>
						<td onclick="javascript:location.href='./02.html'"
							style="cursor: pointer;">안녕하세요</td>
						<td>민우</td>
						<td>2018-01-08</td>
						<td>10</td>
					</tr>
				</tbody>
			</table>


			<div class="form-group">
				<div class="col-sm-12 text-right">
					<button class="btn btn-primary" type="submit"
						onclick="javascript:location.href='./01.html'">
						등록 <i class="fas fa-plus"></i>
					</button>
				</div>

				<br> <br>
				<div class="text-center">
					<ul class="pagination">
						<li class="disabled"><a href="#"><span
								class="glyphicon glyphicon-chevron-left"></span></a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li class="active"><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>
				</div>
			</div>
	</section>