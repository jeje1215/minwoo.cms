function goUrl(url, frm) {
	$('#mvUrl').val(url);
	frm.action = "/cms/url";
	frm.submit();
}

function goMenu(url){
	
	goUrl(url, urlForm);
}

