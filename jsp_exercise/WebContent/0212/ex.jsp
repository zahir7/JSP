<%@ page contentType="text/html;charset=euc-kr"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<h2>Request���尴ü ����1</h2>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");

	
	if(gender.equals("m")){
	     gender = "����";
	}else{
	     gender = "����";
	} 
%>


<%=name%> ���� ������ ������ �����ϴ�.<p>
���� : <%=age%><p>
���� : <%=gender%><p>
��� : <%=hobby%>