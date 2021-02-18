'use strict'
var adm = adm || {}
adm = (() => {
	const del = x => {
		$.ajax({
			url: `${c}/delete`,
			type: 'DELETE',
			data: JSON.stringify({
				name: document.getElemenyById('name').value,
				email: documnet.getElementById('email').value
			}),
			dataType: 'json',
			contentType: 'application/json',
			success: d => {
				if (d.message === 'SUCCESS') {
					alert(`삭제 성공 !`)
				}else {
					alert(`삭제 실패 ! 다시 시도해 주세요.`)
				}
			},
			error: e => {
				alert(`error`)
			}
		})
	}
	return { del }
})()