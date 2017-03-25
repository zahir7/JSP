<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"
		uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="now"
		value="<%= new java.util.Date() %>" />
<c:out value="${now}" /> <br>
date : <fmt:formatDate value="${now}" type="date" /> <br>
time : <fmt:formatDate value="${now}" type="time" /> <br>
both : <fmt:formatDate value="${now}" type="both" />