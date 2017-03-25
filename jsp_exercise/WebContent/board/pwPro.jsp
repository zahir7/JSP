<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<c:if test="${check==1}">
  <meta http-equiv="Refresh" content="0;url=/jsp/board/content.wo?num=${num}&pageNum=${pageNum}" > <!-- 0초후에 list.jsp로 넘어가게 해줌 -->
</c:if>

<c:if test="${check==0}">
비밀번호가 맞지 않습니다.
<br>
<a href="javascript:history.go(-1)">[글수정 폼으로 돌아가기]</a>
</c:if>
 