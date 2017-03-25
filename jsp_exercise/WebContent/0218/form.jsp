<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<form action = "formPro.jsp">
	
<body>
    
    
 <title> 회원가입 </title>
 


 <table align="center" border="1" width="600" height="400">
 <caption><h3> ***회원가입*** </h3></caption>

 <tr>
 <td align="center">아이디</td>
 <td><input type="text" name="id">
 <input type="button" value="ID 중복확인"></td>
 </tr>

 <tr>
 <td align="center">비밀번호
 </td>
 <td><input type="password" name="pw" maxlength=20>
 <input type="button" value="확인">
 </td>
 </tr>
 
 <tr>
 <td align="center">재입력
 </td>
 <td><input type="password" name="pw" maxlength=20>
 <input type="button" value="확인"></td>
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

<td><select size="1" name="phone"1>
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
<td align="center">E-mail 수신여부</td>
<td><input type="radio" name="emailox" value="예" checked>예
<input type="radio" name="emailox" value="아니요">아니요</td>
</tr>

<tr>
<td align="center" colspan="2"><input type="submit" value="확인">
<input type="reset" value="다시작성"></td>
</tr>

</font>
 </body>
 
</form>