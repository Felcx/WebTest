package com.phy.greenport.filter;

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

public class ModuleFilter implements Filter {
	public ModuleFilter() {
	}  
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws ServletException, IOException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		String path = req.getContextPath();  
		String basePath = req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+path;
		System.out.println("getServerName:"+req.getServerName());
		String url = req.getServletPath();
		System.out.println("请求的url:"+url);		
		String loginStr=url.split("!")[0];
		String contextName = req.getContextPath();
		System.out.println(contextName);
		chain.doFilter(req, res);
		}
//			if (ub == null) {
//				request.setAttribute("msg", "�û���¼��Ϣ��ʧ�������µ�½��");
//				request.setAttribute("url", "login.do?method=login");
//				res.sendRedirect((new StringBuilder(String
//								.valueOf(contextName))).append("/jsp/errors/errorReutrn.jsp")
//								.toString());
//			}else if(req.getParameter("pageUser")!=null && !req.getParameter("pageUser").equals("") && !req.getParameter("pageUser").equals(ub.getUser_id())){
//				req.setAttribute("msg", "��ǰ����ҳ���û�ͬ��½�û����������µ�½��");
//				res.sendRedirect((new StringBuilder(String
//								.valueOf(contextName))).append("/jsp/errors/alertMsg.jsp")
//								.toString());
//			}else {
//				chain.doFilter(req, res);
//			}
//		} catch (Exception e) {
//			chain.doFilter(req, res);
//			return;
//		}
	//}

	public boolean isUnusualCondition(HttpServletRequest req) {
		return true;
	}

	public void init(FilterConfig filterconfig) throws ServletException {
	}

	public void destroy() {
	}
}
