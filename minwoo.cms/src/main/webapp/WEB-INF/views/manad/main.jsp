<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@import url("<c:url value="/css/manad/manad.css"/>");</style>
<script src="<c:url value="/js/manad/manAd.js"/>"></script>

<!-- 광고작성자는 null 값입니다. db 오류 입니다 . -->
<!-- 페이지 번호 순서대로 하는것 해야합니다.  -->
<body>
   <section id="post">
      <div class="container">
         <br>
         <!--          <div class="d1"> -->
         <!--             <select> -->
         <!--                <option value="">매체</option> -->
         <!--                <option value="제목">광고 종류</option> -->
         <!--                <option value="날짜">시작일</option> -->
         <!--                <option value="조회수">만료일</option> -->
         <!--                <option value="조회수">금액</option> -->
         <!--                <option value="조회수">관리자</option> -->
         <!--             </select> -->
         <!--             <div class="form"> -->
         <!--                <input type="text" placeholder="검색어 입력"> -->
         <!--                <button type="submit"></button> -->
         <!--             </div> -->
         <!--          </div> -->


         <h3>Cms.광고관리</h3>
         <div class="btn-group-center">
            <button type="button" class="btn btn-primary btn-md" id="addBtn">
               <i class="glyphicon glyphicon-ok"></i> 등록
            </button>
            <button type="button" class="btn btn-warning btn-md" id="updateBtn">
               <i class="glyphicon glyphicon-refresh"></i> 수정
            </button>
            <button type="button" class="btn btn-danger btn-md" id="delBtnAd">
               <i class="glyphicon glyphicon-trash"></i> 삭제
            </button>
             <button type="button" class="btn btn-success btn-md" onclick="adList();">
               <i class="glyphicon glyphicon-list-alt"></i> 취소
            </button>
         </div>
         <br>

         <table class="table table-hover">
            <thead>
               <tr>
                  <th>선택</th>
                  <th>이름</th>
                  <th>관리자</th>
                  <th>금액</th>
                  <th>시작일</th>
                  
                  <th>종료일</th>
                  <th>작성자</th>
                  <th>Url</th>
                  <th>파일</th>
               </tr>
            </thead>
            <form id="adFormAdd" >
               <input type="text" name="adsId_tmp" style="display:none;">
               <tr class="inTr">
                  <td><input type="text"   class="inEmp" readonly></td>
                  <td><input type="text"   class="inTxt" name="adsCompany"></td>
                  <td><input type="text"   class="inTxt" name="adsMan"></td>
                  <td><input type="number" class="inTxt" name="adsMoney"></td>
                  <td><input type="text"   class="inTxt" name="adsStartDate" maxlength="10"></td>
                  <td><input type="text"   class="inTxt" name="adsEndDate" maxlength="10"></td>
                  <td><input type="text"   class="inTxt" name="userId" value="${ sessionScope.user.loginId }" readonly></td>
                  <td><input type="text"   class="inTxt" name="adsUrl"></td>
				  <td class="filebox">
						<input class="upload-name" value="파일선택" disabled="disabled" id="viewFile">
						<label for="ex_filename">업로드</label> 
						<input type="file" id="ex_filename" name="adsFile" class="upload-hidden">
				  </td>
				</tr>
            </form>
            <tbody id="adList">
            </tbody>
         </table>
         <br>
         <br>
         <!--          
         <div class="text-center">
            <ul class="pagination">
               <li class="disabled"><a href="#"><span
                     class="glyphicon glyphicon-chevron-left"></span></a></li>
               <li class="active"><a href="#">1</a></li>
               <li><a href="#"><span
                     class="glyphicon glyphicon-chevron-right"></span></a></li>
            </ul>
         </div> -->
      </div>
   </section>

<%@ include file="../common/footer.jsp"%>