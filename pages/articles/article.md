---
layout: page
title: 게시글
permalink: /articles
---

<style>
a.btn-login {
  zoom:1;
  display:block;
  width:100px;
  height:40px;
  line-height:40px;
  margin:15px 0;
  padding:0 40px;
  border:2px solid #f4512c;
  background-color:#fff;
  color:#f4512c;
  font-size:14px;
  font-weight:bold;
  letter-spacing:-1.4px;
  text-decoration:none;
  text-align:center;
}
.article {
  margin:25px 25px 50px;
}
.article h2 {
  margin-bottom:10px;
}
.article hr {
  margin:15px 0;
}
.article iframe {
  max-width:100%;
  border:none;
}
</style>

<div id="please-login" class="content-sculptpost" style="display:none">
  <h3>로그인이 필요합니다.</h3>
  <p>
    상세한 열람을 원하시면 의료법상 로그인이 필요합니다.
  </p>
  <a class="btn-login" href="/login"><strong>로그인</strong></a>
  <blockquote>
    의료법 제56조 2항 2호<br>
    의료법 시행령 제23조 1항 2호
  </blockquote>
</div>

<div class="article">
  <div id="content">
    <img src="/assets/icon-loading.svg" alt="로딩중" width="40" height="40" style="display:block; margin:50px auto">
  </div>
</div>

<script>
var articleId = location.href.split('id=')[1];
app.content.get({
  schemaKey: 'articles',
  entryId: articleId
}).then(function (data) {
  $('#content').empty();
  var article = data;
  //
  var category = article.category;
  var title = article.title;
  var created = article.created;
  var content = article.content;
  //
  var markupSrc = [
    '<h2>' + title + '</h2>',
    '<time datetime="' + created + '">' + created + '</time>',
    '<hr>',
    '<div>' + content + '</div>'
  ];
  // 리뷰 글은 로그인을 해야만 조회 가능
  if (category === 'review') {
    firebase.auth().onAuthStateChanged(function (user) {
      if (user) {
        $('#content').append(markupSrc.join(''));
      } else {
        $('.btn-login').attr('href', '/login?refer=' + location.href);
        $('#please-login').show();
      }
    });
  } else {
    $('#content').append(markupSrc.join(''));
  }
});
</script>