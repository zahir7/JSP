<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "ch11.logonex.*" %>
    <%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<h2> 가입된 회원검색</h2>


 <c:forEach var="dto" items="${list}">
		 ${dto.id}
		${dto.name}
		${dto.reg} <br />
		</c:forEach>
		