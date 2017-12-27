<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<link rel="stylesheet" href="../../css/admin.css" />
	<script src="../../js/member.js"></script>
</head>

<body>
<header id="admin_header"><h2>관리자 페이지</h2></header>
	<aside id="admin_sidebar" >
	<ul >
		<li>관리자 화면</li>
		<li><a href="#">회원관리</a></li>
	</ul>
	</aside>
<section style="margin-left: 10px;">


<div >
	<table id="admin_table">
	
		<tr><td>ID : <input type="text" /></td></tr>
		<tr><td>이름 : <input type="text" /></td></tr>
		<tr><td>SSN : <input type="text" /></td></tr>
		<tr><td>전화번호 : <input type="text" /></td></tr>
		<tr><td>이메일 : <input type="text" /></td></tr>
		<tr><td>주소 : <input type="text" /></td></tr>
		
		<tr><td colspan="8"><button id="add_member_btn">추가</button></td></tr>
	</table>
	</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>