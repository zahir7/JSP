<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<body>
<h2>Request���尴ü ����1</h2>
<FORM METHOD=POST ACTION="ex.jsp">
 �̸� : <INPUT TYPE="text" NAME="name"><br>
 ���� : <INPUT TYPE="text" NAME="age"><br>
 ���� : ���� <INPUT  TYPE="radio" NAME="gender"  VALUE="m" checked>
       ���� <INPUT TYPE="radio" NAME="gender" VALUE="f"><br>
 ��� : <SELECT NAME="hobby" >
			<OPTION SELECTED VALUE="���ڱ�">���ڱ�</OPTION>
			<OPTION VALUE="TV��û">TV��û</OPTION>
			<OPTION VALUE="��ȭ����">��ȭ����</OPTION>
			<OPTION VALUE="����">����</OPTION>
			<OPTION VALUE="���">���</OPTION>
		</SELECT><br>
<INPUT TYPE="submit" value="������">
</FORM>
</body>
</html>