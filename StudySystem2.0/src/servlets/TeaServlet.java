package servlets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.BaseServlet;
import domain.Teacher;
import service.TeaService;

public class TeaServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	// 教师登录功能
	public String teaLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取用户名
		String um = request.getParameter("userName");
		// 获取密码
		String up = request.getParameter("userPw");
		// 调用业务层登录功能，返回教师对象
		TeaService teaService = new TeaService();
		Teacher teacher = teaService.teaLogin(um, up);
		if (null != teacher) {
			// 如果返回的老师不为空，向session中放入老师信息，重定向到/tea/teaIndex.jsp
			request.getSession().setAttribute("tea", teacher);
			response.sendRedirect("/StudySystem2.0/tea/teaIndex.jsp");
			return null;
		} else {
			// 如果返回的老师为空，向request域对象放入提示信息，转发到/index.jsp
			request.setAttribute("msg", "密码有误");
			return "/index.jsp";
		}
	}

	// teaLogout
	public String teaLogout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取session，使其失效
		request.getSession().invalidate();
		// 重新定向到首页
		response.sendRedirect("/StudySystem2.0/index.jsp");
		return null;
	}

	// findMyInfoUI
	public String findMyInfoUI(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "/tea/userinfo/userinfo.jsp";
	}

	// updateTeacher
	public String updateTeacher(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String num = request.getParameter("teaNum");
		String name = request.getParameter("teaRealname");
		String sex = request.getParameter("teaSex");	
		String loginPwd = request.getParameter("loginPw");
		String teaId = request.getParameter("teaId");
		Teacher teacher=new Teacher();
		teacher.setTeaId(Integer.parseInt(teaId));
		teacher.setTeaNum(num);
		teacher.setTeaRealname(name);
		teacher.setTeaSex(sex);
		teacher.setLoginPw(loginPwd);

		TeaService teaService = new TeaService();
		teaService.updateTeacher(teacher);
		request.getSession().setAttribute("tea", teacher);
		return "/tea/userinfo/msg.jsp";
	}

}
