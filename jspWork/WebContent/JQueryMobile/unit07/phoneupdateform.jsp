<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.util.*" %>

<%
String pno = request.getParameter("pno");
List<String[]> phoneDb = (List<String[]>) session.getAttribute("phoneDb");
String[] phone = null;
for(String[] p : phoneDb) {
	if(p[0].equals(pno)) {
		phone = p;
		break;
	}
}
%>

<div id="phoneupdateform" data-role="page" data-theme="a">
	<script type="text/javascript">
		function phoneupdate() {
			var pno = "<%=pno%>";
			var pname = $("#pname").attr("value");
			var pcolor = $("#phoneupdateform input[name=pcolor]:checked").attr("value");
			var pimage = $("#pimage").attr("value");
			var pcompany = $("#pcompany").attr("value");
			var pprice = $("#pprice").attr("value");

			param = "pno=" + pno;
			param += "&pname="+encodeURI(pname);
			param += "&pimage="+pimage;
			param += "&pcolor="+encodeURI(pcolor);
			param += "&pcompany="+encodeURI(pcompany);
			param += "&pprice="+pprice;
			$.mobile.changePage("phoneupdate.jsp?" + param);
		}

		function selectphone(pimage) {
			$("#pimage").attr("value", pimage);
		}
	</script>

	<div data-role="header" data-position="fixed" data-theme="a">
		<h1>�� ����</h1>
		<a href="#" data-rel="back" data-icon="arrow-l">����</a>
		<a href="javascript:phoneupdate();" data-icon="arrow-r" data-iconpos="right">����</a>
	</div>  
	
	<div data-role="content">
		<form id="phoneupdateform" method="post" action="#">
			<div data-role="fieldcontain">
				<label for="pname">��ǰ��:</label>
				<input id="pname" type="text" name="pname" value="<%=phone[1]%>"/> 
			</div>

			<div data-role="fieldcontain">
				<label for="pimage">�̹���:</label>
				<input id="pimage" type="text" name="text" value="<%=phone[2]%>" readonly>
				<div data-role="collapsible" data-theme="b" data-content-theme="e">
					<h3>�̹��� ����</h3>
					<table style="width:100%">
						<tr><td>
							<%for(int i=1; i<=20; i++) {
									String pimage = null;
									if(i<10) {
										pimage = "phone0" + i + ".png";
									} else {
										pimage = "phone" + i + ".png";
									}%>
									<a href="javascript:selectphone('<%=pimage%>');">
										<img src="../image/<%=pimage%>" 
												style="width:30px; height:50px"/>
									</a>
							<%}%>
						</td></tr>
					</table>
				</div>
			</div>

			<div data-role="fieldcontain">
				<fieldset data-role="controlgroup" data-type="horizontal">
					<legend>����:</legend>
					<input id="radio1" type="radio" name="pcolor" value="����" 
							<%=(phone[5].equals("����"))?"checked":""%>/>
					<label for="radio1">������</label>
					<input id="radio2"  type="radio" name="pcolor" value="���"
							<%=(phone[5].equals("���"))?"checked":""%>/>
					<label for="radio2">�����</label>
				</fieldset>
			</div>

			<div data-role="fieldcontain">
				<label for="pcompany">������:</label>
				<input id="pcompany" type="text" name="pcompany" value="<%=phone[3]%>"/> 
			</div>

			<div data-role="fieldcontain">
				<label for="pprice">��ǰ��:</label>
				<input id="pprice" type="number" name="pprice" value="<%=phone[4]%>"/> 
			</div>
		</form>
	</div>

	<div data-role="footer" data-position="fixed" data-theme="a">
		<div data-role="navbar">
			<ul>
				<li><a href="#home" data-icon="home" 
							data-transition="slide" 
							data-direction="reverse">��Ȩ</a></li>
				<li><a href="phonelist.jsp?currentPage=1" 
							data-icon="grid"
							data-transition="slide" 
							data-direction="reverse">���ó��</a></li>
			</ul>
		</div>
	</div>
</div>
