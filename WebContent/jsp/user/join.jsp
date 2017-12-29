<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<jsp:useBean id="member" class = "com.kabank.jee.domain.MemberBean" scope="request" />
<%
member.setId(request.getParameter("input_id"));
member.setPass(request.getParameter("input_pass"));
member.setName(request.getParameter("input_name"));
member.setSsn(request.getParameter("input_ssn")+request.getParameter("input_ssn2"));
member.setEmail(request.getParameter("input_email"));
member.setProfile("default_profile.jpg");
member.setAddr(request.getParameter("input_addr"));
member.setPhone(request.getParameter("input_phone"));
Connection conn = null;
Statement stmt = null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	String sql = String.format("INSERT INTO Member("
			+"id,"
			+"pass,"
			+"name,"
			+"ssn,"
			+"email,"
			+"profile,"
			+"addr,"
			+"phone"
			+")VALUES('%s','%s','%s','%s','%s','%s','%s','%s')", 
			member.getId(),
			member.getPass(),
			member.getName(),
			member.getSsn(),
			member.getEmail(),
			member.getProfile(),
			member.getAddr(),
			member.getPhone()
			);
	stmt.execute(sql);
}catch(Exception e){e.printStackTrace();}

//pageContext.forward("../index.jsp");
%>

id <%=member.getId()%>
id <%=member.getPass()%>
id <%=member.getSsn()%>
id <%=member.getAddr()%>
id <%=member.getEmail()%>
id <%=member.getName()%>
id <%=member.getPhone()%>
id <%=member.getId()%>