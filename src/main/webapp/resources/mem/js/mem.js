'use strict'
var mem = mem || {}
mem = (() => {
	const join = x => {
		$(`#join-btn`).click( e => {
			e.preventDefault()
			$.ajax({
				url:`${x}/members/join`,
				type: 'POST',
				data: JSON.stringify({
					memid: $('#memid').val(),
					name: $(`#name`).val(),
					password: $('#password').val()
				}),
				dataType: 'json',
				contentType: 'application/json',
				success: data => {
					location.href=`${x}/move/mem/login`
					alert(`회원가입 성공 ! 로그인 해주세요.`)
				},
				error: error => {
					alert(`회원가입 도중 에러가 발생하였습니다.`)
				}
			})
		})
	}
	
	const login = x => {
		$(`#login-btn`).click(e => {
			e.preventDefault()
			$.ajax({
				url:`${x}/members/login`,
				type: 'POST',
				data: JSON.stringify({
					memid: $('#memid').val(),
					name: $('#name').val(),
					password: $('#password').val()
				}),
				dataType: 'json',
				contentType: 'application/json',
				success: data => {
					if(data.message === 'SUCCESS'){
						sessionStorage.setItem('memid', data.sessionMember.memid)
						sessionStorage.setItem('memid', data.sessionMember.name)
						sessionStorage.setItem('password', data.sessionMember.password)
						alert(`로그인 성공 ! 환영합니다 !`)
						location.href=`${x}/move/cmm/auth`
					}else{
						alert(`로그인 실패 ! 다시 시도해 주세요.`)
						location.reload()
					}
				},
				error: error => {
					alert(`로그인 도중 에러가 발생하였습니다.`)
				}
			})
		})
	}
	
	const modify = x => {
		$(`#modify-btn`).click( e => {
			$.ajax({
				url:`${x}/members/modify`,
				type:`PUT`,
				data: JSON.stringify({
					memid: sessionStorage.getItem('memid'),
					password: $('#password').val()
				}),
				dataType:`json`,
				contentType:`application/json`,
				success: data => {
					if(data.message === 'SUCCESS'){
						alert('비밀번호 수정 완료 !')
							location.reload();
							sessionStorage.setItem('password', data.sessionMember.password)
					}else{
						alert('비밀번호 수정 실패 ! 다시 시도해 주세요.')
							location.reload();
					}
				},
				error: error => {
					alert(`비밀번호 수정 도중 에러가 발생하였습니다.`)
				}
			})
		})
	}
	
	const withdrawal = x => {
		$(`#withdrawal-btn`).click( e => {
				$.ajax({
				url:`${x}/members/withdrawal`,
				type:`DELETE`,
				data: JSON.stringify({
					memid: sessionStorage.getItem('memid')
				}),
				dataType:`json`,
				contentType:`application/json`,
				success: data => {
					if(data.message === 'SUCCESS'){
						alert('탈퇴 완료 !')
							sessionStorage.clear()
							location.href = `${x}/`
					}else{
						alert('탈퇴 실패 !')
							location.reload();
					}
				},
				error: error => {
				alert(`탈퇴 도중 에러가 발생하였습니다.`)
				}
			})
		})
	}
	
	const logout = x => {
		$(`#logout-btn`).click( e => {
			sessionStorage.clear()
			location.href = `${x}/`
		})
	}
	return { join, login, modify, withdrawal, logout }
})()