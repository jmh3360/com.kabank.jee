<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kabank.jee.domain.LottoBean"%>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<%@ include file="../common/header.jsp"%>

<%@ include file="../common/nav.jsp"%>
<section>
<article>
<%!
	
	public int countRow(String money) {
		int count = 0;
		String res ="";
		LottoBean lotto = null;
		//count = (Integer.parseInt()>5000) ? 5 : Integer.parseInt(money)/1000;
		for(int k =0; k < count; k++) {
			lotto = new LottoBean();
			int[] t = createLotto();
			for(int j = 0; j<t.length;j++){
				res += String.valueOf(t[j]+"\n");
			}
		}
		return Integer.parseInt(res);
	}
	public List<LottoBean> createLottos(int count) {
	List<LottoBean> list = new ArrayList<>();
	return list;
	}
	public int[] createLotto() {
		int[] lotto = new int[6];
		for(int i =0; i < lotto.length; i++) {
			int num = (int) (Math.random()*45 + 1);
			boolean exist = false;
			for(int j = 0; j < lotto.length; j++) {
				if(num == lotto[j]){
					exist = true;
					break;
				}
			}
			if(exist){
				i--;
				continue;
			}else{
				lotto[i] = num;
			}
			}
		Arrays.sort(lotto);
		return lotto;
	}

%>
<%
%>
<%
	int count = countRow("5000");
	for(LottoBean lot : createLottos(count)){
		
	}
%>
	오늘 날짜
	 1 2 3 4 5 6
	 1 2 3 4 5 6
	 1 2 3 4 5 6
	 1 2 3 4 5 6
	 1 2 3 4 5 6
	
	</article>
</section>
<aside></aside>
<%@ include file="../common/footer.jsp"%>
	
</body>
</html>