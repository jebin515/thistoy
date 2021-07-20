let list = document.querySelectorAll('.item');
let cate = document.querySelector('.cate');
let inner_width = document.querySelector('.inner_width');
for (let i = 0; i < list.length; i++) {
    list[i].addEventListener('click', function () {
        if (i == 0) {
            inner_width.innerHTML = '';
            cate.innerHTML = '찜목록';
            inner_width.innerHTML = '없음';
        } else if (i == 1) {
            cate.innerHTML = '등록한 판매글';
            inner_width.innerHTML = '';
            for (let j = 0; j < 3; j++) {
                inner_width.innerHTML +=
                    '<img src="image/mini.PNG" alt="">';
            }
        } else if (i == 2) {
            inner_width.innerHTML = '';
            cate.innerHTML = '장바구니';
            inner_width.innerHTML = '없음';
        }
    })
}
