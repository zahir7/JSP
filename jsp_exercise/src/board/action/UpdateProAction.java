package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDBBean;
import board.BoardDataBean;

public class UpdateProAction implements CommandAction {

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
    request.setCharacterEncoding("euc-kr");

    String pageNum = request.getParameter("pageNum");
    

	BoardDataBean article = new BoardDataBean();
	article.setNum(Integer.parseInt(request.getParameter("num")));
	article.setEmail(request.getParameter("email"));
	article.setWriter(request.getParameter("writer"));
	article.setSubject(request.getParameter("subject"));
	article.setContent(request.getParameter("content"));
	article.setPasswd(request.getParameter("passwd"));
	
	
	BoardDBBean dbPro = BoardDBBean.getInstance(); // BoardDBBean dbPro = new BoardDBBean()랑 같은 의미, private이기 때문에 이 방식으로 getInstance에 접근해서 instance를 리턴받음.
    int check = dbPro.updateArticle(article);
    
    request.setAttribute("pageNum", new Integer(pageNum));
    request.setAttribute("check", new Integer(check));
	
    
	return "/board/updatePro.jsp";
	} //  DBBean의 updateArticle 메서드 실행해서 
}
