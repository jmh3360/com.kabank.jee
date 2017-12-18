<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../common/top.jsp"%>
<%@ include file="../common/navigation.jsp"%>

						<div style="width: 300px; height: 200px; margin: 0 auto;">
					<p>햄버거 : ￦5,500 <br /> 콜라 : ￦ 1,000 <br /> 감자칩 : ￦1,000 <br /> 커피 : ￦900 <br /></p>

					<form action="result.jsp">
						
						
						<input type="text" name="menu" placeholder="메뉴" /><br />
						<input type="text" name="count" placeholder="수량" /><br />
			<!-- 바뀔수 있는 속성값을 property라 하고 바뀔 수 없는 속성 값을 attribute라 한다.   -->
						<input type="hidden" name="hamburger" value="5500" /> 
						<input type="hidden" name="coke" value="1000" />
						<input type="hidden" name="chip" value="1000" />
						<input type="hidden" name="coffee" value="900" />
						<input type="submit" value="전송" />
						
						
		<!-- 				
	submit은 버튼 을 형성함
	text는 빈창을 생성하고 placeholder는 빈창에 미리보기기능
	  -->
					</form>
				</div> 
<%@ include file="../common/footer.jsp"%>