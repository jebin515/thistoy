var addr = document.getElementById("addr");
var new_addr = document.getElementById("new_addr");
var addr_new_main = document.getElementById("addr_new_main");
var addr_main = document.getElementById("addr_main");
var chk = document.getElementsByName("addr_list");
var addrType = "";

function none() {
  if (addr.checked == true) {
    addr_new_main.style.display = "none";
    addr_main.style.display = "block";
    new_addr.checked = false;
    addr.checked = true;
  } else {
    addr_main.style.display = "none";
    addr_new_main.style.display = "block";
    new_addr.checked = true;
    addr.checked = false;
  }
}
