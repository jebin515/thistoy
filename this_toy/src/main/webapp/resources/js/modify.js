/**
 * 
 */
$('.delet').click(function(){
	let ok = confirm('정말 탈퇴하시겠습니까?');
	if(!ok){
		return;
	}
	let form=$('.form-control');
	for(let i=0; i<form.length; i++){
		form[i].remove();
	}
	$('.form').attr("action","/edit/delete");
	$('.form').submit();
})
$('.save').click(function(){
	$('.form').attr("action","/edit/modify");
	$('.form').submit();
})
window.history.forward();
