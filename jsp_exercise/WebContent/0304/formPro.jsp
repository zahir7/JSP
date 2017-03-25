<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="dto" class="test.bean.Dto" />
<jsp:setProperty property="jsp" name="dto" />


<font size="7">
	표현 언어 => ${dto.msg}
	<jsp:getProperty property="msg" name="dto" />
</font>