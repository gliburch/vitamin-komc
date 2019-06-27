---
layout: page
title: 로그인
permalink: /login
---

<style>
body {
  background-color:#fafafa;
}
.panel {
  max-width:400px;
  margin:0 auto;
  padding:0 25px 100px;
}
</style>
<h2 class="content-heading">
  <strong>로그인</strong>
</h2>
<div class="panel">
  {% include auth.html action="login" %}
</div>
