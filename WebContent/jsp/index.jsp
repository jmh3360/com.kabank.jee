<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Index</title>
<style>
/* 메인테이블 */

	table, tr, td, th{border-collapse: collapse ; text-align: center;}
#wrapper{width: 80%;height: 770px;margin: 0 auto; text-align: center;}
#wrapper tr {width: 100%;height: 50px;border: 1px solid blue; text-align: center;}
#wrapper tr th {width: 100%;height: 30px;border: 1px solid red; text-align: center;}
#wrapper tr td {width: 100%;height: 30px;border: 1px solid blue; text-align: center;}
	#login-box{width: 300px;margin: 0 auto;}
	#login tr {width : 100%}
</style>
</head>
<body>
	

	<table id ="wrapper">
		<tr style="height: 20%">
			<td colspan="5"><a href="#">HOME</a></td>

		</tr>
		
		<tr style="height: 200%">
			<td  colspan="5">
				
<!-- 	submit은 버튼 을 형성함
	text는 빈창을 생성하고 placeholder는 빈창에 미리보기기능
	  -->
				
				<form action="burgerking/main.jsp">
						<table id="Login-box" style="width: 300px; margin: 0 auto;">
						<tr style="height: 30px;">
							<td style= "width: 200px; height: 100%;" >
						
							<input style="width: 90%; height: 100%;" type="text" name="id" placeholder = "아이디" tabindex="1"/>
							
							</td>
							<td rowspan="2" style="width: 200px; height: 30px;" >
						
							<input style="width: 100%; height: 100%;" type="submit" value="로그인" tabindex="3"/>
							</td>
						</tr>
						<tr style="height: 30px;">
							<td style= "width: 100%; height:  100%;">
							
							<input style="width: 90%; hegiht: 100%;" type="text" name="pw" placeholder = "비밀번호" tabindex="2"/>
							
							</td>
							
						</tr>
					</table>
				</form>
			
			</td>
		</tr>
	</table>
				

</body>
</html>
