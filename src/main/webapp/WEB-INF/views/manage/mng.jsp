<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	table { border-collapse: collapse; width: 80%; margin: auto; }
	table th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  background-color: #33CC99;
	  color: white;
	  border: 1px solid black;
	}
	table td { border: 1px solid black; padding: 7px; }
	button{ width:100px; height:35px; font-size: 15px; background:#33CC99; color:#fff; border:none; }
	button:hover { opacity: 0.8; }
</style>

<h1>Admin Page</h1>
<table class="table table-hover">
	<thead>
		<tr>
			<th scope="col" class="text-center">email</th>
			<th scope="col" class="text-center">password</th>
			<th scope="col" class="text-center">ages</th>
			<th scope="col" class="text-center">level</th>
			<th scope="col" class="text-center">city</th>
			<th scope="col" class="text-center">address</th>
			<th scope="col" class="text-center">gender</th>
			<th scope="col" class="text-center">phone</th>
		</tr>
	</thead>
	<tbody id="tbody">
	</tbody>
</table>
<div style="text-align: center; padding-top: 30px;">
	<button id="home">HOME</button>
</div>
<script>
	$.getJSON(`${ctx}/managers/list`, function(d){
		$.each(d, function(i, j){
				$('<tr>' +
					'<th scope="col" class="text-center">'+j.memid+'</th>'
					'<th scope="col" class="text-center">'+j.name+'</th>'
				'</tr>').appendTo('#tbody');
		})
	})
	$(`#home`).click(function() { location.href = `${ctx}` })
</script>


