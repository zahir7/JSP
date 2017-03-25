package ex0220.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch11.logonex.LogonDBBean;
import board.action.CommandAction;

public class ConfirmIdAction implements CommandAction{	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		LogonDBBean manager = LogonDBBean.getInstance();
	    int check= manager.confirmId(id);
	    
	    request.setAttribute("id",	id);
	    request.setAttribute("check", check);
	    
		return "/0220ex/confirmId.jsp";
	}

}
