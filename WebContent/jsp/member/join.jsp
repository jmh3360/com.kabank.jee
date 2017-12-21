<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request" />
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.MemberBean" %>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<%@ include file="../common/header.jsp"%>
<section>
<article>

<h1>회원가입</h1>

</article>
</section>
<aside></aside>
<form action="join_result.jsp">
<table id="member_table">
	<tr>
		<td> ID <input type="text" name="id" placeholder="id를 입력하세요"/> </td>
		<td> <input type="submit" value="id 중복확인"/> </td>
	</tr>
	
	<tr>
		<td> Password <input type="text" name="pw" placeholder="pw를 입력하세요"/></td>
	</tr>
	
	<tr>
		<td> Password(중복확인) <input type="text" name="pw2" placeholder="pw 중복확인"/>
		</td>
		<td>비밀번호가 일치합니다.</td>
	</tr>
	
	<tr>
		<td> 이름 <input type="text" name="name" placeholder="이름"/> </td>
	</tr>

	<tr>
	
		<td>주민번호 <input type="text" name="ssn" placeholder="생년월일"/> </td>
		<td> - <input type="text" name="ssn2" placeholder="앞 1자리"/> </td>
	</tr>
	
	<tr>
		<td>이메일 <input type="text" name="email" placeholder="이메일 id"/> @	</td> 
		<td><input type="text" name="email2" placeholder="이메일 id"/> </td>
	</tr>
	<tr>
		<td>프로필 사진</td>
		<td><input type="submit" value="찾아보기"/></td>
	</tr>
	<tr>
		<td>주소 <input type="text" name="addr" placeholder="주소"/></td>
		<td></td>
	</tr>
	
	<tr><td><input type="submit" value="회원가입"/></td></tr>
</table>



</form>
<%@ include file="../common/footer.jsp"%>
</body>
</html>