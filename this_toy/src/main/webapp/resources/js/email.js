const inputs = document.querySelector('#form')
function sendEmail(){
Email.send({
    SecureToken :"e934022e-9a7f-42a2-91af-4a39a9ed0261",
    To : document.getElementById('email').value,
    From : "display3634@gmail.com",
    Subject : "인증번호",
    Body : "번호번호"
}).then(function(responce){
    if (responce == 'OK'){
        alert("성공적으로 메일을 보냈습니다");
    } else {
        throw new Error("에러 : " + responce.statusText);
    }
})(
  
);
} 
