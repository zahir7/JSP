<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/view/color.jspf"%>

<link href="style.css" rel="stylesheet" type="text/css">






<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr bgcolor="#FFCCCC"> 
    <td height="39"  align="center">
	  <font size="+1" ><b>회원정보가 수정되었습니다.</b></font></td>
  </tr>
  <tr>
    <td bgcolor="#CCE6FF" align="center"> 
      <p>입력하신 내용대로 수정이 완료되었습니다.</p>
    </td>
  </tr>
  <tr>
    <td bgcolor="${value_c}" align="center"> 
      <form>
	    <input type="button" value="메인으로" onclick="window.location='/jsp/0220ex/main.wo'">
      </form>
      5초후에 메인으로 이동합니다.<meta http-equiv="Refresh" content="5;url=/jsp/0220ex/main.wo" >
    </td>
  </tr>
</table>
</body>
</html>
