package service;

import java.sql.SQLException;
import java.util.List;

import dao.DocDao;
import dao.PPTDao;
import dao.VedioDao;
import domain.Course;
import domain.Doc;
import domain.PPT;
import domain.Vedio;
import utils.PageModel;

public class PPTService {

	public PageModel findPPTsWithPageByTeacher(int currentPageNum, Course course) throws SQLException {
		// 1_创建PageModel对象，计算分页参数
		PPTDao pptDao = new PPTDao();
		int totalRecords = pptDao.findTotalRecords(course);// select
															// count(*)from doc
		PageModel pm = new PageModel(currentPageNum, totalRecords, 5);
		// 2_为PageModel对象设置集合(当前页中的课件信息)
		// select * from ppt limit ? , ?
		List<PPT> list = pptDao.findPPTsWithPageByTeacher(pm.getStartIndex(), pm.getPageSize(), course);
		pm.setList(list);
		// 3_为PageModel对象设置url (PageFile.jsp页面所需)
		pm.setUrl("PPTServlet?method=findPPTWithPageByTeacher");
		return pm;
	}

	public void addPPT(PPT ppt, Course course) throws SQLException {
		PPTDao pptDao = new PPTDao();
		pptDao.addPPT(ppt, course);
	}

	public void deletePPTByTeacher(String pId) throws SQLException {
		// 调用DAO层，根据PPT编号删除PPT功能
		PPTDao pptDao = new PPTDao();
		pptDao.deletePPTByTeacher(pId);
	}

	public PPT findPPTByVid(String pId) throws SQLException {
		// 调用DAO层根据PPT ID获取PPT对象
		PPTDao pptDao = new PPTDao();
		return pptDao.findPPTByVid(pId);
	}

	public PageModel findPPTsWithPageByStudent(int currentPageNum, Course course) throws SQLException {
		// 1_创建PageModel对象，计算分页参数
		PPTDao pptDao = new PPTDao();
		int totalRecords = pptDao.findTotalRecords(course);// select
															// count(*)from doc
		PageModel pm = new PageModel(currentPageNum, totalRecords, 5);
		// 2_为PageModel对象设置集合(当前页中的课件信息)
		// select * from ppt limit ? , ?
		List<PPT> list = pptDao.findPPTsWithPageByTeacher(pm.getStartIndex(), pm.getPageSize(), course);
		pm.setList(list);
		// 3_为PageModel对象设置url (PageFile.jsp页面所需)
		pm.setUrl("PPTServlet?method=findPPTsWithPageByStudent");
		return pm;
	}

}
