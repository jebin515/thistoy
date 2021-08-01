/**
 * 
 */
 let product_num = document.querySelector('.product_num');
let total = document.querySelector('.total');
let price = Number(document.querySelector('.price').innerText);
let stock = Number(document.querySelector('.stock').innerText);
console.log(stock);
function minus() {
    if (product_num.value == 1) {
        return;
    }
    product_num.value -= 1;
    total.innerHTML = product_num.value * price + '원';
}
function plus() {
    if (product_num.value >= stock) {
        return;
    }
    product_num.value = Number(product_num.value) + 1;
    total.innerHTML = product_num.value * price + '원';
}
function inputnumber() {
    total.innerHTML = Number(product_num.value) * price + '원';
}
total.innerHTML = price + '원';
// 스크롤 내리면 상단바 내려옴

$(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    if (scroll >= 500) {
        $(".followbar").addClass("show");
    } else {
        $(".followbar").removeClass("show");
    }
});
// 클릭하면 그 화면으로 스크롤
$(document).ready(function () {
    $(".tab1").click(function () {
        var offset = $(".plan-title").offset();
        $("html,body").animate({ scrollTop: offset.top - 115 }, 500);
    });
});
$(document).ready(function () {
    $(".tab2").click(function () {
        var offset = $(".review").offset();
        $("html,body").animate({ scrollTop: offset.top - 115 }, 500);
    });
});
$(document).ready(function () {
    $(".tab3").click(function () {
        var offset = $(".QnA").offset();
        $("html,body").animate({ scrollTop: offset.top - 115 }, 500);
    });
});
$(document).ready(function () {
    $(".tab4").click(function () {
        var offset = $(".another").offset();
        $("html,body").animate({ scrollTop: offset.top - 115 }, 500);
    });
});

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
$(document).ready(function() {
	let page_url = window.location.href;
	let page_id = page_url.substring(page_url.lastIndexOf("r"));
	if(page_id=='review'){
	$('html, body').animate({ 
	scrollTop: $('.write_review').offset().top }, 500);

	}
});


