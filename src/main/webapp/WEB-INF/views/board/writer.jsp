<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
button{width:100px;height:35px;font-size: 15px;background:#46AA46;color:#fff;border:none;}
#tab {border-collapse: collapse; width: 50%; margin: auto; text-align: center; }
#tab tr:hover {background-color: #dcdcdc;}
#tab th {
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #33CC99;
  color: white;
  border: 1px solid black;
}
#tab td {border: 1px solid black; padding: 7px;}
	button{width:100px;height:35px;font-size: 15px;background:#33CC99;color:#fff;border:none;}
</style>

<h1>글쓰기</h1>

<form>
<table id="tab" >
        <tr>
        	<th style="width: 20%">제목</th>
        	<td style="width: 80%"><input type="text" id ="title" placeholder="글 제목 입력" style="width:98%; height:100%;"></td>
        </tr>
        <tr>
        	<th>내용</th>
        	<td><textarea rows="15" cols="65" id="content" placeholder="글 내용 입력" style="width:98%;"></textarea></td>
        </tr>
</table>
</form>
<div style="text-align: center; padding-top: 30px;">			
	<button id="writ-btn">등록하기</button>
	<button id="back-btn">뒤로가기</button>
	<button id="home-btn">HOME</button>
</div>
<script src="${board}/js/board.js"></script>
<script src="${cmm}/js/cmm.js"></script>
<script>
$('#writ-btn').click(function(){board.writer(`${ctx}`)})
$('#back-btn').click(function(){location.href=`${ctx}/move/board/writerList`})
cmm.home(`${ctx}`)
</script>