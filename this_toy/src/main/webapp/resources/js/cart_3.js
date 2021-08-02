let basket = {
  totalCount: 0,
  totalPrice: 0,
  //체크한 장바구니 상품 비우기
//  delCheckedItem: function () {
//    document
//      .querySelectorAll("input[name=buy]:checked")
//      .forEach(function (item) {
//        item.parentElement.parentElement.remove();
//      });
//    //AJAX 서버 업데이트 전송
//
//    //전송 처리 결과가 성공이면
//    this.reCalc();
//    this.updateUI();
//  },
  //장바구니 전체 비우기
  delAllItem: function () {
    document.querySelectorAll(".row.data").forEach(function (item) {
      item.remove();
    });

	
    //AJAX 서버 업데이트 전송

    //전송 처리 결과가 성공이면
    this.totalCount = 0;
    this.totalPrice = 0;
    this.reCalc();
  },

  //재계산
  reCalc: function () {
    this.totalCount = 0;
    this.totalPrice = 3000; //배송비
    document.querySelectorAll(".p_num").forEach(function (item) {
      console.log(item);
        console.log(item);
        var count = parseInt(item.getAttribute("value"));
        this.totalCount += count;
        var price =
          item.parentElement.parentElement.parentElement.previousElementSibling
            .firstElementChild.firstElementChild.value;
        // console.log(value);
        this.totalPrice += +count * price;
    }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
    console.log(this.totalCount);
  },
  //화면 업데이트
  updateUI: function () {
    document.querySelector("#sum_p_num").textContent =
      "총 " + this.totalCount.formatNumber() + "개의 상품 금액";
    document.querySelector("#sum_p_price").textContent =
      "합계 : " + this.totalPrice.formatNumber() + "원";
  },
  //개별 수량 변경
  changePNum: function (pos) {
    var item = document.querySelector("input[id=p_num" + pos + "]");
    var p_num = parseInt(item.getAttribute("value"));
    var newval = event.target.classList.contains("up")
      ? p_num + 1
      : event.target.classList.contains("down")
      ? p_num - 1
      : event.target.value;
    console.log(newval);

    if (parseInt(newval) < 1 || parseInt(newval) > 99) {
      return false;
    }

    item.setAttribute("value", newval);
    item.value = newval;
    var price =
      item.parentElement.parentElement.parentElement.previousElementSibling
        .firstElementChild.firstElementChild.value;
    console.log(price);
    item.parentElement.parentElement.parentElement.nextElementSibling.textContent =
      (newval * price).formatNumber() + "원";
    //AJAX 업데이트 전송

    //전송 처리 결과가 성공이면
    this.reCalc();
    this.updateUI();
  },
  // 선택상품
  checkItem: function () {
    this.reCalc();
    this.updateUI();
    this.checkItem.value;
  },
  //상품삭제
  delItem: function () {
    event.target.parentElement.parentElement.parentElement.remove();
    this.reCalc();
    this.updateUI();
  },
};

// 숫자 3자리 콤마찍기
Number.prototype.formatNumber = function () {
  if (this == 0) return 0;
  let regex = /(^[+-]?\d+)(\d{3})/;
  let nstr = this + "";
  while (regex.test(nstr)) nstr = nstr.replace(regex, "$1" + "," + "$2");
  return nstr;
};

let p_price = document.querySelectorAll('.bp');
let p_num = document.querySelectorAll('.p_num');
console.log(p_price[0].innerHTML);
let totalPrice=0;
if(p_price.length>0){
function pay() {
for(let i = 0; i<p_price.length; i++){
	let price = Number(p_price[i].value)*Number(p_num[i].value);
	console.log(price);
	totalPrice+=price;
}
totalPrice += 3000;
console.log(totalPrice);
	document.querySelector('#sum_p_price').innerHTML = "합계 : " + totalPrice + "원";
}
pay();
}