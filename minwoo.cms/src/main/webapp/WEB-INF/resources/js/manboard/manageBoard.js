

$(document).ready(function(){ 
	//manboardList();
});

function go_boardGubun(val) {
	if(val.value == 'M'){
		$('#manboard').show();
		$('#subboard').hide();
	}else if(val.value == 'S'){
		$('#manboard').hide();
		$('#subboard').show();
	}else{
		$('#manboard').hide();
		$('#subboard').hide();
	}
}
