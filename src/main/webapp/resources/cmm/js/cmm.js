'use strict'
var cmm = cmm || {}
cmm = (() => {
	const init = x => {
		$(`#prd-btn`).click(e => {
			location.href=`${x}/move/prd/list`
		})
	}
	
	const home = x => {
		$(`#home-btn`).click(e => {
			location.href=`${x}/`
		})
	}
	
	const add = x => {
		$(`#add-btn`).click(e => {
			location.href=`${x}/move/prd/add`
		})
	}
	
	const board = x => {
		$(`#board-btn`).click(e => {
			location.href=`${x}/move/board/writerList`
		})
	}
	
	const joinPage = x => {
		$(`#joinPage-btn`).click( e => {
			location.href = `${x}/move/mem/join`
		})
	}
	
	const loginPage = x => {
		$(`#loginPage-btn`).click( e => {
			location.href = `${x}/move/mem/login`
		})
	}
	return { init, home, add, joinPage, loginPage, board }
})()