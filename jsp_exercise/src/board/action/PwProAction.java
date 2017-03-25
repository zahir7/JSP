package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDBBean;

public class PwProAction implements CommandAction{


public String requestPro(HttpServletRequest request,
		HttpServletResponse response) throws Throwable {
	


request.setCharacterEncoding("euc-kr");


  int num = Integer.parseInt(request.getParameter("num"));  
  String pageNum = request.getParameter("pageNum");
  String passwd = request.getParameter("passwd");

  BoardDBBean dbPro = BoardDBBean.getInstance();
  int check = dbPro.pwArticle(num, passwd);

  request.setAttribute("num", num);
  request.setAttribute("pageNum", new Integer(pageNum));
  request.setAttribute("check", new Integer(check));
	
	return "/board/pwPro.jsp";
}
}