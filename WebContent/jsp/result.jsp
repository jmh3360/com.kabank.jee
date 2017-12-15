<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
</head>
<style>
/* 메인테이블 */
table {
	width: 80%;
	height: 620px;
	margin: 0 auto;
}

table tr {
	width: 100%;
	height: 50px;
	border: 3px solid blue;
}

table tr th {
	width: 100%;
	height: 30px;
	border: 3px solid red;
}

table tr td {
	width: 100%;
	height: 30px;
	border: 3px solid blue;
}
</style>
<body>
	<table>
		<tr style="height: 10%">
			<td colspan="5">네비게이션</td>

		</tr>
		<tr style="height: 10%">
			<td style="width: 20%">버거킹</td>
			<td style="width: 20%">카카오뱅크</td>
			<td style="width: 20%">비트캠프</td>
			<td style="width: 20%">SKT 텔레콤</td>
			<td style="width: 20%">로또</td>
		</tr>
		<tr>
			<td colspan="5">
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

				<div
					style="width: 300px; height: 200px; border: 3px solid skyblue; margin: 0 auto;">
					<p>입력실패</p>
					<form action="index.jsp">
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
					%>
					<p>
						<%=menu%>
						<%=count%>
						<%=price%>
						<br />
						<!--  -->
						------------------------ 결제금액
						<%=total%>
						<br />
					</p>
					<form action="index.jsp">
						<input type="submit" value="구매완료" /> <input type="submit"
							value="결 제" />
					</form>

					<%
						}
					%>
				</div>
			</td>
		</tr>
	</table>


</body>
</html>