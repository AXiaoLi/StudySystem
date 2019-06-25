package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import base.BaseServlet;
import domain.Student;
import service.StuService;
import service.TeaService;

public class StuServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	// 学生登录功能
	public String stuLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取用户名
		String um = request.getParameter("userName");
		// 获取密码
		String up = request.getParameter("userPw");
		// 调用业务层登录功能，返回学生对象
		StuService stuService = new StuService();
		Student student = stuService.stuLogin(um, up);
		if (null != student) {
			// 如果返回的学生不为空，向session中放入学生信息，重定向到/site/index.jsp
			request.getSession().setAttribute("stu", student);
			response.sendRedirect("/StudySystem2.0/stu/stuIndex.jsp");
			return null;
		} else {
			// 如果返回的学生为空，向request域对象放入提示信息，转发到/site/index.jsp
			request.setAttribute("msg", "密码有误");
			return "/index.jsp";
		}
	}

	// stuLogout
	public String stuLogout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 获取session，使其失效
		request.getSession().invalidate();
		// 重新定向到首页
		response.sendRedirect("/StudySystem2.0/index.jsp");
		return null;
	}

	// findMyInfoUI
	public String findMyInfoUI(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "/stu/userinfo/userinfo.jsp";
	}

	// updateStudent
	public String updateStudent(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String num = request.getParameter("stuNum");
		String name = request.getParameter("stuRealname");
		String sex = request.getParameter("stuSex");
		String age = request.getParameter("stuAge");
		String loginPwd = request.getParameter("loginPw");
		String stuId = request.getParameter("stuId");
		Student student = new Student();
		student.setStuId(Integer.parseInt(stuId));
		student.setStuNum(num);
		student.setStuRealname(name);
		student.setStuSex(sex);
		student.setStuAge(age);
		student.setLoginPw(loginPwd);

		StuService stuService = new StuService();
		stuService.updateStudent(student);
		request.getSession().setAttribute("stu", student);
		return "/stu/userinfo/msg.jsp";
	}
}
