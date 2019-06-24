---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---

<!-- Swiper JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>

<style>
.swiper-container {
  width: 100%;
  height: 100%;
  margin-left: auto;
  margin-right: auto;
}
.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: #fff;
  /* Center slide text vertically */
  display: -webkit-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  -webkit-justify-content: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  -webkit-align-items: center;
  align-items: center;
}
.swiper-slide:before {
  content:"";
  display:block;
  position:absolute;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background-color:rgba(0,0,0,0.25);
}
.slide-message {
  position:absolute;
  top:50%;
  left:0;
  width:100%;
  color:#fff;
  margin:-40px 0 0;
}
.slide-message h2 {
  font-size:10px;
  letter-spacing:-1px;
}
.slide-message h2 strong {
  display:block;
  font-size:40px;
  font-weight:100;
  letter-spacing:-1.5px;
  color:#f4512c;
  text-align:center;
}
.slide-message p {
  font-size:10px;
  letter-spacing:-1px;
}
</style>
<div class="swiper-container">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <img src="https://images.unsplash.com/photo-1486049252259-45184399c5b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="">
      <div class="slide-message">
        <h2>비타민한의원의 특별한 <strong>위·대장클리닉</strong></h2>
        <p>한의학, 기능의 학적 접근을 통해   근본적인 원인을 해결합니다</p>
      </div>
    </div>
    <div class="swiper-slide">
      <img src="https://images.unsplash.com/photo-1445527815219-ecbfec67492e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="">
      <div class="slide-message">
        <h2>비타민한의원의 특별한 <strong>위·대장클리닉</strong></h2>
        <p>한의학, 기능의 학적 접근을 통해   근본적인 원인을 해결합니다</p>
      </div>
    </div>
    <div class="swiper-slide">
      <img src="https://images.unsplash.com/photo-1557825835-70d97c4aa567?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80" alt="">
      <div class="slide-message">
        <h2>비타민한의원의 특별한 <strong>위·대장클리닉</strong></h2>
        <p>한의학, 기능의 학적 접근을 통해   근본적인 원인을 해결합니다</p>
      </div>
    </div>
  </div>
  <!-- Add Pagination -->
  <!-- <div class="swiper-pagination"></div> -->
  <!-- Add Arrows -->
  <!-- <div class="swiper-button-next"></div> -->
  <!-- <div class="swiper-button-prev"></div> -->
</div>
<script>
var swiper = new Swiper('.swiper-container', {
  loop: true,
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});
</script>

<!-- 퀵링크 -->
<ul class="featured-links">
<li>
  <a href="#">
    <img src="/assets/icon-featured-1.svg" alt="">
    <span>과민성<br>대장증후군</span>
  </a>
</li>
<li>
  <a href="#">
    <img src="/assets/icon-featured-2.svg" alt="">
    <span>청소년 클리닉</span>
  </a>
</li>
<li>
  <a href="#">
    <img src="/assets/icon-featured-3.svg" alt="">
    <span>소화기 클리닉</span>
  </a>
</li>
<li>
  <a href="#">
    <img src="/assets/icon-featured-4.svg" alt="">
    <span>검사안내</span>
  </a>
</li>
<li>
  <a href="#">
    <img src="/assets/icon-featured-5.svg" alt="">
    <span>진료안내</span>
  </a>
</li>
</ul>

<!-- 후기 -->
<h3 style="text-align:center"><strong>비타민한의원</strong>의 생생한 치료후기</h3>
<div class="featured-review">
  <dl>
  <dt><img src="https://via.placeholder.com/300x180" alt=""></dt>
  <dd>
    <strong>담적증! 증상 치료 한달차</strong>
    <p>실제 내원한 환자분들께 앞으로 치료 계획을 설명하는 영상입니다. 식단, 생활관리, 약 등등 전반적인 모든 것을 알 수 있습니다. 검 ...</p>
  </dd>
  </dl>
  <dl>
  <dt><img src="https://via.placeholder.com/300x180" alt=""></dt>
  <dd>
    <strong>담적증! 증상 치료 한달차</strong>
    <p>실제 내원한 환자분들께 앞으로 치료 계획을 설명하는 영상입니다. 식단, 생활관리, 약 등등 전반적인 모든 것을 알 수 있습니다. 검 ...</p>
  </dd>
  </dl>
  <dl>
  <dt><img src="https://via.placeholder.com/300x180" alt=""></dt>
  <dd>
    <strong>담적증! 증상 치료 한달차</strong>
    <p>실제 내원한 환자분들께 앞으로 치료 계획을 설명하는 영상입니다. 식단, 생활관리, 약 등등 전반적인 모든 것을 알 수 있습니다. 검 ...</p>
  </dd>
  </dl>
</div>

<!-- 질환 찾기 -->
<style>
.detect-mine {
  position:relative;
  height:85px;
  padding:15px 25px;
  background-image:linear-gradient(76deg, #f4512c, #f4512c 50%, #ffb800);
}
.detect-mine h3 {
  font-size:22px;
  font-weight:300;
  line-height:120%;
  letter-spacing:-2.2px;
  color:#fff;
  text-align:left;
}
.detect-mine button {
  position:absolute;
  right:25px;
  bottom:15px;
  height:30px;
  padding:0 10px;
  border-radius:15px;
  border:none;
  background-color:#fff;
  color:#f4512c;
}
</style>
<div class="detect-mine">
  <h3>난<br>어떤 질환일까?</h3>
  <button>나의질환 알아보기</button>
</div>

<div class="featured-review">
  <dl>
  <dt><img src="https://via.placeholder.com/300x180" alt=""></dt>
  <dd>
    <strong>담적증! 증상 치료 한달차</strong>
  </dd>
  </dl>
  <dl>
  <dt><img src="https://via.placeholder.com/300x180" alt=""></dt>
  <dd>
    <strong>담적증! 증상 치료 한달차</strong>
  </dd>
  </dl>
  <dl>
  <dt><img src="https://via.placeholder.com/300x180" alt=""></dt>
  <dd>
    <strong>담적증! 증상 치료 한달차</strong>
  </dd>
  </dl>
</div>

<!-- 배너 -->
<style>
.home-banners {
  margin:25px;
}
.home-banners a {
  display:block;
  margin-top:8px;
}
.home-banners a:first-child {
  margin-top:0;
}
.home-banners img {
  display:block;
  width:100%;
}
</style>
<h3 style="text-align:center"><strong>비타민한의원</strong>의 다양한 소식들</h3>
<div id="banners" class="home-banners"></div>
<script>
app.content.get({
  schemaKey: 'banners',
  orderByChild: 'updated',
  populate: true
}).then(function (data) {
  Object.keys(data).forEach(function (key) {
    var banner = data[key];
    var image = (banner.image[0] ? banner.image[0].url : null);
    var title = banner.title;
    var url = banner.url;
    var markupSrc = [
      '<a href="' + url +'">',
      '<img src="' + image + '" alt="' + title + '">',
      '</a>'
    ];
    $('#banners').append(markupSrc.join(''));
  });
});
</script>

{% include callme.html %}
