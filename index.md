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
  width:100%;
}
.swiper-slide {
  position:relative;
  background:#fff;
  font-size:18px;
  text-align:center;
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
  font-size:12px;
  letter-spacing:-1px;
}
.slide-message h2 strong {
  display:block;
  font-size:40px;
  font-weight:300;
  letter-spacing:-1.5px;
  color:#f4512c;
  text-align:center;
}
.slide-message p {
  font-size:12px;
  letter-spacing:-1px;
}
</style>
<div class="swiper-container">
  <div class="swiper-wrapper">
    <div class="swiper-slide" onclick="location.href = '/irritable-bowel-syndrome/gas'">
      <img src="/assets/img-slide1.jpg" alt="">
      <div class="slide-message">
        <h2>비타민한의원의 특별한 <strong>위·대장클리닉</strong></h2>
        <p>한의학, 기능의 학적 접근을 통해   근본적인 원인을 해결합니다</p>
      </div>
    </div>
    <div class="swiper-slide" onclick="location.href = '/adolescence/physical'">
      <img src="/assets/img-slide2.jpg" alt="">
      <div class="slide-message">
        <h2>철저한 관리 <strong>수험생 클리닉</strong></h2>
        <p>건강이 곧 성적입니다.</p>
      </div>
    </div>
    <div class="swiper-slide" onclick="location.href = '/about/boards/notice'">
      <img src="/assets/img-slide3.jpg" alt="">
      <div class="slide-message">
        <h2>비파민한의원은 지금 <strong>리뉴얼 오픈 이벤트!</strong></h2>
        <p></p>
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
  <a href="/irritable-bowel-syndrome/gas">
    <img src="/assets/icon-featured-1.svg" alt="">
    <span>과민성<br>대장증후군</span>
  </a>
</li>
<li>
  <a href="/adolescence/physical">
    <img src="/assets/icon-featured-2.svg" alt="">
    <span>청소년 클리닉</span>
  </a>
</li>
<li>
  <a href="/digestive-organ/gastritis">
    <img src="/assets/icon-featured-3.svg" alt="">
    <span>소화기 클리닉</span>
  </a>
</li>
<li>
  <a href="/examinations/organic-acid">
    <img src="/assets/icon-featured-4.svg" alt="">
    <span>검사안내</span>
  </a>
</li>
<li>
  <a href="/about/services">
    <img src="/assets/icon-featured-5.svg" alt="">
    <span>진료안내</span>
  </a>
</li>
</ul>

<!-- 후기 -->
<h3 style="text-align:center"><strong>비타민한의원</strong>의 생생한 치료후기</h3>
<div id="featured-reviews" class="featured-articles">
  <img src="/assets/icon-loading.svg" alt="로딩중" width="40" height="40" style="display:block; margin:50px auto">
</div>
<script>
app.content.getByField({
  schemaKey: 'featured',
  field: 'display',
  value: 'review',
  orderByChild: 'created',
  populate: true
}).then(function (data) {
  $('#featured-reviews').empty();
  Object.keys(data).forEach(function (key) {
    var article = data[key];
    var thumbnail = (article.thumbnail[0] ? article.thumbnail[0].url : 'https://via.placeholder.com/300x180');
    var title = article.title;
    var desc = article.desc;
    var url = (article.article ? '/articles?id=' + article.article.id : '/about/reviews');
    var markupSrc = [
      '<dl onclick="location.href = \'' + url + '\'">',
      '<dt><img src="' + thumbnail + '" alt=""></dt>',
      '<dd>',
        '<strong>' + title + '</strong>',
        '<p>' + desc + '</p>',
      '</dd>',
      '</dl>'
    ];
    $('#featured-reviews').append(markupSrc.join(''));
  });
});
</script>

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
  <button type="button" onclick="alert('기능이 곧 공개됩니다')">나의질환 알아보기</button>
</div>

<!-- 의학정보 -->
<div id="featured-studies" class="featured-articles">
  <img src="/assets/icon-loading.svg" alt="로딩중" width="40" height="40" style="display:block; margin:50px auto">
</div>
<script>
app.content.getByField({
  schemaKey: 'featured',
  field: 'display',
  value: 'study',
  orderByChild: 'created',
  populate: true
}).then(function (data) {
  $('#featured-studies').empty();
  Object.keys(data).forEach(function (key) {
    var article = data[key];
    var thumbnail = (article.thumbnail[0] ? article.thumbnail[0].url : 'https://via.placeholder.com/300x180');
    var title = article.title;
    var desc = article.desc;
    var url = (article.article ? '/articles?id=' + article.article.id : '/about/study');
    var markupSrc = [
      '<dl onclick="location.href = \'' + url + '\'">',
      '<dt><img src="' + thumbnail + '" alt=""></dt>',
      '<dd>',
        '<strong>' + title + '</strong>',
        '<p>' + desc + '</p>',
      '</dd>',
      '</dl>'
    ];
    $('#featured-studies').append(markupSrc.join(''));
  });
});
</script>

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
<div id="banners" class="home-banners">
  <img src="/assets/icon-loading.svg" alt="로딩중" width="40" height="40" style="display:block; margin:50px auto">
</div>
<script>
app.content.get({
  schemaKey: 'banners',
  orderByChild: 'created',
  populate: true
}).then(function (data) {
  $('#banners').empty();
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
