<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.util.*" %>

<%
List<String[]> phoneDb = (List<String[]>) session.getAttribute("phoneDb");
if(phoneDb == null) {
	phoneDb = new ArrayList<String[]>();
	phoneDb.add(new String[] {
		"p1", "������ A", "phone01.png", "�Ｚ", "600000", "����"
	});
	phoneDb.add(new String[] {
		"p2", "��Ƽ�ӽ� ��", "phone02.png", "����", "500000", "���"
	});
	phoneDb.add(new String[] {
		"p3", "������ S", "phone03.png", "�Ｚ", "700000", "����"
	});
	phoneDb.add(new String[] {
		"p4", "������ S2", "phone04.png", "�Ｚ", "800000", "���"
	});
	session.setAttribute("phoneDb", phoneDb);
}
%>

<div id="phonelist" data-role="page">
	<div data-role="header" data-position="fixed">
		<h1>�� ���</h1>
	</div>  
	
	<div data-role="content">
		<ul data-role="listview">
			<%for(String[] phone : phoneDb) {%>
					<li>
						<a href="03_phonedetail.jsp?pno=<%=phone[0]%>">
							<table>
								<tr>
									<td style="padding-right: 5px">
										<img src="../image/<%=phone[2]%>" 
												style="width:30px; height:50px"/>
									</td>
									<td style="padding-left: 5px"><%=phone[1]%></td>
								</tr>
							</table>
						</a>
					</li>
			<%}%>
		</ul>
    </div>

	<div data-role="footer" data-position="fixed">
    	<div data-role="navbar">
    		<ul>
				<li><a href="#home" data-icon="home" 
						data-transition="slide" data-direction="reverse">��Ȩ</a></li>
			</ul>
		</div>
    </div>
</div>