<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	h3 { text-align: center; margin-top:30px; }
	button{ width:100px;height:35px;font-size: 15px;background:#33CC99;color:#fff;border:none; }
	button:hover { opacity: 0.8; }
</style>

<h1>마이페이지</h1>
<h3>환영합니다 !</h3>
<form>
	<div style="text-align: center; margin-top:30px;">
		<label for="password"><b>비밀번호 변경</b></label>
		<input type="password" placeholder="Enter new password" id="password" style="width:20%;height:25px;font-size:medium;" required>
		<button style="width:200px;" id="modify-btn">비밀번호 수정</button>
	</div>
	<div style="text-align: center; margin-top:30px;">
		<button id="auth-btn">HOME</button>
		<button id="withdrawal-btn">회원 탈퇴</button>
	</div>
</form>
<script src="${mem}/js/mem.js"></script>
<script src="${cmm}/js/cmm.js"></script>
<script>
	cmm.auth(`${ctx}`)
	mem.modify(`${ctx}`)
	mem.withdrawal(`${ctx}`)
	cmm.home(`${ctx}`)
</script>