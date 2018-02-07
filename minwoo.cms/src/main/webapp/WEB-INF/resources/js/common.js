function goUrl(url, frm) {
	$('#mvUrl').val(url);
	frm.action = "/cms/url";
	frm.submit();
}

