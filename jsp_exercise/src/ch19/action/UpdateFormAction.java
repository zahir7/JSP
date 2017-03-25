package ch19.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDataBean;
import board.BoardDBBean;

public class UpdateFormAction implements CommandAction {//�ۼ��� ��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response) throws Throwable {

        int num = Integer.parseInt(request.getParameter("num"));
        String pageNum = request.getParameter("pageNum");

        BoardDBBean dbPro = BoardDBBean.getInstance();
        BoardDataBean article =  dbPro.updateGetArticle(num);

		//�ش� �信�� ����� �Ӽ�
        request.setAttribute("pageNum", new Integer(pageNum));
        request.setAttribute("article", article);

        return "/ch19/updateForm.jsp";//�ش��
    }
}
