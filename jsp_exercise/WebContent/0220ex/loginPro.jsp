<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${check==1 }">
	<meta http-equiv="Refresh" content="0;url=/jsp/0220ex/main.wo" >	
</c:if>
<c:if test="${check==0 }">
	<script> 
		alert("��й�ȣ�� ���� �ʽ��ϴ�.");
		history.go(-1);
	</script>
</c:if>

<c:if test="${check == -1}">
	<script>
	  alert("���̵� ���� �ʽ��ϴ�..");
	  history.go(-1);	
	</script>
</c:if>