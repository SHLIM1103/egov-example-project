'use strict'
var board = board || {}
board = (() => {
	const writer = x => {
	$.ajax({
		url: `${x}/boards/writer`,
		type: 'POST',
		data: JSON.stringify({
			 title: $('#title').val(),
             content: $('#content').val()
		}),
		dataType:'json',
		contentType:'application/json',
		success: d => {
			if(d.message === 'SUCCESS'){
				alert(`게시글 작성 완료 !`)
				 location.href =`${x}/move/board/writerList`
			}else{
				alert('게시글 작성 실패 ! 다시 시도해 주세요.')
			}
		},
		error: e => {
        	alert('게시글 작성 에러')
		}
	})
}
const list = x =>{
	$.getJSON(`${x}/boards/list`, d => {
			$.each(d, (i, j) => {
				$(`<tr>
					<td>${j.boardNum}</td>
					<td><a class="title" href="#" id="${j.boardNum}">${j.title}</a></td>
					<td>${j.writtenDate}</td></tr>`)
					.css({padding: `20px`, textAlign: `center`})
					.appendTo(`#tab`)
			})
			$(`.title`).each(function(){
				$(this).click(e => {
					e.preventDefault()
					localStorage.setItem(`title`, `${this.id}`)
					location.href=`${x}/move/board/det`
				})
			})
		})
	}	
	const det = x => {
		$.getJSON(`${x}/boards/${localStorage.getItem(`title`)}`, d => {
			$(`#boardNum`).text(d.boardNum)
			$(`#boardTitle`).text(d.title)
			$(`#boardContent`).text(d.content)
			$(`#writtenDate`).text(d.writtenDate)
			 $('#update').click(e => { 
             $('#boardTitle').html('<input type ="text" style="width:98%; height:100%;" id="update-title" value="'+d.title+'"/>')
             $('#boardContent').html('<input type="text" id="update-content" style="width:98%; height: 300px" value="' +d.content + '"/>')
             $(`#update`).html('<div id="confirm">수정완료</div>')
				$(`#confirm`).click(e => {
					e.preventDefault()
					$.ajax({
						url: `${x}/boards/update`,
						type: `PUT`,
						data: JSON.stringify({
							boardNum: d.boardNum,
							title: $(`#update-title`).val(),
							content: $(`#update-content`).val(),
						}),
						dataType: `json`,
						contentType: `application/json`,
						success: d => {
							if(d.message === 'SUCCESS') {
								alert(`수정 성공 !`)
								location.href=`${x}/move/board/writerList`
							}else {
								alert(`수정 실패 ! 다시 시도해 주세요.`)
							}
						},
						error: e => { alert(`게시글 수정 에러`)}
					})
				})
        	})
			$(`#delete`).click(e => {
				e.preventDefault()
				$.ajax({
					url: `${x}/boards/remove`,
					type: `DELETE`,
					data: JSON.stringify({
						boardNum: d.boardNum
					}),
					dataType: `json`,
					contentType: `application/json`,
					success: d => {
						if(d.message === `SUCCESS`) {
							alert(`삭제 완료 !`)
							location.href=`${x}/move/board/writerList`
						}else {
							alert(`삭제 실패 ! 다시 시도해 주세요.`)
						}
					},
					error: e => { alert(`게시글 삭제 에러`)}
				})
			})
		})
	}
	return {list, writer, det}
	})()