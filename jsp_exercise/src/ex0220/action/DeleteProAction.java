package ex0220.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch11.logonex.LogonDBBean;
import board.action.CommandAction;

public class DeleteProAction implements CommandAction{	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("memId");
		String pw = request.getParameter("pw");
		
		LogonDBBean manager = LogonDBBean.getInstance();
		int check = manager.deleteMember(id, pw);
		request.setAttribute("check", check);
		if(check==1){
			session.invalidate();
		}
	
		return "/0220ex/deletePro.jsp";
	}

}
