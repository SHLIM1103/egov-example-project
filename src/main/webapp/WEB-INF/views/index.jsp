<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>mini team project</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<style>
			h1 { text-align: center; padding-top: 20px; }
			button{ width:100px;height:35px;font-size: 15px;background:#33CC99;color:#fff;border:none; }
			button:hover { opacity: 0.8; }
		</style>
	</head>
	<body>
		<h1>Welcome !</h1>
		<div style="text-align: center; padding-top: 50px">
			<button id="joinPage-btn">회원가입</button>	  
			<button id="loginPage-btn">로그인</button>	
			<button id="prd-btn">제품보기</button>
			<button id="board-btn">게시판보기</button>
			<button id="manage-btn">관리자</button>
		</div>
		<script src="${cmm}/js/cmm.js"></script>
		<script>
			cmm.init(`${ctx}`)
			cmm.loginPage(`${ctx}`)
			cmm.joinPage(`${ctx}`)
			cmm.board(`${ctx}`)
			$(`#manage-btn`).click(function(e) {
				e.preventDefault()
				location.href = `${ctx}/move/manage/mng`
			})
		</script>
	</body>
</html>