<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	#tab { width: 60%; padding: 10px; border-collapse: collapse; margin: auto; text-align: center; border: 1px solid black; }
	#tab th { padding-top: 12px; padding-bottom: 12px; background-color: #33CC99; color: white; border: 1px solid black; }
	#tab td {border: 1px solid black; padding: 7px;}
	button{ width: 100px;height:35px; font-size: 15px; background:#33CC99; color:#fff; border:none; }
	button:hover { opacity: 0.8; }	
</style>

<h1>게시글 보기</h1>
<table id="tab">
	<thead>
		<tr class="table-active">
			<th style="width: 10%">No. <span id="boardNum"></span></th>
			<th style="width: 10%">제목</th>
			<td style="width: 40%"><span id="boardTitle"></span></td>
    		<th style="width: 10%">작성시간</th>
    		<td style="text-align: center"><span id="writtenDate"></span></td>   
		</tr>
	</thead>
	<tbody>
		<tr>
		<th colspan="2">내용</th>
		<td style="text-align: left; vertical-align: middle; height: 300px" colspan="3"><div id="boardContent"></div></td>
		</tr>
	</tbody>
</table>
<div style="text-align: center; padding-top: 30px;">
	<button id="update">수정하기</button>
	<button id="delete">삭제하기</button>
</div>
<div style="text-align: center; padding-top: 10px;">
	<button id="auth-btn">HOME</button>
	<button id="board-btn">목록보기</button>
</div>
<script src="${brd}/js/brd.js"></script>
<script src="${cmm}/js/cmm.js"></script>
<script>
	cmm.board(`${ctx}`)
	brd.det(`${ctx}`)
	cmm.auth(`${ctx}`)
</script>