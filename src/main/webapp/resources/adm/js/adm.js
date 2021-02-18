'use strict'
var adm = adm || {}
adm = (() => {
	const list = x => {
		$.getJSON(`${x}/members/list`, d => {
			$.each(d, (i, j) => {
				$(`<tr><td id="mid" style="text-align: center">${j.memid}</td>
				   <td id="mname" style="text-align: center">${j.name}</td></tr>`)
				.css({fontSize: `medium`})
				.appendTo(`#mem-tab`)
			})
		})
	}
	return { list }
})()