<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
   <div class="text-center">
		<c:if test="${manuserlist != null || manuserlist.size() != 0}">
	        <p>
	            <a href="javascript:$.goPage(${paging.firstPageNo})" class="first"><<</a>
	            <a href="javascript:$.goPage(${paging.prevPageNo})" class="glyphicon glyphicon-chevron-left"></a>
	            <span>
	              <c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1">
	                  <c:choose>
	                      <c:when test="${i eq paging.pageNo}"><a href="javascript:goPage(${i}, pagingForm)" class="choice">${i}</a></c:when>
	                      <c:otherwise><a href="javascript:goPage(${i}, pagingForm)"><span class="pageNum">${i}</span></a></c:otherwise>
	                  </c:choose>
	              </c:forEach>
	            </span>
	            <a href="javascript:$.goPage(${paging.nextPageNo})" class="glyphicon glyphicon-chevron-right"></a>
	            <a href="javascript:$.goPage(${paging.finalPageNo})" class="last">>></a>
	        </p>
	    </c:if>  
    </div> 

</body>
</html>