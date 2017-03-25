package board.action;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDBBean;
import board.BoardDataBean;

public class ContentAction implements CommandAction{

	public String requestPro(HttpServletRequest request,
		HttpServletResponse response) throws Throwable {
	

	int num = Integer.parseInt(request.getParameter("num")); 
	System.out.println(num);
	String pageNum = request.getParameter("pageNum");

	SimpleDateFormat sdf = 
	     new SimpleDateFormat("yyyy-MM-dd HH:mm");

	
	   BoardDBBean dbPro = BoardDBBean.getInstance();
	   BoardDataBean article =  dbPro.getArticle(num);
	   
	   System.out.println(article.getContent());
	   
	
	

		  int ref=article.getRef();
		  int re_step=article.getRe_step();
		  int re_level=article.getRe_level();
		  
		  request.setAttribute("num", new Integer(num));
		  request.setAttribute("pageNum", new Integer(pageNum));
		  request.setAttribute("article", article);

		  return "/board/content.jsp";
	}
}