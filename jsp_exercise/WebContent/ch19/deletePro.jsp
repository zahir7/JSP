<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${check==1}"> 
	<meta http-equiv="Refresh" content="0;url=/jsp/ch19/list.do?pageNum=${pageNum}" >
</c:if>
<c:if test="${check==0}"> 
��й�ȣ�� �ٸ��ϴ�.
<br>
<a href="javascript:history.go(-1)">[�ۻ��� ������ ���ư���]</a>
</c:if>