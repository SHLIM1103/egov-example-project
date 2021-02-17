<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
div { text-align: center }
input[type=text], input[type=password] {
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
button { width:100px; height:35px; font-size: 15px; background:#33CC99; color:#fff; border:none; }
button:hover {
  opacity: 0.8;
}
</style>

<form>
<h1>회원가입</h1>
<div>
<label for="memid"><b>ID</b></label>
<input type="text" placeholder="Enter ID" id="memid" required>
</div>
<div>
<label for="password"><b>PW</b></label>
<input type="password" placeholder="Enter pw" id="password" required>
</div>
<div>
<button type="button" id="join-btn">가입하기</button>
<button type="button" class="home-btn" id="home-btn">Home</button>
</div>
</form>
<script src="${mem}/js/mem.js"></script>
<script>
mem.home(`${ctx}`)
mem.join(`${ctx}`)
</script>
</body>
</html>