<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/view/color.jspf"%>

<link href="style.css" rel="stylesheet" type="text/css">






<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr bgcolor="#FFCCCC"> 
    <td height="39"  align="center">
	  <font size="+1" ><b>ȸ�������� �����Ǿ����ϴ�.</b></font></td>
  </tr>
  <tr>
    <td bgcolor="#CCE6FF" align="center"> 
      <p>�Է��Ͻ� ������ ������ �Ϸ�Ǿ����ϴ�.</p>
    </td>
  </tr>
  <tr>
    <td bgcolor="${value_c}" align="center"> 
      <form>
	    <input type="button" value="��������" onclick="window.location='/jsp/0220ex/main.wo'">
      </form>
      5���Ŀ� �������� �̵��մϴ�.<meta http-equiv="Refresh" content="5;url=/jsp/0220ex/main.wo" >
    </td>
  </tr>
</table>
</body>
</html>
