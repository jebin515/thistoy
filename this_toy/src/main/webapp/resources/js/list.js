let down = document.querySelectorAll('.fa-sort-down');
let up = document.querySelectorAll('.fa-sort-up');
let drop = document.querySelectorAll('.drop');
for (let i = 0; i < down.length; i++) {
    down[i].addEventListener('click', function () {
        document.querySelectorAll('.dropbox')[i].style.display = "block";
        this.style.display = "none";
        up[i].style.display = "block";
    })
}
for (let i = 0; i < up.length; i++) {
    up[i].addEventListener('click', function () {
        document.querySelectorAll('.dropbox')[i].style.display = "none";
        this.style.display = "none";
        down[i].style.display = "block";
    })
}
for (let i = 0; i < drop.length; i++) {
    drop[i].addEventListener('click', function () {
        for (let j = 0; j < drop.length; j++) {
            drop[j].style.background = 'rgba(224, 185, 250, 0.781)';
        }
        this.style.background = 'rgb(162, 109, 236)';
    })
}