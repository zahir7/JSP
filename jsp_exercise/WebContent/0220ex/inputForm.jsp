<%@ page contentType="text/html; charset=euc-kr"%>
<%@ include file="/view/color.jsp"%>
<html>
<head>
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
    
    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.id.value) {
            alert("ID�� �Է��ϼ���");
            return false;
        }
        
        if(!userinput.pw.value ) {
            alert("��й�ȣ�� �Է��ϼ���");
            return false;
        }
        if(userinput.pw.value != userinput.pw2.value)
        {
            alert("��й�ȣ�� �����ϰ� �Է��ϼ���");
            return false;
        }
       
        if(!userinput.username.value) {
            alert("����� �̸��� �Է��ϼ���");
            return false;
        }
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
            return false;
        }
    }

    // ���̵� �ߺ� ���θ� �Ǵ�
    function openConfirmid(userinput) {
        // ���̵� �Է��ߴ��� �˻�
        if (userinput.id.value == "") {
            alert("���̵� �Է��ϼ���");
            return;
        }
        // url�� ����� �Է� id�� �����մϴ�.
        url = "/jsp/0220ex/confirmId.wo?id=" + userinput.id.value ;
        
        // ���ο� �����츦 ���ϴ�.
        open(url, "confirm", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>


<body>

<form method="post" action="/jsp/0220ex/inputPro.wo" name="userinput" onSubmit="return checkIt()">


    
    
 <title> ȸ������ </title>
 

<body bgcolor="#FFCCCC"></body>
 <table align="center" border="1" bgcolor="#CCE6FF" bordercolor="#336699" width="600" height="400">
 <caption><h3> ***ȸ������*** </h3></caption>


 <tr>
 <td align="center">���̵�</td>
 <td><input type="text" name="id">
<input type="button" name="confirm_id" value="ID�ߺ�Ȯ��" OnClick="openConfirmid(this.form)">
 </tr>

 <tr>
 <td align="center">��й�ȣ
 </td>
 <td><input type="password" name="pw" maxlength=20>
 </td>
 </tr>
 
 <tr>
 <td align="center">���Է�
 </td>
 <td><input type="password" name="pw2" maxlength=20>
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

<td><select size="1" name="phone1">
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
<td><input type="text" name="email1" />@
<input type="text" name="email2" />
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
<td colspan="2" align="center" bgcolor="<%=value_c%>"> 
          <input type="submit" name="confirm" value="��   ��" >
          <input type="reset" name="reset" value="�ٽ��Է�">
          <input type="button" value="���Ծ���" onclick="javascript:window.location='main.jsp'">
      </td>
</tr>

</font>
 </body>
 
</form>