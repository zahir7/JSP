<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




  
<c:if test="${check==1}">
	  <meta http-equiv="Refresh" content="0;url=/jsp/board/list.wo?pageNum=${pageNum}" > <!-- 0���Ŀ� list.jsp�� �Ѿ�� ���� -->
</c:if>
<c:if test="${check==0}">
��й�ȣ�� ���� �ʽ��ϴ�.
<br>
<a href ="javasctipt:history.go(-1)">[�ۻ��� ������ ���ư���]</a>
</c:if>