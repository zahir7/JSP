<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<form action = "formPro.jsp">
	
<body>
    
    
 <title> ȸ������ </title>
 


 <table align="center" border="1" width="600" height="400">
 <caption><h3> ***ȸ������*** </h3></caption>

 <tr>
 <td align="center">���̵�</td>
 <td><input type="text" name="id">
 <input type="button" value="ID �ߺ�Ȯ��"></td>
 </tr>

 <tr>
 <td align="center">��й�ȣ
 </td>
 <td><input type="password" name="pw" maxlength=20>
 <input type="button" value="Ȯ��">
 </td>
 </tr>
 
 <tr>
 <td align="center">���Է�
 </td>
 <td><input type="password" name="pw" maxlength=20>
 <input type="button" value="Ȯ��"></td>
 </tr>

 <tr>
 <td align="center">����</td>
<td><input type="text" name="name" size="10"></td>
 </tr>

<tr>
<td align="center">�ֹε�Ϲ�ȣ</td>
<td><input type="text" name="jumin1" size="6" maxlength="6"> -
<input type="password" name="jumin2" size=""7 maxlength="7"></td>
</tr>
 
<tr>
<td align="center">�ּ�</td>
<td><TEXTAREA name="addr" rows="3" cols="50"> </TEXTAREA><BR>
</td>
</tr>

<tr>
<td align="center">�������</td>
<td><input type="radio" name="birth1" value="���">���
<input type="radio" name="birth1" value="����">����
<input type="text" name="birth2" size="10"> ��)1991/02/15
</td>
</tr>

<tr>
<td align="center">��ȭ��ȣ</td>

<td><select size="1" name="phone"1>
<option>010</option>
<option>011</option>
<option>016</option>
<option>018</option>
</select>
<input type="text" name="phone2" size="5"> - <input type="text" name="phone3" size="5"> </td>
</tr>

</tr>
<td align="center">����</td>
<td><input type="radio" name="gender" value="����" >����
<input type="radio" name="gender" value="����">����</td>
</tr>

<tr>
<td align="center">E-mail</td>
<td><input type="text" name="email1">@
<input type="text" name="email2">
<select size="1" name="email3">
<option>naver.com</option>
<option>hanmail.net</option>
<option>google.com</option>
<option>nate.com</option>
</select></td>
</tr>

<tr>
<td align="center">E-mail ���ſ���</td>
<td><input type="radio" name="emailox" value="��" checked>��
<input type="radio" name="emailox" value="�ƴϿ�">�ƴϿ�</td>
</tr>

<tr>
<td align="center" colspan="2"><input type="submit" value="Ȯ��">
<input type="reset" value="�ٽ��ۼ�"></td>
</tr>

</font>
 </body>
 
</form>