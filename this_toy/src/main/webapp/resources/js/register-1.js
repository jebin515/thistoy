const form = document.querySelector("#form_wrap");
const checkAll = document.querySelector(".check_box_all input");
const checkBoxes = document.querySelectorAll(".input_check input");
const submitButton = document.querySelector(".next-button");

const all = {
  checkbox_1: false,
  checkbox_2: false,
  checkbox_3: false,
};

form.addEventListener("submit", (e) => e.preventDefault());

checkBoxes.forEach((item) => item.addEventListener("input", toggleCheckbox));

function toggleCheckbox(e) {
  const { checked, id } = e.target;
  all[id] = checked;
  this.parentNode.classList.toggle("active");
  checkAllStatus();
  toggleSubmitButton();
}

function checkAllStatus() {
  const {checkbox_1, checkbox_2, checkbox_3} = all;
  if (checkbox_1 && checkbox_2 && checkbox_3) {
    checkAll.checked = true;
  } else {
    checkAll.checked = false;
  }
}

function toggleSubmitButton() {
  const {checkbox_1, checkbox_2} = all;
  if (checkbox_1 && checkbox_2) {
    submitButton.disabled = false;
  } else {
    submitButton.disabled = true;
  }
}

checkAll.addEventListener("click", (e) => {
  const { checked } = e.target;
  if (checked) {
    checkBoxes.forEach((item) => {
      item.checked = true;
      all[item.id] = true;
      item.parentNode.classList.add("active");
    });
  } else {
    checkBoxes.forEach((item) => {
      item.checked = false;
      all[item.id] = false;
      item.parentNode.classList.remove("active");
    });
  }
  toggleSubmitButton();
});

function next(){
  location = "/register-2.html"
}
