var swiper = new Swiper(".mySwiper", {
    slidesPerView: 5,
    spaceBetween: 50,
    width : 1900,
    loop : true,
    centeredSlides: true,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    autoplay : {
        delay: 3500,
        disableOnInteraction : true,
    }
  });
  var swiper = new Swiper(".mySwiper-main", {
    slidesPerView: 1,
    spaceBetween: 30,
    loop : true,
    centeredSlides: true,
    pagination: {
      el: ".swiper-pagination-main",
      clickable: true,
    },
    autoplay : {
        delay: 3500,
        disableOnInteraction : true,
    }
  });
