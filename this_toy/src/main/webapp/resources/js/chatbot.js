var chat = document.querySelector('.chat');
//챗봇열기
function openchat() {
    chat.style.display = "block";
}
// 챗봇닫기
function closechat() {
    chat.style.display = "none";
}
function createtext() {
    let question2 = document.createElement('div');
    question2.className += 'question';
    document.getElementsByClassName("chat_main")[0].append(question2);
    question2.innerHTML = '<button type="button" class="ask"  onclick="answer1();">반품/교환/환불</button>' + '<br>' +
        '<button type="button" class="ask" onclick="answer2();">결제 안내</button>' + '<br>' +
        '<button type="button" class="ask" onclick="answer3();">재입고 안내</button>';
}
function answer1() {
    let question = document.createElement('div');
    question.className += 'question';
    document.getElementsByClassName("chat_main")[0].append(question);
    question.innerHTML = '<span type="text" class="ask_text" >' + '반품 / 교환 / 환불' + '</span>';
    let answer = document.createElement('div');
    answer.className += 'chat_info';
    document.getElementsByClassName("chat_main")[0].append(answer);
    answer.innerHTML = '<div class="chat_profile"><i class="bx bx-game"></i></div>' +
        '<div class="dito">' +
        '<span class="dito_name">디토</span>' +
        '<div class="dito_text">반품/교환/환불은 마이페이지에 주문목록에서 할 수 있으며 소비자가 사용하였거나 물건을 훼손한 경우 반품과 환불은 불가능하며 이외에는 통상7일 이내에 할 수 있습니다.</div>' +
        '</div>';
    createtext();
}
function answer2() {
    let question = document.createElement('div');
    question.className += 'question';
    document.getElementsByClassName("chat_main")[0].append(question);
    question.innerHTML = '<span type="text" class="ask_text" >' + '결제 안내' + '</span>';
    let answer = document.createElement('div');
    answer.className += 'chat_info';
    document.getElementsByClassName("chat_main")[0].append(answer);
    answer.innerHTML = '<div class="chat_profile"><i class="bx bx-game"></i></div>' +
        '<div class="dito">' +
        '<span class="dito_name">디토</span>' +
        '<div class="dito_text">결제는 계좌이체.</div>' +
        '</div>';
    createtext();
}
function answer3() {
    let question = document.createElement('div');
    question.className += 'question';
    document.getElementsByClassName("chat_main")[0].append(question);
    question.innerHTML = '<span type="text" class="ask_text" >' + '재입고 안내' + '</span>';
    let answer = document.createElement('div');
    answer.className += 'chat_info';
    document.getElementsByClassName("chat_main")[0].append(answer);
    answer.innerHTML = '<div class="chat_profile"><i class="bx bx-game"></i></div>' +
        '<div class="dito">' +
        '<span class="dito_name">디토</span>' +
        '<div class="dito_text">재입고를 희망하시는분은 원하시는 물품의 판매글에 문의해주시길 바랍니다.</div>' +
        '</div>';
    createtext();
}