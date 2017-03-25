package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PwAction implements CommandAction{

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		  
		  
		System.out.println(num);
		  
		request.setAttribute("num", num);
		request.setAttribute("pageNum", new Integer(pageNum));
		  
		return "/board/pw.jsp";
	}

}
