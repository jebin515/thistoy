function findAddr() {
    new daum.Postcode({
        oncomplete: function (data) {
            console.log(data);
            var roadAddr = data.roadAddress; 
            var jibunAddr = data.jibunAddress; 
            document.getElementById('member_post').value = data.zonecode;
            if (roadAddr !== '') {
                document.getElementById("member_addr").value = roadAddr;
            }
            else if (jibunAddr !== '') {
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}