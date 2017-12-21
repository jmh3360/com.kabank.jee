/**
 * 
 */

window.onload=excute; //로딩이 될 때 실행을 하라는 뜻
function excute() {
	document.querySelector('#go_admin').onclick = goAdmin;
	document.querySelector('#go_join').onclick = goJoin;
}

function goAdmin() {
	var admin = confirm('관리자?');
	if(admin) {
		alert('안녕하세요 관리자님');
		location.href = "burgerking/main.jsp";
	}else{
		alert('관리자만 접근가능 합니다.');
	}
	
}
function goJoin() {
	var admin = confirm('회원가입하시겠습니까?');
	if(admin) {
		location.href = "member/join.jsp";
	}else{
	}
}
