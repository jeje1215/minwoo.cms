<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>@import url("<c:url value="/css/common/modal.css"/>");</style>
   
   <div class="modal fade" id="myModal_one" role="dialog">
      <div class="modal-dialog modal-sm">
         <div class="modal-content" style="background-color: sd;">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body" id="modalBody_one">
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary" data-dismiss="modal" id="modalOk">확인</button>
            </div>
         </div>
      </div>
   </div>

<!-- 공통 -->
<div class="modal fade" id="myModal_two" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">
                  <span aria-hidden="true">×</span><span class="sr-only">Close</span>
               </button>
   
            </div>
            <div class="modal-body" id="modalBody_two"></div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary"  id="modalOk">확인</button>
               <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
            </div>
         </div>
      </div>
   </div>
<!-- 공통 -->

   <div class="modal fade" id="myModal_manboard" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">
                  <span aria-hidden="true">×</span><span class="sr-only">Close</span>
               </button>
   
            </div>
            <div class="modal-body" id="modalBody_manboard"></div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary" data-dismiss="modal"
                  onclick="go_boardDel();">확인</button>
               <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
            </div>
         </div>
      </div>
   </div>
   
   <div class="modal fade" id="myModal_manad" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">
                  <span aria-hidden="true">×</span><span class="sr-only">Close</span>
               </button>
   
            </div>
            <div class="modal-body" id="modalBody_manad"></div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary" data-dismiss="modal"
                  onclick="go_adDel();">확인</button>
               <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
            </div>
         </div>
      </div>
   </div>  
   
   <!-- 로그아웃 -->
    <div class="modal fade" id="myModal_logout" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">
                  <span aria-hidden="true">×</span><span class="sr-only">Close</span>
               </button>
   
            </div>
            <div class="modal-body" id="modalBody_logout"></div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary" data-dismiss="modal"
                  onclick="go_Logout();">확인</button>
               <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
            </div>
         </div>
      </div>
   </div>   
  
   <!-- 회원가입 취소 -->
    <div class="modal fade" id="myModal_cancelJoin" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">
                  <span aria-hidden="true">×</span><span class="sr-only">Close</span>
               </button>
   
            </div>
            <div class="modal-body" id="modalBody_cancelJoin"></div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary" data-dismiss="modal"
                  onclick="go_cancel();">확인</button>
               <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
            </div>
         </div>
      </div>
   </div>        