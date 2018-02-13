$(function() {
	$("#accordian h3").click(function() {
		$("#accordian ul ul").slideUp();
		if (!$(this).next().is(":visible")) {
			$(this).next().slideDown();
		}
	})
});

$(document).ready(function() {

	$("#ulevel").on("change", function() {
		console.log($(this).val());
	});
});

$(document).ready(function() {

	$("#getCheckedAll").click(function() {
		$("input[name=lbox]:checked").each(function() {
			var test = $(this).val();
			console.log(test);
		});
	});
});