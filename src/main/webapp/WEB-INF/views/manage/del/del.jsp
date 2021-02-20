<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<form>
	<div class="container">

		<h1>Delete Page</h1>
		<a id="home">Go home</a>
		<hr>


		<label><b>Name</b></label> <input id="name" type="text"
			placeholder="Enter Email" name="email"> <label><b>email</b></label>
		<input id="name" type="text" placeholder="Enter Password" name="psw">
		<button id="delete" class="del-btn">Member Delete</button>
	</div>
</form>

<script>
	$('#home').click(function() {
		location.href = `${c}`
	})
</script>