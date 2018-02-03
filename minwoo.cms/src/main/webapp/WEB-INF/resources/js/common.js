function goUrl(url, frm) {
	$('#mvUrl').val(url);
	frm.action = "/cms/url";
	frm.submit();
}

$(function(){
    $("#popbutton").click(function(){
        $('#myModal_one').modal();
    })
})
