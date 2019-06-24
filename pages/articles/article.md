---
layout: page
title: 게시글
permalink: /articles
---

<style>
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

<div class="article">
  <div id="content"></div>
</div>

<script>
var articleId = location.href.split('id=')[1];
var db = firebase.firestore();
db.collection('fl_content')
  .doc(articleId)
  .get()
  .then(function (doc) {
    var id = doc.id;
    var data = doc.data();
    var title = data.title;
    var created = data.created;
    var content = data.content;
    //
    var markupStrings = [
      '<h2>' + title + '</h2>',
      '<time datetime="' + created + '">' + created + '</time>',
      '<hr>',
      '<div>' + content + '</div>'
    ];
    $('#content').append(markupStrings.join(''));
  });
</script>