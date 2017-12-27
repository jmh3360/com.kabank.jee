<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%

Statement stmt = null;
Connection conn = null;
ResultSet rs = null;
String sql = null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe"
			,"bitcamp","bitcamp");
	stmt = conn.createStatement();
	sql = "SELECT * FROM tab";
			
		rs = stmt.executeQuery(sql);
		List<String> list = new ArrayList<>();
		while(rs.next()){
			String temp = rs.getString("TNAME");
			list.add(temp);
		}
		boolean exist =false;
		for(String s : list) {
			if(s.equalsIgnoreCase("member")){
				exist = true;
				break;
			}
		}
			if(!exist) {
				stmt.executeUpdate("CREATE TABLE Member("
						+"id VARCHAR2(20) PRIMARY KEY,"
						+"pass VARCHAR2(20),"
						+"name VARCHAR2(20),"
						+"ssn VARCHAR2(20)," 
						+"phone VARCHAR2(20),"
						+"email VARCHAR2(20),"
						+"profile VARCHAR2(20),"
						+"addr VARCHAR2(20)" 
						+")");
				        
			}
		
}catch(Exception e){
	e.printStackTrace();
	
}finally{
	if(stmt !=null){
		try{stmt.close();}catch(Exception e){e.printStackTrace();}
	}if(conn !=null){
		try{conn.close();}catch(Exception e){e.printStackTrace();}
		
	}
	
}

%>

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
	<tr><th colspan = "8">
	<form id = "admin_serchbox" action=""><select id="admin_select"><option value="">이름</option>
	<option value="">id</option><option value="">성별</option></select>
	<input style="width: 400px;" id ="input_serch" type="text" /><button id ="input_serch_btn">검색</button></form>
	</th></tr>
		<tr>
		<th>NO</th>
		<th>아이디</th>
		<th>이 름</th>
		<th>생년월일</th>
		<th>성별</th>
		<th>전화번호</th>
		<th>이메일</th>
		<th>주소</th>
		</tr>
		<tr>
			<td>2</td>
			<td>hong</td>
			<td>홍길동</td>
			<td>1980-01-01</td>
			<td>남</td>
			<td>010-1111-2222</td>
			<td>hong@naver.com</td>
			<td>서울</td>
		</tr>
		<tr>
			<td>1</td>
			<td>kim</td>
			<td>김유신</td>
			<td>1980-01-01</td>
			<td>남</td>
			<td>010-1111-2222</td>
			<td>kim@naver.com</td>
			<td>서울</td>
		</tr>
		<tr><td colspan="8"><button id="add_member_btn">추가</button></td></tr>
	</table>
	</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>