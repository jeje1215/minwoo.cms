//top,left 메뉴 존재하는 페이지 이동시 사용하는 url 이동
function goviewUrl(url, frm, idx) {
	$('input[name=usbId]').val(idx);
	frm.action = "/cms/"+url;
	frm.submit();
}
