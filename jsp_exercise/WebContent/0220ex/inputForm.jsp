<%@ page contentType="text/html; charset=euc-kr"%>
<%@ include file="/view/color.jsp"%>
<html>
<head>
<title>회원가입</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
    
    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.id.value) {
            alert("ID를 입력하세요");
            return false;
        }
        
        if(!userinput.pw.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
        if(userinput.pw.value != userinput.pw2.value)
        {
            alert("비밀번호를 동일하게 입력하세요");
            return false;
        }
       
        if(!userinput.username.value) {
            alert("사용자 이름을 입력하세요");
            return false;
        }
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("주민등록번호를 입력하세요");
            return false;
        }
    }

    // 아이디 중복 여부를 판단
    function openConfirmid(userinput) {
        // 아이디를 입력했는지 검사
        if (userinput.id.value == "") {
            alert("아이디를 입력하세요");
            return;
        }
        // url과 사용자 입력 id를 조합합니다.
        url = "/jsp/0220ex/confirmId.wo?id=" + userinput.id.value ;
        
        // 새로운 윈도우를 엽니다.
        open(url, "confirm", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>


<body>

<form method="post" action="/jsp/0220ex/inputPro.wo" name="userinput" onSubmit="return checkIt()">


    
    
 <title> 회원가입 </title>
 

<body bgcolor="#FFCCCC"></body>
 <table align="center" border="1" bgcolor="#CCE6FF" bordercolor="#336699" width="600" height="400">
 <caption><h3> ***회원가입*** </h3></caption>


 <tr>
 <td align="center">아이디</td>
 <td><input type="text" name="id">
<input type="button" name="confirm_id" value="ID중복확인" OnClick="openConfirmid(this.form)">
 </tr>

 <tr>
 <td align="center">비밀번호
 </td>
 <td><input type="password" name="pw" maxlength=20>
 </td>
 </tr>
 
 <tr>
 <td align="center">재입력
 </td>
 <td><input type="password" name="pw2" maxlength=20>
 </tr>

 <tr>
 <td align="center">성명</td>
<td><input type="text" name="name" size="10"></td>
 </tr>

<tr>
<td align="center">주민등록번호</td>
<td><input type="text" name="jumin1" size="6" maxlength="6"> -
<input type="password" name="jumin2" size=""7 maxlength="7"></td>
</tr>
 
<tr>
<td align="center">주소</td>
<td><TEXTAREA name="addr" rows="3" cols="50"> </TEXTAREA><BR>
</td>
</tr>

<tr>
<td align="center">생년월일</td>
<td><input type="radio" name="birth1" value="양력">양력
<input type="radio" name="birth1" value="음력">음력
<input type="text" name="birth2" size="10"> 예)1991/02/15
</td>
</tr>

<tr>
<td align="center">전화번호</td>

<td><select size="1" name="phone1">
<option>010</option>
<option>011</option>
<option>016</option>
<option>018</option>
</select>
<input type="text" name="phone2" size="5"> - <input type="text" name="phone3" size="5"> </td>
</tr>

</tr>
<td align="center">성별</td>
<td><input type="radio" name="gender" value="남자" >남자
<input type="radio" name="gender" value="여자">여자</td>
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
<td align="center">E-mail 수신여부</td>
<td><input type="radio" name="emailox" value="예" checked>예
<input type="radio" name="emailox" value="아니요">아니요</td>
</tr>

<tr>
<td colspan="2" align="center" bgcolor="<%=value_c%>"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
          <input type="button" value="가입안함" onclick="javascript:window.location='main.jsp'">
      </td>
</tr>

</font>
 </body>
 
</form>