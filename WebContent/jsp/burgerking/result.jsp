<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp"%>
<%@ include file="../common/top.jsp"%>
<%@ include file="../common/navigation.jsp"%>
					<%
					String menu = request.getParameter("menu");
					String count = request.getParameter("count");
					String price = "";
					String total = "";
					String hamburger = request.getParameter("hamburger");
					String coke = request.getParameter("coke");
					String chip = request.getParameter("chip");
					String coffee = request.getParameter("coffee");

					if (count.equals("") && menu.equals("")) {
				%>
				<div style="width: 300px; height: 200px; border: 3px solid skyblue; margin: 0 auto;">
					<p>입력실패</p>
					<form action="main.jsp">
						<input type="submit" value="뒤로가기" />
					</form>
					<%
						} else {
							switch (menu) {
							case "햄버거":
								price = String.valueOf(Integer.parseInt(hamburger) * Integer.parseInt(count));
								break;
							case "커피":
								price = String.valueOf(Integer.parseInt(coffee) * Integer.parseInt(count));
								break;
							case "콜라":
								price = String.valueOf(Integer.parseInt(coke) * Integer.parseInt(count));
								break;
							case "감자칩":
								price = String.valueOf(Integer.parseInt(chip) * Integer.parseInt(count));
								break;

							}
							total = price;
					%>
					<form action="main.jsp" style="width: 300px; height: 200px; border: 3px solid skyblue; margin: 0 auto;">
					<p >
						<%=menu%> <%=count%> 개 ￦<%=price%> <br />
						------------------------ 
						<br />총 결제 금액 ￦<%=total%>
						<br />
					</p>
					
						<input type="submit" value="구매완료" /> <input type="submit"
							value="결 제" />
					</form>

					<%
						}
					%>
				</div>

<%@ include file="../common/footer.jsp"%>