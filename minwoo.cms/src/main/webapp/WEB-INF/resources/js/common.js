
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

var pathname = location.pathname;
var name = pathname.split('/');
var namePage;

$(function() {
	$("ul[id^=menu_]").hide();
    for ( var i in name ) {
    	namePage = namePage+name[i];
      }	
    namePage = namePage.split(',');
	if (namePage[2] == 'manboard' || namePage[2] == 'manad' || namePage[2] == 'manuser'){
		$("ul[id=menu_setting]").show();
	}else if(namePage[2] == 'main' || namePage[2] == 'url'){
		$("ul[id=menu_home]").show();
	}
	//$.activeMenu("header", name[1]);
})

/*$.activeMenu = function(type, id) {
	$("#" + type + "> li").each(function() {
		$(this).removeClass("active")
	})
	$("#" + id).addClass("active")

	$("#" + $("#" + id).attr("data-val")).addClass("active");
}*/
