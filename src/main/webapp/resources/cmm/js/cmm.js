'use strict'
var cmm = cmm || {}
cmm = (() => {
	const init = x => {
		$(`#prd-btn`).click(e => { location.href=`${x}/move/prd/list` })
	}
	
	const home = x => {
		$(`#home-btn`).click(e => { location.href=`${x}/` })
	}
	
	const write = x => {
		$(`#wri`).click( e => { location.href=`${x}/move/board/writer` })
	}
	const add = x => {
		$(`#add-btn`).click(e => { location.href=`${x}/move/prd/add` })
	}
	
	const board = x => {
		$(`#board-btn`).click(e => { location.href=`${x}/move/board/writerList` })
	}
	
	const joinPage = x => {
		$(`#joinPage-btn`).click( e => { location.href = `${x}/move/mem/join` })
	}
	
	const loginPage = x => {
		$(`#loginPage-btn`).click( e => { location.href = `${x}/move/mem/login` })
	}
	
	const mpg = x => {
		$(`#mpg-btn`).click( e => { location.href=`${x}/move/mem/myPage` })
	}
	
	const auth = x => { 
		$(`#auth-btn`).click( e => {
			e.preventDefault()
			location.href=`${x}/move/cmm/auth`
		})
	}
	
	return { init, home, add, joinPage, loginPage, board, mpg, auth, write }
})()