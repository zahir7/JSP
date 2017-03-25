package board.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch11.logonex.LogonDBBean;
import ch11.logonex.LogonDataBean;

public class MemberAction implements CommandAction{

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		
		LogonDBBean dao = LogonDBBean.getInstance();
		List<LogonDataBean> list = dao.getMember();
		

		return "/board/member.jsp";
	}

}
