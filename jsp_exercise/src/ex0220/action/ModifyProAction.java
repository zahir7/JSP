package ex0220.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch11.logonex.LogonDBBean;
import ch11.logonex.LogonDataBean;
import board.action.CommandAction;

public class ModifyProAction implements CommandAction{	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		
				
		LogonDataBean member = new LogonDataBean();		
		member.setId(id);		
		member.setPw(request.getParameter("pw"));
		member.setName(request.getParameter("name"));
		member.setJumin1(request.getParameter("jumin1"));
		member.setJumin2(request.getParameter("jumin2"));
		member.setAddr(request.getParameter("addr"));
		member.setBirth1(request.getParameter("birth1"));
		member.setBirth2(request.getParameter("birth2"));
		member.setPhone1(request.getParameter("phone1"));
		member.setPhone2(request.getParameter("phone2"));
		member.setPhone3(request.getParameter("phone3"));
		member.setGender(request.getParameter("gender"));
		member.setEmail1(request.getParameter("email1"));
		member.setEmail2(request.getParameter("email2"));		
		member.setEmailox(request.getParameter("emailox"));
		
		LogonDBBean manager = LogonDBBean.getInstance();
	 	manager.updateMember(member);		
				 
		return "/0220ex/modifyPro.jsp";
	}

}
