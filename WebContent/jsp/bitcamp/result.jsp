<%@page import="com.kabank.jee.domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
	Connection conn = null;
	Statement stmt = null;
	String sql = null;
	ResultSet rs = null;
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
		boolean exist = false;
			for(String s : list) {
				if(s.equalsIgnoreCase("attendance")){
					exist = true;
					break;
			}
		}
			if(!exist) {
				stmt.executeUpdate("CREATE TABLE Attendance("
						+"id VARCHAR2(20) PRIMARY KEY,"
						+"week VARCHAR2(10),"
						+"status VARCHAR2(10)"
						+")");
			}
	
}catch(Exception e){e.printStackTrace();}
System.out.print("-------찍-------");
pageContext.forward("main.jsp");
%>

<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>

<%@ include file="../common/nav.jsp"%>
<section>
<article>
</article>
</section>
<aside></aside>
<%@ include file="../common/footer.jsp"%>
</body>
</html>