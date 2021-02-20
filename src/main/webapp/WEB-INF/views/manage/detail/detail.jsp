<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<h1>Detail Page</h1>
<a id="home" href="#"> Home </a>
<table class="table table-hover">
	<thead>
		<tr>
			<th scope="col" class="text-center">Name</th>
			<th scope="col" class="text-center">Address</th>
			<th scope="col" class="text-center">Math</th>
			<th scope="col" class="text-center">English</th>
		</tr>
	</thead>
	<tbody id="tbody">
	</tbody>
</table>

<script>
	
	regi.detail({{"path",`${c}`},{"id","00"}});
	
	
	
	$('#home').click(function(e) {
		e.preventDefault();
		location.href = `${c}`
	})
</script>