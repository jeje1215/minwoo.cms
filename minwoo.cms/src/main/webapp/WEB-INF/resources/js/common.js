var pathname = location.pathname;
var name = pathname.split('/');
var namePage;

$(function() {
	$("ul[id^=menu_]").hide();
	$("li[id^=top_]").removeClass("active")
    for ( var i in name ) {
    	namePage = namePage+name[i];
      }	
    namePage = namePage.split(',');
	if (namePage[2] == 'manboard' || namePage[2] == 'manad' || namePage[2] == 'manuser'){
		$("ul[id=menu_setting]").show();
		$("#top_setting").addClass("active");
	}else if(namePage[2] == 'main' || namePage[2] == 'url' || namePage[2] == 'board' || namePage[2] == 'main2' ){
		$("ul[id=menu_home]").show();
		$("#top_home").addClass("active");
	}else if(namePage[2] == 'update' || namePage[2]+"/"+namePage[3] == 'user/manmes'){
		$("ul[id=menu_mypage]").show();
		$("#top_mypage").addClass("active");
	}
})

//메뉴없는 페이지 이동시 사용하는 공통 url이동
function goUrl(url, frm) { 
	$('#mvUrl').val(url);
	frm.action = "/cms/url";
	frm.submit();
}

//top,left 메뉴 존재하는 페이지 이동시 사용하는 url 이동
function menuUrl(url, frm) {
	$('#mvUrl').val(url);
	frm.action = "/cms/"+url;
	frm.submit();
}

//회원게시판 이동
function boardUrl(url, frm, subid) {
	$('#mvUrl').val(url);
	$('#mvSub').val(subid);
	frm.action = "/cms/"+url;
	frm.submit();
}

$(function(){
	$("#accordian h3").click(function(){
		$("#accordian ul ul").slideUp();
		if(!$(this).next().is(":visible")){
			$(this).next().slideDown();
		}
	})
}) 

// 왼쪽메뉴 클릭시 sub_id값 가져오기
function go_boardList(subid){
	boardUrl('main2', urlForm, subid); 
}
