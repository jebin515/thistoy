var addr = document.getElementById("addr");
var new_addr = document.getElementById("new_addr");
var addr_new_main = document.getElementById("addr_new_main");
var addr_main = document.getElementById("addr_main");
var chk = document.getElementsByName("addr_list");
var addrType = "";
// function none(number) {
//     if(number == "0"){
//         addr_new_main.style.display = "none";
//         addr_main.style.display = "block"
//     } else {
//         addr_main.style.display = "none"
//         addr_new_main.style.display = "block"
//     }
// }
function none() {
    if(addr.checked == true){
        addr_new_main.style.display = "none";
        addr_main.style.display = "block"
    } else {
        addr_main.style.display = "none";
        addr_new_main.style.display = "block"
    }
}
addr.addEventListener('click',function submit(){
    var nameValue = 
    addrType == addr ? document.querySelector(".name").value : document.querySelector(".new_name").value
    console.log(nameValue);

});