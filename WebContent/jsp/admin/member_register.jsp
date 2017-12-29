<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kabank.jee.domain.MemberBean"%>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request" /> 
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>


<%
//request.getparameter는 form tag를 사용하여 던져진 내용들을 
//받아 사용할 때 쓴다.form tag는 name 을 이용하여 사용한다.

member.setId(request.getParameter("id"));
member.setPass(request.getParameter("pass"));
member.setName(request.getParameter("name"));
member.setSsn(request.getParameter("ssn"));
member.setPhone(request.getParameter("phone"));
member.setEmail(request.getParameter("email"));
member.setProfile("default_profile.jpg");
member.setAddr(request.getParameter("addr"));
//sql에 set한 value값들을 m.get하여 전송한다.
Statement stmt = null;
Connection conn = null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //하드에 있는 드라이버를 불러오는 과정이다 이 과정중
	//에러가 발생 할 수 있기 때문에 try catch문을 사용한다.
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe"
			,"bitcamp","bitcamp");
	stmt = conn.createStatement();
 String sql = String.format("INSERT INTO Member("
		+"id,"
		+"pass,"
		+"name,"
		+"ssn," 
		+"phone,"
		+"email,"
		+"profile,"
		+"addr" 
		+")VALUES('%s','%s','%s','%s','%s','%s','%s','%s')",
			member.getId(),
			member.getPass(),
			member.getName(),
			member.getSsn(),
			member.getPhone(),
			member.getEmail(),
			member.getProfile(),
			member.getAddr()
		);
		stmt.executeUpdate(sql);

				}catch(Exception e){
					e.printStackTrace();
				}
					 pageContext.forward("member_list.jsp"); 
%>
