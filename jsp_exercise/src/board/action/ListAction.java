package board.action;

import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDBBean;


public class ListAction implements CommandAction {

	 public String requestPro(HttpServletRequest request,
		        HttpServletResponse response)throws Throwable {
		 
		 
    int pageSize = 10;  // pageSize는 한 화면에 보이는 글의 개수를 10개로 지정해줌.
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm"); // 날짜표현 방식을 yyyy-mm-dd HH:mm로 표시해줌.

    String pageNum = request.getParameter("pageNum");  // pageNum은 주소. 화면에 표시할 페이지 번호를 String으로 받아옴. 첫페이지는 받아오는 값이 없기때문에 null로 들어옴.
    if (pageNum == null) {  // 페이지번호가 없으면 pageNum을 1로
        pageNum = "1"; 
    }

    int currentPage = Integer.parseInt(pageNum); // pageNum의 String 값을 int로 형변환
    int startRow = (currentPage - 1) * pageSize + 1;  // 한 페이지의 시작 글 레코드번호,
    int endRow = currentPage * pageSize; // 한 페이지의 마지막 글레코드번호   /  10개씩 끊어서 첫번째 페이지의  startrow=1 endrow=10
    int count = 0; // 전체글의 수 
    int number=0; // 각 페이지에서 맨위 게시글 번호 
    String writer= request.getParameter("writer");
    if(writer==null || writer==""){
    	writer="%";
    }
    

    List articleList = null;  // 글 목록을 저장하기 위해서 list를 만듬 
    BoardDBBean dbPro = BoardDBBean.getInstance(); // BoardDBBean dbPro = new BoardDBBean()랑 같은 의미, private이기 때문에 이 방식으로 getInstance에 접근해서 instance를 리턴받음.
    count = dbPro.getArticleCount(writer);  // DBbean의 getArticleCount()메소드를 실행해서 첫번째 컬럼을 x로 받아와서 전체 글 수를 얻어냄.
    if (count > 0) { // 게시글이 있으면 
        articleList = dbPro.getArticles(startRow, endRow, writer);  // getArticles()메소드를 통해서 리스트에 현재 페이지에 해당하는 글목록 다 넣어줌.
    }

	number=count-(currentPage-1)*pageSize; // 글 목록에 표시할 글번호
	
	  request.setAttribute("currentPage", new Integer(currentPage));
      request.setAttribute("startRow", new Integer(startRow));
      request.setAttribute("endRow", new Integer(endRow));
      request.setAttribute("count", new Integer(count));
      request.setAttribute("pageSize", new Integer(pageSize));
		request.setAttribute("number", new Integer(number));
      request.setAttribute("articleList", articleList);
      
      return "/board/list.jsp";//해당 뷰
  }
}

