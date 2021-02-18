<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	table { width: 60%; padding: 10px; border-collapse: collapse; margin: auto; text-align: center; border: 1px solid black; }
	th { padding-top: 12px; padding-bottom: 12px; background-color: #33CC99; color: white; border: 1px solid black; }
	td {border: 1px solid black; padding: 7px;}
	button{ width: 100px;height:35px; font-size: 15px; background:#33CC99; color:#fff; border:none; }
	button:hover { opacity: 0.8; }	
</style>

<h1>회원목록 조회</h1>
<table id="mem-tab">
	<tr>
		<th style="width:40%">ID</th>
		<th>이름</th>
	</tr>
</table>
<div style="text-align: center; padding-top: 30px;">
	<button id="home-btn">HOME</button>
</div>
<script src="${cmm}/js/cmm.js"></script>
<script src="${adm}/js/adm.js"></script>
<script>
	adm.list(`${ctx}`)
	cmm.home(`${ctx}`)
</script>


