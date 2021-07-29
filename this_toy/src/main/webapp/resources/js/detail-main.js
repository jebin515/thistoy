/**
 * 
 */
let file = $('#input-file');
file.on('change', function() {
	let rv = $('#input-file').val();
	$('.file-button').text(rv);
});
$(document).ready(function() {
	let page_url = window.location.href;
	let page_id = page_url.substring(page_url.lastIndexOf("p"),page_url.lastIndexOf("="));
	if(page_id=='p'){
	$('html, body').animate({ 
	scrollTop: $('.write_review').offset().top }, 500);

	}
});
$(document).ready(function() {
	let page_url = window.location.href;
	let page_id = page_url.substring(page_url.lastIndexOf("r"));
	if(page_id=='reply'){
	$('html, body').animate({ 
	scrollTop: $('.write_QnA').offset().top }, 500);

	}
});

