package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/*
 *  ���ڵ� ���� �����
 *  1.Filter �������̽��� implements �Ѵ�.
 *  2.doFilter �޼ҵ带 ���� ���̵��Ѵ�.
 *  3.web.xml ���� ���Ͱ� �����ϵ��� �����Ѵ�.
 */
public class EncodingFilter implements Filter{

	@Override
	public void destroy() {}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("doFilter()�޼ҵ�");
		//���ڵ��� �ȵǾ� �ִٸ�
		if(request.getCharacterEncoding()==null){
			//�ѱ� ���ڵ� �����ϱ�
			request.setCharacterEncoding(encoding);
		}
		//���� ���� ü������ ��������� �ѱ��, ���̻� ���Ͱ� ���ٸ� ��û�������� ���������
		//�Ѿ��.
		chain.doFilter(request, response);
	}
	String encoding;
	@Override
	public void init(FilterConfig config) throws ServletException {
		System.out.println("init() �޼ҵ�");
		//xml ������ ���ǵ� init param���� �� �о����
		encoding=config.getInitParameter("encoding");
	}
	
}












