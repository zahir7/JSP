<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "ch11.logonex.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/view/color.jspf"%>

<html>
<head>
<title>ȸ����������</title>
<link href="style.css" rel="stylesheet" type="text/css">


<script language="JavaScript">
   <!-- 
    function checkIt() {
        var userinput = eval("document.userinput");
               
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
-->
</script>





<body bgcolor="#FFCCCC">
<form method="post" action="/jsp/0220ex/modifyPro.wo" name="userinput" onsubmit="return checkIt()">

  <table width="600" height="400" bgcolor="#CCE6FF" border="1" cellspacing="0" cellpadding="3"  align="center">
    <tr > 
      <td  colspan="2" height="39" bgcolor="#336699" align="center">
	     <font size="+1" ><b>ȸ�� ��������</b></font></td>
    </tr>
    <tr>
      <td colspan="2" class="normal" align="center">ȸ���� ������ �����մϴ�.</td>
    </tr>
    
     <tr> 
      <td bgcolor="${value_c}"><b>���̵� �Է�</b></td>
      <td  bgcolor="${value_c}">&nbsp;</td>
    <tr>  

    <tr> 
      <td> ����� ID</td>
      <td>${c.id}</td>
    </tr>
    
     <tr> 
      <td> ��й�ȣ</td>
      <td> 
        <input type="password" name="pw" size="10" maxlength="10" value="${c.pw}">
      </td>
    <tr>  
    <tr> 
      <td bgcolor="${value_c}"><b>�������� �Է�</b></td>
      <td bgcolor="${value_c}">&nbsp;</td>
    <tr>  
    <tr> 
      <td>����� �̸�</td>
      <td> 
        <input type="text" name="name" size="15" maxlength="20" value="${c.name}">
      </td>
    </tr>
    
    <tr> 
      <td>�ֹε�Ϲ�ȣ</td>
      <td> 
        ${c.jumin1}-${c.jumin2}
      </td>
    </tr>
    
    <tr> 
      <td>�ּ�</td>
      <td> 
        <TEXTAREA name="addr" rows="3" cols="50" >  ${c.addr}  </TEXTAREA>
  
  
      </td>
    </tr>
    
    <tr> 
      <td>�������</td>
      <td> 
        ${c.birth1} ${c.birth2}
      </td>
    </tr>
    
    
    <tr> 
      <td>��ȭ��ȣ</td>
      <td> 
        <select size="1" name="phone1">
		<option selected>  ${c.phone1}
		</option>
		<option>010</option>
		<option>011</option>
		<option>016</option>
		<option>018</option>
		</select>
     
        <input type="text" name="phone2" size="15" maxlength="20" value="${c.phone2}">
      
        <input type="text" name="phone3" size="15" maxlength="20" value="${c.phone3}">
      </td>
      
    </tr>
    
    <tr> 
      <td>����</td>
      <td> 
        ${c.gender}
      </td>
    </tr>
    
   <tr> 
      <td>E-Mail</td>
      <td>
      	<c:if test="${c.email1 == null }">	    
		  <input type="text" name="email1" size="20" maxlength="30" >		
	    </c:if>
	    
	    <c:if test="${c.email1 != null }">
          <input type="text" name="email1" size="20" maxlength="30" value="${c.email1}">	
		</c:if>
          @
        <c:if test="${c.email2 == null }">    
		  <input type="text" name="email2" size="20" maxlength="30" >		
		</c:if>
		<c:if test="${c.email2 !=null }">
          <input type="text" name="email2" size="20" maxlength="30" value="${c.email2}">	
		</c:if>
     
		<select size="1" name="email3">
		<option>naver.com</option>
		<option>hanmail.net</option>
		<option>google.com</option>
		<option>nate.com</option>
		</select></td>
		</tr>
    
    
    
       <tr> 
      <td   width="200">Email ���ſ���</td>
      <td  width="400"> 
        <input type="radio" name="emailox" size="15" maxlength="20" value="${c.emailox}">
       <input type="radio" name="emailox" size="15" maxlength="20" value="${c.emailox}">
      </td>
        
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
       <input type="submit" name="modify" value="��   ��" >
       <input type="button" value="��  ��" onclick="javascript:window.location='/jsp/0220ex/main.wo">      
      </td>
    </tr>
  </table>
</form>
</body>
</html>