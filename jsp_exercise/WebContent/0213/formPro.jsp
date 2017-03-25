<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
    
       
    <jsp:useBean class="test.bean.Dto" id="dto" />
    <jsp:setProperty name="dto" property="*" />
    
 
    
    <font size="5">
    	id => <jsp:getProperty name="dto" property="id" /> <br />
     	pw => <jsp:getProperty name="dto" property="pw" /> <br />
    </font>