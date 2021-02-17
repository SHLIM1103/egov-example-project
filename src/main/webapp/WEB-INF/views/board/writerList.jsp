<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	#tab { border-collapse: collapse; width: 50%; margin: auto; text-align: center; }
	#tab tr:hover { background-color: #dcdcdc; }
	#tab th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  background-color: #33CC99;
	  color: white;
	  border: 1px solid black;
	}
	#tab td { border: 1px solid black; padding: 7px; }
	button{ width:100px; height:35px; font-size: 15px; background:#33CC99; color:#fff; border:none; }
	button:hover { opacity: 0.8; }
</style>

<h1>게시글 목록</h1>
<table id="tab" >
	<tr>
		<th style="width: 10%">글번호</th>
		<th style="width: 65%">제목</th>
		<th>등록일시</th>
	</tr>
</table>
<div style="text-align: center; padding-top: 30px;">
	<button id="wri">글쓰기</button>
	<button id="home">HOME</button>
</div>
<script src="${board}/js/board.js"></script>
<script>
   $('#home').click(function(){ location.href=`${ctx}`})
   $('#wri').click(function(){location.href=`${ctx}/move/board/writer`})
	board.list(`${ctx}`)
</script>