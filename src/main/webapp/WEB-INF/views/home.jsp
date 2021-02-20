<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<h1>Main page</h1>
<button id="manage-btn">회원관리</button>
<button id="register-btn">Manager 등록</button>
<button id="del-btn">Manager 삭제</button>

<!-- 홈은 타일즈를 타면 안된다. 메인이 죽는다. -->
<%-- <jsp:include page="./head.jsp" />
 --%>
 <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(`#manage-btn`).click(function(e) {
		e.preventDefault();
		location.href = `${c}/manage/mng/mng`
	});

	$(`#register-btn`).click(function(e) {
		e.preventDefault();
		location.href = `${c}/manage/regi/regi`;
	});

	$(`#del-btn`).click(function() {
		location.href = `${c}/manage/del/del`
	})
</script>