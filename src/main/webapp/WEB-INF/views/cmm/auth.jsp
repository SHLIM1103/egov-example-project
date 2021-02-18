<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; }
	button { width:100px; height:35px; font-size: 15px; background:#33CC99; color:#fff; border:none; }
	button:hover { opacity: 0.8; }
</style>
<h1>Welcome !</h1>
<div style="text-align: center; padding-top: 50px">
	<button id="prd-btn">제품보기</button>
	<button id="board-btn">게시판보기</button>
	<button id="mpg-btn">마이페이지</button>
	<button id="logout-btn">로그아웃</button>
</div>
<script src="${cmm}/js/cmm.js"></script>
<script src="${mem}/js/mem.js"></script>
<script>
	cmm.init(`${ctx}`)
	cmm.board(`${ctx}`)
	cmm.board(`${ctx}`)
	cmm.mpg(`${ctx}`)
	mem.logout(`${ctx}`)
</script>
