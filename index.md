---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

{%- include home-slide.html -%}

{%- include featured-links.html -%}

<!-- 후기 -->
<h3 style="text-align:center"><strong>비타민한의원</strong>의 생생한 치료후기</h3>
<div id="featured-reviews" class="featured-articles">
  <img src="/assets/icon-loading.svg" alt="로딩중" width="40" height="40" style="display:block; margin:50px auto">
</div>
<script>
app.content.getByField({
  schemaKey: 'featured',
  field: 'display',
  value: 'review'
}).then(function (data) {
  // 순서 조정
  var unorderedData = [];
  var orderedData = [];
  Object.keys(data).forEach(function (key) {
    unorderedData.push(data[key]);
  });
  orderedData = unorderedData.sort(function (a, b) {
    return a.ordering - b.ordering;
  });
  // 데이터 삽입
  $('#featured-reviews').empty();
  orderedData.forEach(function (article) {
    var thumbnailId = (article.thumbnail && article.thumbnail[0] ? article.thumbnail[0].id : '');
    var title = article.title;
    var desc = article.desc;
    var url = (article.article ? '/articles?id=' + article.article.id : '/about/reviews');
    var markupSrc = [
      '<dl onclick="location.href = \'' + url + '\'">',
      '<dt><img id="' + thumbnailId + '" src="https://via.placeholder.com/300x180?text=..." alt=""></dt>',
      '<dd>',
        '<strong>' + title + '</strong>',
        '<p>' + desc + '</p>',
      '</dd>',
      '</dl>'
    ];
    $('#featured-reviews').append(markupSrc.join(''));
  });
  // 이미지 삽입
  orderedData.forEach(function (article) {
    var thumbnailId = (article.thumbnail && article.thumbnail[0] ? article.thumbnail[0].id : '');
    app.storage.getURL({
      fileId: thumbnailId
    }).then(function (url) {
      $('#' + thumbnailId).attr('src', url);
    });
  });
});
</script>

{%- include self-disease-check.html -%}

<!-- 의학정보 -->
<!--
<div id="featured-studies" class="featured-articles">
  <img src="/assets/icon-loading.svg" alt="로딩중" width="40" height="40" style="display:block; margin:50px auto">
</div>
<script>
app.content.getByField({
  schemaKey: 'featured',
  field: 'display',
  value: 'study'
}).then(function (data) {
  // 순서 조정
  var unorderedData = [];
  var orderedData = [];
  Object.keys(data).forEach(function (key) {
    unorderedData.push(data[key]);
  });
  orderedData = unorderedData.sort(function (a, b) {
    return a.ordering - b.ordering;
  });
  // 데이터 삽입
  $('#featured-studies').empty();
  orderedData.forEach(function (article) {
    var thumbnailId = (article.thumbnail && article.thumbnail[0] ? article.thumbnail[0].id : '');
    var title = article.title;
    var desc = article.desc;
    var url = (article.article ? '/articles?id=' + article.article.id : '/about/study');
    var markupSrc = [
      '<dl onclick="location.href = \'' + url + '\'">',
      '<dt><img id="' + thumbnailId + '" src="https://via.placeholder.com/300x180?text=..." alt=""></dt>',
      '<dd>',
        '<strong>' + title + '</strong>',
        '<p>' + desc + '</p>',
      '</dd>',
      '</dl>'
    ];
    $('#featured-studies').append(markupSrc.join(''));
  });
  // 이미지 삽입
  orderedData.forEach(function (article) {
    var thumbnailId = (article.thumbnail && article.thumbnail[0] ? article.thumbnail[0].id : '');
    app.storage.getURL({
      fileId: thumbnailId
    }).then(function (url) {
      $('#' + thumbnailId).attr('src', url);
    });
  });
});
</script>
-->

{%- include home-banners.html -%}

{%- include callme.html -%}
