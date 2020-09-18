$(document).ready(function() {
	var showChar = 250;
	var ellipsestext = "...";
    
	$('.post-descricao').each(function() {
		var content = $(this).html();

		if (content.length > showChar) {
            var c = content.substr(0, showChar);
            var html = c + ellipsestext;

			$(this).html(html);
		}
	});
});