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
		 
		 
    int pageSize = 10;  // pageSize�� �� ȭ�鿡 ���̴� ���� ������ 10���� ��������.
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm"); // ��¥ǥ�� ����� yyyy-mm-dd HH:mm�� ǥ������.

    String pageNum = request.getParameter("pageNum");  // pageNum�� �ּ�. ȭ�鿡 ǥ���� ������ ��ȣ�� String���� �޾ƿ�. ù�������� �޾ƿ��� ���� ���⶧���� null�� ����.
    if (pageNum == null) {  // ��������ȣ�� ������ pageNum�� 1��
        pageNum = "1"; 
    }

    int currentPage = Integer.parseInt(pageNum); // pageNum�� String ���� int�� ����ȯ
    int startRow = (currentPage - 1) * pageSize + 1;  // �� �������� ���� �� ���ڵ��ȣ,
    int endRow = currentPage * pageSize; // �� �������� ������ �۷��ڵ��ȣ   /  10���� ��� ù��° ��������  startrow=1 endrow=10
    int count = 0; // ��ü���� �� 
    int number=0; // �� ���������� ���� �Խñ� ��ȣ 
    String writer= request.getParameter("writer");
    if(writer==null || writer==""){
    	writer="%";
    }
    

    List articleList = null;  // �� ����� �����ϱ� ���ؼ� list�� ���� 
    BoardDBBean dbPro = BoardDBBean.getInstance(); // BoardDBBean dbPro = new BoardDBBean()�� ���� �ǹ�, private�̱� ������ �� ������� getInstance�� �����ؼ� instance�� ���Ϲ���.
    count = dbPro.getArticleCount(writer);  // DBbean�� getArticleCount()�޼ҵ带 �����ؼ� ù��° �÷��� x�� �޾ƿͼ� ��ü �� ���� ��.
    if (count > 0) { // �Խñ��� ������ 
        articleList = dbPro.getArticles(startRow, endRow, writer);  // getArticles()�޼ҵ带 ���ؼ� ����Ʈ�� ���� �������� �ش��ϴ� �۸�� �� �־���.
    }

	number=count-(currentPage-1)*pageSize; // �� ��Ͽ� ǥ���� �۹�ȣ
	
	  request.setAttribute("currentPage", new Integer(currentPage));
      request.setAttribute("startRow", new Integer(startRow));
      request.setAttribute("endRow", new Integer(endRow));
      request.setAttribute("count", new Integer(count));
      request.setAttribute("pageSize", new Integer(pageSize));
		request.setAttribute("number", new Integer(number));
      request.setAttribute("articleList", articleList);
      
      return "/board/list.jsp";//�ش� ��
  }
}

