---
layout: page
title: 게시글
permalink: /articles
---

<script>
var pathFragment = location.pathname.split('/');
var articleId = pathFragment[pathFragment.length - 1];
</script>

<div id="content"></div>

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