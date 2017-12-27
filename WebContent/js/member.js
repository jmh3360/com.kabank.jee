/**
 * 
 */

window.addEventListener("load",init,false);
function init() {
	document.querySelector('#add_member_btn').addEventListener("click",addMember,false);
}
function addMember() {
	location.href = "add_member.jsp";
}

	
