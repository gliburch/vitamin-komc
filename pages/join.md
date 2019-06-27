---
layout: page
title: 회원가입
permalink: /join
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
  <strong>회원가입</strong>
</h2>
<div class="panel">
  {% include auth.html action="join" %}
</div>
