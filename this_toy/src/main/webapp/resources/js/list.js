let down = document.querySelectorAll('.fa-sort-down');
let up = document.querySelectorAll('.fa-sort-up');
let drop = document.querySelectorAll('.drop');
let bn = document.querySelectorAll('.nodrop');
let downcode = document.querySelector('.dcc').innerText;
for (let i = 0; i < down.length; i++) {
	down[i].addEventListener('click', function() {
		document.querySelectorAll('.dropbox')[i].style.display = "block";
		this.style.display = "none";
		up[i].style.display = "block";
	})
}
for (let i = 0; i < up.length; i++) {
	up[i].addEventListener('click', function() {
		document.querySelectorAll('.dropbox')[i].style.display = "none";
		this.style.display = "none";
		down[i].style.display = "block";
	})
}
function category() {
	for (let i = 0; i < drop.length; i++) {
		if (downcode == drop[i].value) {
			let parent1 = drop[i].parentElement;
			drop[i].parentElement.style.display = "block";
			drop[i].style.background = 'rgb(162, 109, 236)';
			drop[i].parentElement.previousElementSibling.children[0].style.display = "none";
			drop[i].parentElement.previousElementSibling.children[1].style.display = "block";
		}
	}
}
category();
for (let i = 0; i < drop.length; i++) {
	drop[i].addEventListener('click', function() {
		let dcn = drop[i].value;
		location.href = "/product/list?dcc=" + dcn;
	})
}

for (let i = bn.length - 2; i < bn.length; i++) {
	if (bn[i].value == document.querySelector('.title').innerText) {
		bn[i].style.background = 'rgb(162, 109, 236)';
	}
	bn[i].style.cursor = "pointer";
	bn[i].addEventListener('click', function() {
		let bnv = bn[i].value;
		location.href = "/product/list?bn=" + bnv;
	})
}

let rating = document.querySelectorAll(".rating2");
let ratingNum = document.querySelectorAll(".ratingNum");
for (let i = 0; i < ratingNum.length; i++) {
	if (ratingNum[i].innerText === ("리뷰없음")) {
		let num = 0;
		rating[i].style.clip = "rect(0px," + 18 * num + "px,18px,0px)";
	} else {
		let num = Number(ratingNum[i].innerText);
		rating[i].style.clip = "rect(0px," + 18 * num + "px,18px,0px)";
	}
}