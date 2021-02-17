<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	#tab {border-collapse: collapse; width: 100%; margin: auto; text-align: center;}
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
<h1>제품 목록보기</h1>
	<div id="prd-table">
		<table id="tab" style="width:80%">
			<tr>
				<th style="width:25%">제품번호</th>
				<th style="width:35%">제품명</th>
				<th style="width:25%">판매가</th>
				<th style="width:15%">재고수량</th>
			</tr>
		</table>
	</div>
<div style="text-align: center; margin-top:30px;">
	<button id="add-btn">제품추가</button>
	<button id="home-btn">HOME</button>
</div>
<script src="${cmm}/js/cmm.js"></script>
<script src="${prdt}/js/prd.js"></script>
<script>
	cmm.add(`${ctx}`)
	cmm.home(`${ctx}`)
	prd.list(`${ctx}`)
</script>
