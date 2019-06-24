---
layout: page
category: 1-비타민한의원
title: 공지사항
permalink: /about/boards/notice
---

<a href="{{ page.dir }}news">뉴스</a> / <strong>공지사항</strong>

<table id="news">
<colgroup>
  <col>
  <col width="150">
  <col width="150">
</colgroup>
<thead>
  <tr>
  <th>제목</th>
  <th>작성자</th>
  <th>작성일</th>
  </tr>
</thead>
<tbody>
</tbody>
</table>

<script>
var db = firebase.firestore();
db.collection('fl_content')
  .where('category', '==', 'notice')
  .get()
  .then(function (querySnapshot) {
    querySnapshot.forEach(function (doc) {
      var id = doc.id;
      var data = doc.data();
      var title = data.title;
      var content = data.content;
      var created = data.created;
      var markupSrc = [
        '<tr>',
        '<td><a href="/articles?id=' + id + '">' + title + '</a></td>',
        '<td>비타민한의원</td>',
        '<td>' + created + '</td>',
        '</tr>'
      ];
      $('#news tbody').append(markupSrc.join(''));
    });
  });
</script>