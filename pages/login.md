---
layout: page
title: 로그인
permalink: /login
---

<form>
  <input type="text" name="email" placeholder="이메일">
  <input type="password" name="password" placeholder="패스워드">
  <p><a href="#">비밀번호를 잊어버렸나요?</a></p>
  <button type="submit">회원가입</button>
  <button type="submit">로그인</button>
</form>

<div id="user"></div>

<script>
$('form').on('submit', function (event) {
  event.preventDefault();
  var $form = $(this);
  var $submitButton = $form.find('[type="submit"]');
  var email = $form.find('[name="email"]').val();
  var password = $form.find('[name="password"]').val();
  // Validation
  if (email.length < 4) {
    alert('이메일 주소를 입력해주세요.');
    return false;
  }
  if (password.length < 4) {
    alert('패스워드를 입력해주세요.');
    return false;
  }
  // Start auth with email/password
  $submitButton.prop('disabled', true);
  firebase.auth().signInWithEmailAndPassword(email, password)
    .then(function (response) {
      firebase.auth().onAuthStateChanged(function (user) {
        console.log(user);
      });
      alert('로그인 했습니다!');
      $submitButton.prop('disabled', false);
    })
    .catch(function (error) {
      var errorCode = error.code;
      var errorMessage = error.message;
      if (errorCode === 'auth/user-not-found') {
        signUp(email, password, function () {
          $submitButton.prop('disabled', false);
        });
      } else if (errorCode === 'auth/wrong-password') {
        alert('비밀번호가 틀렸습니다.');
        $submitButton.prop('disabled', false);
      } else {
        alert(errorMessage);
        $submitButton.prop('disabled', false);
      }
    });
});

function signUp (email, password, callback) {
  firebase.auth().createUserWithEmailAndPassword(email, password)
    .then(function (response) {
      alert('회원가입 완료!');
      callback();
    })
    .catch(function (error) {
      var errorCode = error.code;
      var errorMessage = error.message;
      if (errorCode == 'auth/weak-password') {
        alert('비밀번호가 너무 간단합니다.');
      } else {
        alert(errorMessage);
      }
      callback();
    });
}
</script>
