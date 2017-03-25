package ex0220.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch11.logonex.LogonDBBean;
import ch11.logonex.LogonDataBean;
import board.action.CommandAction;

public class ModifyFormAction implements CommandAction{	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		HttpSession session = request.getSession();
	    String id = (String)session.getAttribute("memId");
	   
	    LogonDBBean manager = LogonDBBean.getInstance();
	    LogonDataBean c = manager.getMember(id);
	    
	    request.setAttribute("c", c);
	
		return "/0220ex/modifyForm.jsp";
	}
}
