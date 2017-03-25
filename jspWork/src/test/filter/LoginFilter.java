package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * �α����� �ߴ��� ���ߴ��� �˻��ϴ� ���� ��ü�����
 */
public class LoginFilter implements Filter{

	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//�ڽİ�ü�� ����ȯ �Ѵ���
		HttpServletRequest httpRequest=(HttpServletRequest)request;
		//���� ��ü�� ���´�.
		HttpSession session=httpRequest.getSession();
		//�α��� �ߴ��� �ƴ����� ���� ����
		boolean isLogin=false;
		if(session!=null){
			//���ǿ��� id ��� Ű���� �о�� ����.
			String id=(String)session.getAttribute("id");
			//���� id ���� null �� �ƴ϶�� �α����� �����̴�.
			if(id!=null)isLogin=true;
		}
		if(isLogin){
			//�α��� �� ��쿡�� ��û�� �۾��� ����Ѵ�.
			chain.doFilter(request, response);
		}else{
			//�α��� ���� ���� ���
			//ServletResponse ��ü�� �ڽ� ��ü�� ����ȯ �Ѵ���
			HttpServletResponse httpResponse=(HttpServletResponse)response;
			//�ȳ������� Ȥ�� login �������� ���� �̵���Ų��.
			httpResponse.sendRedirect("/Day05_Filter/login/loginForm.html");
		}
	}
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
}













