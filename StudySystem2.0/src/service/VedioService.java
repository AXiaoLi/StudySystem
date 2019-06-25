package service;

import java.sql.SQLException;
import java.util.List;

import dao.VedioDao;
import domain.Course;
import domain.Vedio;
import utils.PageModel;

public class VedioService {

	public PageModel findVediosWithPageByTeacher(int currentPageNum, Course course) throws SQLException {
		// 1_创建PageModel对象，计算分页参数
		VedioDao VedioDao = new VedioDao();
		int totalRecords = VedioDao.findTotalRecords(course);// select count(*)
																// from vedio
		PageModel pm = new PageModel(currentPageNum, totalRecords, 5);
		// 2_为PageModel对象设置集合(当前页中的视频信息)
		// select * from vedio limit ? , ?
		List<Vedio> list = VedioDao.findVediosWithPageByTeacher(pm.getStartIndex(), pm.getPageSize(), course);
		pm.setList(list);
		// 3_为PageModel对象设置url (PageFile.jsp页面所需)
		pm.setUrl("VedioServlet?method=findVediosWithPageByTeacher");
		return pm;
	}

	public void addVedio(Vedio vedio, Course course) throws SQLException {
		VedioDao VedioDao = new VedioDao();
		VedioDao.addVedio(vedio, course);
	}

	public void deleteVedioByTeacher(String vId) throws SQLException {
		// 调用DAO层，根据视频编号删除视频功能
		VedioDao VedioDao = new VedioDao();
		VedioDao.deleteVedioByTeacher(vId);
	}

	public Vedio findVedioByVid(String vId) throws SQLException {
		// 调用DAO层根据视频ID获取视频对象
		VedioDao VedioDao = new VedioDao();
		return VedioDao.findVedioByVid(vId);
	}

	public PageModel findVediosWithPageByStudent(int currentPageNum, Course course) throws SQLException {
		// 1_创建PageModel对象，计算分页参数
		VedioDao VedioDao = new VedioDao();
		int totalRecords = VedioDao.findTotalRecords(course);// select count(*)
																// from vedio
		PageModel pm = new PageModel(currentPageNum, totalRecords, 5);
		// 2_为PageModel对象设置集合(当前页中的视频信息)
		// select * from vedio limit ? , ?
		List<Vedio> list = VedioDao.findVediosWithPageByTeacher(pm.getStartIndex(), pm.getPageSize(), course);
		pm.setList(list);
		// 3_为PageModel对象设置url (PageFile.jsp页面所需)
		pm.setUrl("VedioServlet?method=findVediosWithPageByStudent");
		return pm;
	}

}
