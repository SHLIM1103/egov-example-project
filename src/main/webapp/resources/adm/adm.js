var regi = regi || {}

regi.regi = x => {
	$.ajax({
		url: `${x}/managers/register`,
		type: 'POST',
		data: JSON.stringify({
			id: $(`#id`).val(),
			password: $(`#password`).val()
		}),
		dataType: 'json',
		contentType: 'application/json',
		success: d => {
			if (d.message === 'SUCCESS') {
				alert(`등록 완료`)
				location.href`${x}`
			} else {
				alert(`등록 실패`)
			}
		},
		error: e => {
			alert(`안 들어감` + e)
		}
	})
}


regi.list = x => {
	$.getJSON(`${x}/managers/list`, function(d) {
		$.each(d, (i, j) => {
			console.log(i);
			$(`
					<tr>
						<th>${j.id}</th>
						<th>${j.password}
					</th> </tr>`).appendTo('#tbody').click(

				function(e) {
					e.preventDefault();
					location.href = `${x}/manage/detail/detail/` + `${j.id}`;
				})
		})
	})
}

regi.detail = x => {
    $.getJSON(`${x.path}/managers/detail/${x.id}`, function (d) {
        $(`<tr>
			<td scope="col" class="text-center">${d.manager.id}</td>
			<td scope="col" class="text-center">${d.manager.password}</td>
			<td scope="col" class="text-center">Math</td>
			<td scope="col" class="text-center">English</td>
	</tr>`).appendTo('#tbody')

    })
}



regi.search = x => {
	$.ajax({
		url: `${x}/managers/select`,
		type: 'POST',
		data: JSON.stringify({
			id: $(`#search`).val(),
		}),
		dataType: 'json',
		contentType: 'application/json',
		success: d => {
			if (d.message === 'SUCCESS') {
				alert(`검색완료`)
				location.href`${x}`
			} else {
				alert(`검색실패`)
			}
		},
		error: e => {
			alert(`응 없어`)
		}
	})
}