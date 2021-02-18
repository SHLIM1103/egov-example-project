'use strict'
var cmm = cmm || {}
cmm = (() => {
	const home = x => {
		$(`#home-btn`).click( e => { location.href=`${x}/` })
	}
	
	const plist = x => {
		$(`#prd-btn`).click( e => { location.href=`${x}/move/prd/list` })
	}
	
	const add = x => {
		$(`#add-btn`).click( e => { location.href=`${x}/move/prd/add` })
	}
	
	const write = x => {
		$(`#wri`).click( e => { location.href=`${x}/move/brd/writer` })
	}
	
	const board = x => {
		$(`#board-btn`).click( e => { location.href=`${x}/move/brd/writerList` })
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
	
	const mgr = x => {
		$(`#manage-btn`).click( e => { location.href = `${x}/move/mem/mgr` })
	}
	
	const auth = x => { 
		$(`#auth-btn`).click( e => { location.href=`${x}/move/cmm/auth` })
	}
	return { plist, home, add, joinPage, loginPage, board, mpg, auth, write, mgr }
})()