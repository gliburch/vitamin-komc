---
layout: page
title: 게시글
permalink: /articles
---

<script>
var articleId = location.href.split('id=')[1];
</script>

<div style="padding:25px">
  <div id="content"></div>
</div>

<script>
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