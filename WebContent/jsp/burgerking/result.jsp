<%@page import="com.sun.xml.internal.ws.api.ha.StickyFeature"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<jsp:useBean id="hamburger" class="com.kabank.jee.domain.BurgerkingBean" scope="request" /> 
<jsp:useBean id="coke" class="com.kabank.jee.domain.BurgerkingBean" scope="request" /> 
<jsp:useBean id="chip" class="com.kabank.jee.domain.BurgerkingBean" scope="request" /> 
<jsp:useBean id="coffee" class="com.kabank.jee.domain.BurgerkingBean" scope="request" /> 
<jsp:useBean id="salad" class="com.kabank.jee.domain.BurgerkingBean" scope="request" /> 
<jsp:useBean id="bagel" class="com.kabank.jee.domain.BurgerkingBean" scope="request" /> 
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.BurgerkingBean" %>

<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<section>
<article>
<%@ include file ="../common/header.jsp" %>
<%@ include file="../common/nav.jsp"%>
		<%
	/* 
						<input type="hidden" name="hamburger" value="5500" /> 
						<input type="hidden" name="coke" value="1000" />
						<input type="hidden" name="chip" value="1000" />
						<input type="hidden" name="coffee" value="900" />
						<input type="hidden" name="bagel" value="900" />
						<input type="hidden" name="salads" value="900" />
						<input type="submit" value="전송" style="margin-right: 50px;" />
	*/
	
	
	//메뉴 가격
	String hamburgerPrice = request.getParameter("hamburger");
	String cokePrice = request.getParameter("coke");
	String chipPrice = request.getParameter("chip");
	String coffeePrice = request.getParameter("coffee");
	String bagelPrice = request.getParameter("bagel");
	String saladPrice = request.getParameter("salad");
	//메뉴 갯수
	String hamburgerCount = request.getParameter("hamburger-count");
	String cokeCount = request.getParameter("coke-count");
	String chipCount = request.getParameter("chip-count");
	String coffeeCount = request.getParameter("coffee-count");
	String bagelCount = request.getParameter("bagel-count");
	String saladCount = request.getParameter("salad-count");
	//take-out
	String place = request.getParameter("place");
	//total menu
	String[] menu = request.getParameterValues("menu");
	
	hamburger.setMenu("햄버거");
	hamburger.setPrice(hamburgerPrice);
	hamburger.setCount(hamburgerCount);
	
	coke.setMenu("콜라");
	coke.setPrice(cokePrice);
	coke.setCount(cokeCount);
	
	chip.setMenu("감자칩");
	chip.setPrice(chipPrice);
	chip.setCount(chipCount);
	
	coffee.setMenu("커피");
	coffee.setPrice(coffeePrice);
	coffee.setCount(coffeeCount);
	
	salad.setMenu("사라다");
	salad.setPrice(saladPrice);
	salad.setCount(saladCount);
	
	bagel.setMenu("베이글");
	bagel.setPrice(bagelPrice);
	bagel.setCount(bagelCount);
	

	List<BurgerkingBean> list = new ArrayList<>();
	list.add(hamburger);
	list.add(coffee);
	list.add(coke);
	list.add(salad);
	list.add(chip);
	list.add(bagel);
	
	
			int total  = 0;
			int price = 0;
			%>
			<%=place %> 
<p>-------------------------------------------------------------------------------</p> 
			<%
	for (BurgerkingBean s : list) {
	%>
	<%
		if(s.getCount()!=""){
			price = Integer.parseInt(s.getCount())  * Integer.parseInt(s.getPrice()) ;
				total += price;
		%>
		<div style="text-align: left 100px">
		주문한 품목<%=s%> <%=price %>원 <br />
		</div>
	<%
			}
		}
	%>

<p>--------------------------------------------------------------------------------</p> 
 총 결제 금액 : <%=total %>원
</article>
</section>
<aside></aside>
<%@ include file="../common/footer.jsp"%>
</body>
<script src="../../js/burgerkingResult.js"></script>
</html>