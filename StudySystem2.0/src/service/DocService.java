package service;

import java.sql.SQLException;
import java.util.List;

import dao.DocDao;
import dao.VedioDao;
import domain.Course;
import domain.Doc;
import domain.Vedio;
import utils.PageModel;

public class DocService {

	public PageModel findDocsWithPageByTeacher(int currentPageNum, Course course) throws SQLException {
		// 1_创建PageModel对象，计算分页参数
		DocDao docDao = new DocDao();
		int totalRecords = docDao.findTotalRecords(course);// select
															// count(*)from doc
		PageModel pm = new PageModel(currentPageNum, totalRecords, 5);
		// 2_为PageModel对象设置集合(当前页中的文档信息)
		// select * from doc limit ? , ?
		List<Doc> list = docDao.findDocsWithPageByTeacher(pm.getStartIndex(), pm.getPageSize(), course);
		pm.setList(list);
		// 3_为PageModel对象设置url (PageFile.jsp页面所需)
		pm.setUrl("DocServlet?method=findDocsWithPageByTeacher");
		return pm;
	}

	public void addDoc(Doc doc, Course course) throws SQLException {
		DocDao docDao = new DocDao();
		docDao.addDoc(doc, course);
	}

	public void deleteDocByTeacher(String dId) throws SQLException {
		// 调用DAO层，根据文档编号删除文档功能
		DocDao docDao = new DocDao();
		docDao.deleteDocByTeacher(dId);
	}

	public Doc findDocByVid(String dId) throws SQLException {
		// 调用DAO层根文档频ID获取文档对象
		DocDao docDao = new DocDao();
		return docDao.findDocByVid(dId);
	}

	public PageModel findDocsWithPageByStudent(int currentPageNum, Course course) throws SQLException {
		// 1_创建PageModel对象，计算分页参数
		DocDao docDao = new DocDao();
		int totalRecords = docDao.findTotalRecords(course);// select count(*)from doc
		PageModel pm = new PageModel(currentPageNum, totalRecords, 5);
		// 2_为PageModel对象设置集合(当前页中的文档信息)
		// select * from doc limit ? , ?
		List<Doc> list = docDao.findDocsWithPageByTeacher(pm.getStartIndex(), pm.getPageSize(), course);
		pm.setList(list);
		// 3_为PageModel对象设置url (PageFile.jsp页面所需)
		pm.setUrl("DocServlet?method=findDocsWithPageByStudent");
		return pm;
	}

}
