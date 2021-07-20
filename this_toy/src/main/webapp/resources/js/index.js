let product_num = document.querySelector('.product_num');
let total = document.querySelector('.total');
let price = Number(document.querySelector('.price').innerText);
function minus() {
    if (product_num.value == 1) {
        return;
    }
    product_num.value -= 1;
    total.innerHTML = product_num.value * price + '원';
}
function plus() {
    if (product_num.value >= 99) {
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