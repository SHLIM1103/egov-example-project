<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>





<h1>List</h1>
<a id="home" href="#"> Go Home </a>
<br>
<input align="right" id="search" type="text">
<button id="search-btn">회원찾기</button>
</input>


<table class="table">
	<thead>
		<tr>
			<th>id</th>
			<th>password</th>
		</tr>
	</thead>
	<tbody id="tbody">

	</tbody>
</table>



<script>
	regi.list(`${c}`)

	$(`#search-btn`).click(function() {
		regi.search(`${c}`)
	})

	$('#search-bt').click(function() {
		location.href = `${c}`
	})
</script>


