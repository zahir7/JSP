<%@ page language="java" contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/view/color.jspf"%>
<html>
<head><title>ȸ��Ż��</title>
<link href="style.css" rel="stylesheet" type="text/css">

   <script language="javascript">
     <!--
       function begin(){
         document.myform.pw.focus();
       }

       function checkIt(){
		  if(!document.myform.pw.value){
           alert("��й�ȣ�� �Է����� �����̽��ϴ�.");
           document.myform.pw.focus();
           return false;
         }
	   }   
     -->
   </script>
</head>
<BODY onload="begin()" bgcolor="${bodyback_c}">
<form name="myform" action="/jsp/0220ex/deletePro.wo" method="post" onSubmit="return checkIt()">
<TABLE cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >
  
  <TR height="30">
    <TD colspan="2" align="middle" bgcolor="${title_c}">
	  <font size="+1" ><b>ȸ�� Ż��</b></font></TD></TR>
  
  <TR height="30">
    <TD width="110" bgcolor="${value_c}" align=center>��й�ȣ</TD>
    <TD width="150" align=center>
      <INPUT type=password name="pw"  size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD colspan="2" align="middle" bgcolor="${value_c}" >
      <INPUT type=submit value="ȸ��Ż��"> 
      <input type="button" value="��  ��" onclick="javascript:window.location='/jsp/0220ex/main.wo'"></TD></TR>
</TABLE>
</form>
</BODY>
</HTML>
